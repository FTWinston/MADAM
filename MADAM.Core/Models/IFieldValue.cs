using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace MADAM.Core.Models
{
    public interface IFieldValue
    {
        long ID { get; set; }
        long ThingID { get; set; }
        int FieldID { get; set; }
        int Number { get; set; }

        Field Field { get; set; }
        Thing Thing { get; set; }
    }
}
