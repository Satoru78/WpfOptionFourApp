using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace WpfOptionFourApp.Model
{
    public partial class Materials
    {
        public string GetPhoto
        {
            get
            {
                return Environment.CurrentDirectory + "\\" + Image;
            }
            set
            {
                Image = value;
            }
        }
    }
}
