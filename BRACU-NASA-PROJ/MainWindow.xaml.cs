using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace BRACU_NASA_PROJ
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();

            CollapseAllLine();
            Line2.Visibility = Visibility.Visible;

            NavFrame.Navigate(new welcome());
        }

        private void CloseWinBtn_Click(object sender, RoutedEventArgs e)
        {
            System.Windows.Application.Current.Shutdown();
        }

        private void MaxWinBtn_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Maximized;
        }

        private void MinWinBtn_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        private void ExploreBtn_Click(object sender, RoutedEventArgs e)
        {
            CollapseAllLine();
            Line1.Visibility = Visibility.Visible;

        }

        private void HomeBtn_Click(object sender, RoutedEventArgs e)
        {
            CollapseAllLine();
            Line2.Visibility = Visibility.Visible;

            NavFrame.Navigate(new welcome());

        }

        private void LibraryBtn_Click(object sender, RoutedEventArgs e)
        {
            CollapseAllLine();
            Line3.Visibility = Visibility.Visible;

        }


        private void LibraryBtn_MouseEnter(object sender, MouseEventArgs e)
        {
            Over3.Visibility = Visibility.Visible;
        }

        private void LibraryBtn_MouseLeave(object sender, MouseEventArgs e)
        {

            Over3.Visibility = Visibility.Hidden;
        }

        private void HomeBtn_MouseEnter(object sender, MouseEventArgs e)
        {

            Over2.Visibility = Visibility.Visible;
        }

        private void HomeBtn_MouseLeave(object sender, MouseEventArgs e)
        {

            Over2.Visibility = Visibility.Hidden;
        }

        private void ExploreBtn_MouseEnter(object sender, MouseEventArgs e)
        {

            Over1.Visibility = Visibility.Visible;
        }

        private void ExploreBtn_MouseLeave(object sender, MouseEventArgs e)
        {

            Over1.Visibility = Visibility.Hidden;
        }




        // helper Methods

        private void CollapseAllLine()
        {
            Line1.Visibility = Visibility.Collapsed;
            Line2.Visibility = Visibility.Collapsed;
            Line3.Visibility = Visibility.Collapsed;
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.ChangedButton == MouseButton.Left)
                this.DragMove();
        }
    }
}
