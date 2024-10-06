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
using System.Windows.Shapes;

namespace BRACU_NASA_PROJ
{
    /// <summary>
    /// Interaction logic for DataPopUP.xaml
    /// </summary>
    public partial class DataPopUP : Window
    {
        public DataPopUP()
        {
            InitializeComponent();
        }

        private void CloseButton_Click(object sender, RoutedEventArgs e)
        {
            this.Close();
        }

        private void TransBtn_Click(object sender, RoutedEventArgs e)
        {
            string banglaAIInsight = "বর্তমান জল স্তর সেচের জন্য আদর্শ, যা নিশ্চিত করে যে আপনার ফসল যথাযথ বৃদ্ধির জন্য প্রয়োজনীয় জলাবদ্ধতা পাচ্ছে। বৃষ্টিপাতের প্যাটার্নের উপর ভিত্তি করে, অতিরিক্ত সেচ এড়াতে মাটির আর্দ্রতা নিবিড়ভাবে পর্যবেক্ষণের সুপারিশ করা হচ্ছে। এছাড়াও, আসন্ন আবহাওয়ার পূর্বাভাস বিবেচনায় নিয়ে আপনার সেচের সময়সূচি সমন্বয় করলে জল দক্ষতা সর্বাধিক করতে এবং স্বাস্থ্যকর ফসলের উন্নয়ন সমর্থন করতে সাহায্য করবে।";

            aiText.Text = banglaAIInsight; 
        }
    }
}
