﻿using MADAM.Core.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Reflection;
using System.Text;
using System.Threading.Tasks;

namespace EntityGenerator
{
    class Generator
    {
        public static void Generate(string module, DirectoryInfo targetDir)
        {
            using (var db = new MADAM_Entities())
            {
                foreach (var type in db.ThingTypes.Where(t => t.Module == module))
                {
                    var className = DetermineObjectName(type.Name);
                    var fileContents = GenerateEntityClass(type, className, module);
                    SaveFile(targetDir, className + ".cs", fileContents);
                }
            }
        }

        private static string DetermineObjectName(string dbName, bool pluralize = false)
        {
            StringBuilder sb = new StringBuilder();

            bool justSkipped = false;
            foreach (char c in dbName)
                if (char.IsLetter(c) || (sb.Length > 0 && char.IsLetterOrDigit(c)))
                {
                    if (justSkipped)
                    {
                        sb.Append(char.ToUpper(c));
                        justSkipped = false;
                    }
                    else
                        sb.Append(c);
                }
                else
                    justSkipped = true;

            return pluralize ? Pluralize(sb.ToString()) : sb.ToString();
        }

        private static string Pluralize(string singular)
        {
            // this could be made much more complicated, I'm sure
            if (singular.EndsWith("y", StringComparison.InvariantCultureIgnoreCase))
                return singular + "ies";
            return singular + "s";
        }

        private static string GenerateEntityClass(ThingType type, string entityName, string moduleName)
        {
            string output = LoadEmbeddedResource("Entity.Template.cs");
            output = output.Replace("{ModuleName}", moduleName);
            output = output.Replace("{ClassName}", entityName);

            var fields = new StringBuilder();
            foreach (var field in type.Fields.OrderBy(f => f.SortOrder))
                GenerateField(fields, field);

            output = output.Replace("{Fields}", fields.ToString());
            return output;
        }

        private static void GenerateField(StringBuilder output, Field field)
        {
            string type = DetermineCodeTypeForDatabaseType(field.FieldType);

            output.AppendLine("        /// <summary>");
            output.AppendFormat("        /// A {0} field that saves to the {2} table with Field ID {1}", field.FieldType.Name, field.ID, field.FieldType.ValueTable);
            output.AppendLine();
            output.AppendLine("        /// </summary>");


            if (!field.MaxValues.HasValue || (field.MaxValues > 1 && field.MaxValues != field.MinValues))
                output.AppendFormat("        public List<{1}> {0} {{ get; set; }}", DetermineObjectName(field.Name, true), type);
            else if (field.MaxValues.Value <= 1)
                output.AppendFormat("        public {1}{2} {0} {{ get; set; }}", DetermineObjectName(field.Name), type, field.MinValues <= 0 && MustMakeNullable(type) ? "?" : string.Empty);
            else
                output.AppendFormat("        public {1}[] {0} {{ get; set; }}", DetermineObjectName(field.Name, true), type);

            output.AppendLine(); output.AppendLine();
        }

        private static bool MustMakeNullable(string type)
        {
            switch ( type)
            {
                case "bool":
                case "byte":
                case "char":
                case "decimal":
                case "double":
                case "float":
                case "int":
                case "long":
                case "sbyte":
                case "short":
                case "struct":
                case "uint":
                case "ulong":
                case "ushort":
                case "DateTime":
                    return true;
                default:
                    return false;
            }
        }

        private static string DetermineCodeTypeForDatabaseType(FieldType type)
        {
            // this isn't a good way of doing this. Don't want to have to extend this method every time we add a type!
            switch (type.ValueTable)
            {
                case "FieldValues_FK":
                    return "long";
                case "FieldValues_Int":
                    return "int";
                case "FieldValues_Date":
                    return "DateTime";
                case "FieldValues_Money":
                    return "decimal";
                case "FieldValues_StringShort":
                case "FieldValues_StringLong":
                    return "string";
                default:
                    throw new NotImplementedException("Can't generate fields that save to " + type.ValueTable);
            }
        }

        private static string LoadEmbeddedResource(string resourceName)
        {
            var assembly = Assembly.GetExecutingAssembly();

            using (Stream stream = assembly.GetManifestResourceStream("EntityGenerator.Templates." + resourceName))
            using (StreamReader reader = new StreamReader(stream))
            {
                return reader.ReadToEnd();
            }
        }

        private static void SaveFile(DirectoryInfo dir, string fileName, string fileContents)
        {
            FileInfo fi = new FileInfo(dir.FullName + "\\" + fileName);
            try
            {
                File.WriteAllText(fi.FullName, fileContents);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Unable to write to {0}:{1}{2}", fi.FullName, Environment.NewLine, ex);
            }
        }
    }
}
