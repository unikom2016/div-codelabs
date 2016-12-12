using Basic1.Model;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Runtime.InteropServices.WindowsRuntime;
using Windows.Foundation;
using Windows.Foundation.Collections;
using Windows.UI.Xaml;
using Windows.UI.Xaml.Controls;
using Windows.UI.Xaml.Controls.Primitives;
using Windows.UI.Xaml.Data;
using Windows.UI.Xaml.Input;
using Windows.UI.Xaml.Media;
using Windows.UI.Xaml.Navigation;

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=234238

namespace Basic1.View
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MakananView : Page
    {
        List<Makanan> listmakanan = new List<Makanan>(); 
        public MakananView()
        {
            this.InitializeComponent();
            listmakanan.Add(new Makanan { nama = "Rendang", gambar = "/Assets/Rendang.jpg", deskripsi = "Makanan Khas Indonesia" });
            listmakanan.Add(new Makanan { nama = "Bakso", gambar = "/Assets/Bakso.jpg", deskripsi = "Makanan Khas Indonesia" });
            listmakanan.Add(new Makanan { nama = "Sate", gambar = "/Assets/Sate.jpg", deskripsi = "Makanan Khas Indonesia" });
            listmakanan.Add(new Makanan { nama = "Sayur Asem", gambar = "/Assets/Sayur Asem.jpg", deskripsi = "Makanan Khas Indonesia" });
            listmakanan.Add(new Makanan { nama = "Soto Betawi", gambar = "/Assets/Soto-betawi.jpg", deskripsi = "Makanan Khas Indonesia" });
            ListViewMakanan.ItemsSource = listmakanan;
        }
    }
}
