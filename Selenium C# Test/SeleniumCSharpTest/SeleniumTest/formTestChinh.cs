﻿using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace SeleniumTest
{
    public partial class formTestChinh : Form
    {
        public formTestChinh()
        {
            InitializeComponent();
        }

        private void formTestChinh_Load(object sender, EventArgs e)
        {
            testClass test = new testClass();
            test.setUp();
        }

        private void button1_Click(object sender, EventArgs e)
        {
            testClass testTrangChu = new testClass();
            testTrangChu.moTrangChu();
        }

        private void button2_Click(object sender, EventArgs e)
        {
            testClass dongWeb = new testClass();
            dongWeb.dongTrinhDuyet();
        }
    }
}