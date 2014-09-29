using MADAM.Core.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestModule.Models.Entities
{
    // This file is auto-generated, DO NOT EDIT or your changes will be lost!
    public class TestType1 : EntityBase
    {
        /// <summary>
        /// A Short String field that saves to the FieldValues_StringShort table with Field ID 1
        /// </summary>
        public string FirstName { get; set; }

        /// <summary>
        /// A Short String field that saves to the FieldValues_StringShort table with Field ID 2
        /// </summary>
        public string LastName { get; set; }

        /// <summary>
        /// A Short String field that saves to the FieldValues_StringShort table with Field ID 3
        /// </summary>
        public List<string> Emails { get; set; }

        /// <summary>
        /// A Short String field that saves to the FieldValues_StringShort table with Field ID 4
        /// </summary>
        public List<string> Telephones { get; set; }

        /// <summary>
        /// A Date field that saves to the FieldValues_Date table with Field ID 5
        /// </summary>
        public DateTime? DateOfBirth { get; set; }

        /// <summary>
        /// A Integer field that saves to the FieldValues_Int table with Field ID 6
        /// </summary>
        public int Age { get; set; }


    }
}
