using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Workshop_UIBasic.Model
{
    class MBuku // Business Logic
    {
        // URL: http://bukuapi.azurewebsites.net/api/buku
        public string kdBuku { get; set; }
        public string judulBuku { get; set; }
        public string pengarang { get; set; }
        public string penerbit { get; set; }
        public int tahun { get; set; }
        public int stok { get; set; }
        public int harga { get; set; }
    }
}
