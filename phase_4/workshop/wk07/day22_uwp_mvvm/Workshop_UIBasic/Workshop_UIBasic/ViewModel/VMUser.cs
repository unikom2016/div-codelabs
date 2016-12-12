using Newtonsoft.Json.Linq;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;
using Workshop_UIBasic.Common;
using Workshop_UIBasic.Model;

namespace Workshop_UIBasic.ViewModel
{
    class VMUser : ViewModelBase
    {
        MUser mUser = new MUser();

        public MUser _mUser
        {
            get { return mUser; }
            set { mUser = value; }
        }
        
        public string name {
            get
            {
                return name;
            }

            set
            {
                name = value;
                RaisePropertyChanged("");
            }
        }

        public string gender
        {
            get
            {
                return gender;
            }

            set
            {
                gender = value;
                RaisePropertyChanged("");
            }
        }

        public string email
        {
            get
            {
                return email;
            }

            set
            {
                email = value;
                RaisePropertyChanged("");
            }
        }

        public VMUser()
        {
            this.loadData();
        }

        private async void loadData()
        {
            HttpClient client = new HttpClient();

            try
            {
                string respondResult = await client.GetStringAsync(new Uri("https://randomuser.me/api/"));
                parseUser(respondResult);
            }
            catch
            {

            }
        }

        private void parseUser(string respondResult)
        {
            JObject jObject = JObject.Parse(respondResult);
            JArray jArray = JArray.Parse(jObject.SelectToken("results").ToString());

            foreach (JObject item in jArray)
            {
                // name = item.SelectToken("name").ToString();
                gender = item.SelectToken("gender").ToString();
                email = item.SelectToken("email").ToString();
                // name = item.SelectToken("name").ToString();
            }
        }
    }
}
