using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace TestTaskDeeplay
{
    public partial class StaffEntities
    {
        public static StaffEntities _context;
        public static StaffEntities GetContext()
        {
            if (_context == null)
                _context = new StaffEntities();
            return _context;
        }
    }
}
