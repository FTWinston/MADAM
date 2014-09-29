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

    }
}
