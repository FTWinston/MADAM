using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MADAM.Core.Models
{
    public abstract class EntityBase
    {
        internal Thing Thing { get; private set; }
        public ThingType ThingType { get { return Thing.ThingType; } }
        public long ID { get { return Thing.ID; } }

        /*
        protected EntityBase(ThingType type)
        {
            ThingType = type;
        }

        protected EntityBase(Thing thing)
        {
            Thing = thing;
        }*/

        protected IList<IFieldValue> FieldValues;
        /*
        protected IList<FieldValues_Int> IntValues;
        */
        protected int GetIntValue(int fieldID)
        {
            var fieldVal = FieldValues.FirstOrDefault(v => v.FieldID == fieldID) as FieldValues_Int;
            if (fieldVal != null)
                return fieldVal.Value;

            /*
            var fieldVal = IntValues.FirstOrDefault(v => v.FieldID == fieldID);
            if (fieldVal != null)
                return fieldVal.Value;
            */
            return default(int);
        }
    }
}
