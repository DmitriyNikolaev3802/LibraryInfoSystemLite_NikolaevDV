using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LibraryInfoSystemLite_NikolaevDV
{ 
    public partial class User
    {
        public override string ToString()
        {
            return Surname + " " + Name + " " + MiddleName;
        }
    }
}
