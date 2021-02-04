using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OgrenciKayitWeb
{
    public partial class istatistikler : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox1.Enabled = false;
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
            TextBox5.Enabled = false;
            TextBox6.Enabled = false;
            TextBox7.Enabled = false;
            TextBox8.Enabled = false;
            TextBox9.Enabled = false;
            TextBox10.Enabled = false;

            DataSet1TableAdapters.DataTable1TableAdapter dt = new DataSet1TableAdapters.DataTable1TableAdapter();
            
            TextBox1.Text = "Toplam Öğrenci Sayısı: " +dt.istatistik1().ToString();

            TextBox2.Text = "Toplam Öğretmen Sayısı: " + dt.istatistik2().ToString();

            TextBox3.Text = "Toplam Ders Sayısı: " + dt.istatistik3().ToString();

            TextBox4.Text = "Bilgisayar Teknolojileri Vize'de En Başarlı Öğrenci: " + dt.istatistik4().ToString();

            TextBox5.Text = "Algoritma Vize'de En Başarlı Öğrenci: " + dt.istatistik5().ToString();

            TextBox6.Text = "Programlama Vize'de En Başarlı Öğrenci: " + dt.istatistik6().ToString();

            TextBox7.Text = "Web Tabanlı Programlama Vize'de En Başarlı Öğrenci: " + dt.istatistik7().ToString();

            TextBox8.Text = "Grafik Canlandırma Vize'de En Başarlı Öğrenci: " + dt.istatistik8().ToString();

            TextBox9.Text = "İşletim  Sistemleri Vize'de En Başarlı Öğrenci: " + dt.istatistik9().ToString();

            TextBox10.Text = "Ağ Paylaşımları Vize'de En Başarlı Öğrenci: " + dt.istatistik10().ToString();

            TextBox11.Text = "Proje Geliştirme Vize'de En Başarlı Öğrenci: " + dt.istatistik11().ToString();

            TextBox12.Text = "Programlama 2 Vize'de En Başarlı Öğrenci: " + dt.istatistik12().ToString();

            TextBox13.Text = "Web Madenciliği Vize'de En Başarlı Öğrenci: " + dt.istatistik13().ToString();

            TextBox14.Text = "Algoritma Dersi Vize Ortalaması: " + dt.istatistik14().ToString();

            TextBox15.Text = "Web Tabanlı Programlama Dersi Vize Ortalaması: " + dt.istatistik15().ToString();

            TextBox16.Text = "Algoritma Dersinden Kalan Öğrenci Sayısı: " + dt.istatistik16().ToString();

            TextBox17.Text = "Algoritma Dersinden Geçen Öğrenci Sayısı: " + dt.istatistik17().ToString();
        }
    }
}