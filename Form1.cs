using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;
using System.Data.SqlClient;

namespace DiemThiCTK44B
{
    //created by Doan Quang huy
    public partial class Form1 : Form
    {
        SqlConnection connection;
        SqlCommand command;
        string str = @"Data Source=DESKTOP-QDTENRH\SQLEXPRESS;Initial Catalog=BangDiemCTK44B;Integrated Security=True"; // source
        SqlDataAdapter adapter = new SqlDataAdapter();
        DataTable table = new DataTable(); //create table

        void loadData()
        {
            command = connection.CreateCommand(); // execute command
            command.CommandText = "SELECT * FROM ThongTinSinhVien";
            adapter.SelectCommand = command;
            table.Clear();
            adapter.Fill(table);
            dgv.DataSource = table;
        }
        
        public Form1()
        {
            InitializeComponent();
        }

        private void Form1_Load(object sender, EventArgs e)
        {
            connection = new SqlConnection(str);
            connection.Open(); // open connection
            loadData();
        }

        private void dgv_CellContentClick(object sender, DataGridViewCellEventArgs e)
        {
            txt_MaNV.ReadOnly = true; // cannot be modified (MSSV)
            int i = dgv.CurrentRow.Index;
            txt_MaNV.Text = dgv.Rows[i].Cells[0].Value.ToString();
            txtHoTen.Text = dgv.Rows[i].Cells[1].Value.ToString();
            dtime_NgaySinh.Text = dgv.Rows[i].Cells[2].Value.ToString();
            cb_GioiTinh.Text = dgv.Rows[i].Cells[3].Value.ToString();
            txt_QueQuan.Text = dgv.Rows[i].Cells[4].Value.ToString();
            txtdiem.Text = dgv.Rows[i].Cells[5].Value.ToString();
        }

        private void txtdiem_TextChanged(object sender, EventArgs e)
        {

        }
        //add
        private void btn_them_Click(object sender, EventArgs e)
        {
            command = connection.CreateCommand();
            command.CommandText = "INSERT INTO ThongTinSinhVien VALUES('"+txt_MaNV.Text+ "', N'" + txtHoTen.Text + "', '" + dtime_NgaySinh.Text + "', N'" + cb_GioiTinh.Text + "', N'" + txt_QueQuan.Text + "', '" + txtdiem.Text + "')"; // insert query statement
            command.ExecuteNonQuery();
            loadData();
        }
        //remove
        private void btn_xoa_Click(object sender, EventArgs e)
        {
            command = connection.CreateCommand();
            command.CommandText = "DELETE FROM ThongTinSinhVien WHERE MSSV = '"+txt_MaNV.Text+"'"; //delete query statement
            command.ExecuteNonQuery();
            loadData();
        }
        // correct
        private void btn_sua_Click(object sender, EventArgs e)
        {
            command = connection.CreateCommand();
            command.CommandText = "UPDATE ThongTinSinhVien SET TenSV = N'" + txtHoTen.Text+"', NgaySinh = '"+dtime_NgaySinh.Text+"', GioiTinh = N'"+cb_GioiTinh.Text+"', QueQuan = N'"+txt_QueQuan.Text+"', Diem = "+txtdiem.Text+" WHERE MSSV = '"+txt_MaNV.Text+"'"; //update query statement
            command.ExecuteNonQuery();
            loadData();
        }
        //initialize
        private void btn_khoitao_Click(object sender, EventArgs e)
        {
            //this means all will have value = null
            txt_MaNV.ReadOnly = false;
            txt_MaNV.Text = "";
            txtHoTen.Text = "";
            dtime_NgaySinh.Text = "01/01/2000"; // set fixed date and time
            cb_GioiTinh.Text = "";
            txt_QueQuan.Text = "";
            txtdiem.Text = "";
        }

        private void btn_thoat_Click(object sender, EventArgs e)
        {
            DialogResult Result = MessageBox.Show("Bạn có chắc muốn thoát?", "Xác nhận", MessageBoxButtons.YesNo);

            if (Result == DialogResult.No)
            {
                return;
            }
            else if (Result == DialogResult.Yes)
            {
                Application.Exit(); //or this.Close();
                return;
            }
        }
    }
}
