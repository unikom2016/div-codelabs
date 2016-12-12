using Basic1.Common;
using Basic1.Model;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Basic1.ViewModel
{
    class VMListBuku : ViewModelBase
    {
        private ObservableCollection<MBuku> _collectionBuku = new ObservableCollection<MBuku>();
        public ObservableCollection<MBuku> collectionBuku
        {
            get
            {
                return _collectionBuku;
            }
            set
            {
                if(this._collectionBuku != value)
                {
                    _collectionBuku = value;
                    RaisePropertyChanged("");
                }
            }
        }

        public VMListBuku()
        {
            this.loadData();
        }

        private async void loadData()
        {
            HttpClient client = new HttpClient();

            try {
                string responResult = await client.GetStringAsync(new Uri("http://bukuapi.azurewebsites.net/api/buku"));
                parseListBuku(responResult);
            } catch {

            }
        }

        private void parseListBuku(string responResult)
        {
            JObject jObject = JObject.Parse(responResult);
            JArray jArray = JArray.Parse(jObject.SelectToken("result").ToString());

            foreach (JObject item in jArray)
            {
                MBuku m = new MBuku();
                m.kdBuku = item.SelectToken("kdBuku").ToString();
                m.judulBuku = item.SelectToken("judulBuku").ToString();
                m.pengarang = item.SelectToken("pengarang").ToString();
                m.penerbit = item.SelectToken("penerbit").ToString();
                m.tahun = int.Parse(item.SelectToken("tahun").ToString());
                m.stok = int.Parse(item.SelectToken("stok").ToString());
                m.harga = int.Parse(item.SelectToken("harga").ToString());

                _collectionBuku.Add(m);
            }

        }
    }
}
