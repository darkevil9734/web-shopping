namespace SeleniumTest
{
    partial class formTestChinh
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.btnTrangChu = new System.Windows.Forms.Button();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.btnClose = new System.Windows.Forms.Button();
            this.btnOpenTestLogin = new System.Windows.Forms.Button();
            this.btnTestRegister = new System.Windows.Forms.Button();
            this.btnTestGopY = new System.Windows.Forms.Button();
            this.btnOpenStaff = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnTrangChu
            // 
            this.btnTrangChu.Location = new System.Drawing.Point(26, 237);
            this.btnTrangChu.Name = "btnTrangChu";
            this.btnTrangChu.Size = new System.Drawing.Size(151, 51);
            this.btnTrangChu.TabIndex = 0;
            this.btnTrangChu.Text = "Test trang chủ";
            this.btnTrangChu.UseVisualStyleBackColor = true;
            this.btnTrangChu.Click += new System.EventHandler(this.button1_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackgroundImage = global::SeleniumTest.Properties.Resources.test;
            this.pictureBox1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.pictureBox1.Location = new System.Drawing.Point(0, 3);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(870, 214);
            this.pictureBox1.TabIndex = 1;
            this.pictureBox1.TabStop = false;
            // 
            // btnClose
            // 
            this.btnClose.Location = new System.Drawing.Point(256, 370);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(151, 51);
            this.btnClose.TabIndex = 2;
            this.btnClose.Text = "Đóng trình duyệt";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnOpenTestLogin
            // 
            this.btnOpenTestLogin.Location = new System.Drawing.Point(256, 237);
            this.btnOpenTestLogin.Name = "btnOpenTestLogin";
            this.btnOpenTestLogin.Size = new System.Drawing.Size(164, 56);
            this.btnOpenTestLogin.TabIndex = 3;
            this.btnOpenTestLogin.Text = "Test trang đăng nhập";
            this.btnOpenTestLogin.UseVisualStyleBackColor = true;
            this.btnOpenTestLogin.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnTestRegister
            // 
            this.btnTestRegister.Location = new System.Drawing.Point(484, 237);
            this.btnTestRegister.Name = "btnTestRegister";
            this.btnTestRegister.Size = new System.Drawing.Size(151, 51);
            this.btnTestRegister.TabIndex = 4;
            this.btnTestRegister.Text = "Test trang đăng ký";
            this.btnTestRegister.UseVisualStyleBackColor = true;
            this.btnTestRegister.Click += new System.EventHandler(this.btnNullCart_Click);
            // 
            // btnTestGopY
            // 
            this.btnTestGopY.Location = new System.Drawing.Point(695, 237);
            this.btnTestGopY.Name = "btnTestGopY";
            this.btnTestGopY.Size = new System.Drawing.Size(151, 51);
            this.btnTestGopY.TabIndex = 5;
            this.btnTestGopY.Text = "Test trang góp ý";
            this.btnTestGopY.UseVisualStyleBackColor = true;
            this.btnTestGopY.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // btnOpenStaff
            // 
            this.btnOpenStaff.Location = new System.Drawing.Point(26, 370);
            this.btnOpenStaff.Name = "btnOpenStaff";
            this.btnOpenStaff.Size = new System.Drawing.Size(151, 51);
            this.btnOpenStaff.TabIndex = 6;
            this.btnOpenStaff.Text = "Test trang nhân viên";
            this.btnOpenStaff.UseVisualStyleBackColor = true;
            this.btnOpenStaff.Click += new System.EventHandler(this.button2_Click_1);
            // 
            // formTestChinh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(873, 521);
            this.Controls.Add(this.btnOpenStaff);
            this.Controls.Add(this.btnTestGopY);
            this.Controls.Add(this.btnTestRegister);
            this.Controls.Add(this.btnOpenTestLogin);
            this.Controls.Add(this.btnClose);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.btnTrangChu);
            this.Name = "formTestChinh";
            this.Text = "Selenium Test";
            this.Load += new System.EventHandler(this.formTestChinh_Load);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button btnTrangChu;
        private System.Windows.Forms.PictureBox pictureBox1;
        private System.Windows.Forms.Button btnClose;
        private System.Windows.Forms.Button btnOpenTestLogin;
        private System.Windows.Forms.Button btnTestRegister;
        private System.Windows.Forms.Button btnTestGopY;
        private System.Windows.Forms.Button btnOpenStaff;
    }
}