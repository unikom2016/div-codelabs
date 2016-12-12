using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Workshop_UIBasic.Common;
using Workshop_UIBasic.Model;

namespace Workshop_UIBasic.ViewModel
{
    class VMListBuku : ViewModelBase
    {
        // CTRL+. -> Shorctut to auto-implement the package
        private ObservableCollection<MBuku> _collectionBuku = new ObservableCollection<MBuku>();
        public ObservableCollection<MBuku> collectionBuku
        {
            get {
                return _collectionBuku;
            }
            set {
                if (this._collectionBuku != value)
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

            /*try
            {*/
                string respondResult = await client.GetStringAsync(new Uri("http://bukuapi.azurewebsites.net/api/buku"));
                parseListBuku(respondResult);
            /*} catch
            {
                throw Exception;
            }*/
        }

        private void parseListBuku(string respondResult)
        {
            JObject jObject = JObject.Parse(respondResult.ToString());
            JArray jArray = JArray.Parse(jObject.SelectToken("result").ToString());

            foreach (JObject item in jArray)
            {
                MBuku mBuku = new MBuku(); // creates new object
                mBuku.kdBuku = item.SelectToken("kdBuku").ToString(); // same with json object, when using SelectToken
                mBuku.judulBuku = item.SelectToken("judulBuku").ToString();
                mBuku.penerbit = item.SelectToken("penerbit").ToString();
                mBuku.pengarang = item.SelectToken("pengarang").ToString();
                mBuku.tahun = int.Parse(item.SelectToken("tahun").ToString());
                mBuku.stok = int.Parse(item.SelectToken("stok").ToString());
                mBuku.harga = int.Parse(item.SelectToken("harga").ToString());

                _collectionBuku.Add(mBuku);
            }
        }
    }
}
