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

// The Blank Page item template is documented at http://go.microsoft.com/fwlink/?LinkId=402352&clcid=0x409

namespace Basic1
{
    /// <summary>
    /// An empty page that can be used on its own or navigated to within a Frame.
    /// </summary>
    public sealed partial class MainPage : Page
    {
        public MainPage()
        {
            this.InitializeComponent();
            mainFrame.Navigate(typeof(View.MakananView));
        }

        private void ListBox_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (home.IsSelected) {
                mainFrame.Navigate(typeof (View.MakananView));
                MainMenu.IsPaneOpen = false;
            }
            else if (login.IsSelected)
            {
                mainFrame.Navigate(typeof(View.LoginView));
                MainMenu.IsPaneOpen = false;
            }
            else if (book.IsSelected)
            {
                mainFrame.Navigate(typeof(View.VListBuku));
                MainMenu.IsPaneOpen = false;
            }
            else if (user.IsSelected)
            {
                mainFrame.Navigate(typeof(View.VUser));
                MainMenu.IsPaneOpen = false;
            }
        }

        private void HamburgerButton_Click(object sender, RoutedEventArgs e)
        {
            MainMenu.IsPaneOpen = !MainMenu.IsPaneOpen;
        }
    }
}
