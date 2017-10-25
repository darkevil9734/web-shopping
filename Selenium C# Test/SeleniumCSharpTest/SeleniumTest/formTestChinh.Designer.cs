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
            this.btnNullSearch = new System.Windows.Forms.Button();
            this.btnNullCart = new System.Windows.Forms.Button();
            this.button1 = new System.Windows.Forms.Button();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // btnTrangChu
            // 
            this.btnTrangChu.Location = new System.Drawing.Point(26, 237);
            this.btnTrangChu.Name = "btnTrangChu";
            this.btnTrangChu.Size = new System.Drawing.Size(151, 51);
            this.btnTrangChu.TabIndex = 0;
            this.btnTrangChu.Text = "Mở trang chủ";
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
            this.btnClose.Location = new System.Drawing.Point(26, 370);
            this.btnClose.Name = "btnClose";
            this.btnClose.Size = new System.Drawing.Size(151, 51);
            this.btnClose.TabIndex = 2;
            this.btnClose.Text = "Đóng trình duyệt";
            this.btnClose.UseVisualStyleBackColor = true;
            this.btnClose.Click += new System.EventHandler(this.button2_Click);
            // 
            // btnNullSearch
            // 
            this.btnNullSearch.Location = new System.Drawing.Point(256, 237);
            this.btnNullSearch.Name = "btnNullSearch";
            this.btnNullSearch.Size = new System.Drawing.Size(151, 51);
            this.btnNullSearch.TabIndex = 3;
            this.btnNullSearch.Text = "Test null search";
            this.btnNullSearch.UseVisualStyleBackColor = true;
            this.btnNullSearch.Click += new System.EventHandler(this.button3_Click);
            // 
            // btnNullCart
            // 
            this.btnNullCart.Location = new System.Drawing.Point(484, 237);
            this.btnNullCart.Name = "btnNullCart";
            this.btnNullCart.Size = new System.Drawing.Size(151, 51);
            this.btnNullCart.TabIndex = 4;
            this.btnNullCart.Text = "Test null giỏ hàng";
            this.btnNullCart.UseVisualStyleBackColor = true;
            this.btnNullCart.Click += new System.EventHandler(this.btnNullCart_Click);
            // 
            // button1
            // 
            this.button1.Location = new System.Drawing.Point(695, 237);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(151, 51);
            this.button1.TabIndex = 5;
            this.button1.Text = "Test null email submit";
            this.button1.UseVisualStyleBackColor = true;
            this.button1.Click += new System.EventHandler(this.button1_Click_1);
            // 
            // formTestChinh
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(8F, 16F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(873, 521);
            this.Controls.Add(this.button1);
            this.Controls.Add(this.btnNullCart);
            this.Controls.Add(this.btnNullSearch);
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
        private System.Windows.Forms.Button btnNullSearch;
        private System.Windows.Forms.Button btnNullCart;
        private System.Windows.Forms.Button button1;
    }
}