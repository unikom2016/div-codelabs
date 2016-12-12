using Basic1.Common;
using Basic1.Model;
using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

namespace Basic1.ViewModel
{
    class VMuser : ViewModelBase
    {
        private MUser muser = new MUser();
        public MUser _muser{
            get { return muser; }
            set { muser = value; }
        }

        public string name
        {
            get { return _muser.name; }
            set
            {
                _muser.name = value;
                RaisePropertyChanged("");
            }
        }

        public string gender
        {
            get { return _muser.gender; }
            set
            {
                _muser.gender = value;
                RaisePropertyChanged("");
            }
        }

        public string email
        {
            get { return _muser.email; }
            set
            {
                _muser.email = value;
                RaisePropertyChanged("");
            }
        }

        public string picture
        {
            get { return _muser.picture; }
            set
            {
                _muser.picture = value;
                RaisePropertyChanged("");
            }
        }

        public VMuser()
        {
            loadData();
        }

        private async void loadData()
        {
            HttpClient client = new HttpClient();

            try
            {
                string responResult = await client.GetStringAsync(new Uri("https://randomuser.me/api"));
                parseUser(responResult);
            }
            catch
            {

            }
        }

        private void parseUser(string responResult)
        {
            JObject jObject = JObject.Parse(responResult);
            JArray jArray = JArray.Parse(jObject.SelectToken("results").ToString());
            System.Diagnostics.Debug.WriteLine(jArray);

            foreach (JObject item in jArray)
            {
                name = item.SelectToken("name")["first"].ToString() + " " + item.SelectToken("name")["last"].ToString();
                gender = item.SelectToken("gender").ToString();
                email = item.SelectToken("email").ToString();
                picture = item.SelectToken("picture")["large"].ToString();
            }
        }
    }
}
