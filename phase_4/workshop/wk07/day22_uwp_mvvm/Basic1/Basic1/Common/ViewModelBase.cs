﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Basic1.Common
{
    class ViewModelBase : INotifyPropertyChanged
    {
        public event PropertyChangedEventHandler PropertyChanged;

        protected void RaisePropertyChanged(string value)
        {
            PropertyChangedEventHandler handler = PropertyChanged;

            if(handler != null)
            {
                handler(this, new PropertyChangedEventArgs(value));
            }
        }

    }
}
