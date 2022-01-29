namespace EladitosCrypter
{
    using reFUDme_Scanner;
    using System;
    using System.Collections.Generic;
    using System.Collections.Specialized;
    using System.ComponentModel;
    using System.Drawing;
    using System.Globalization;
    using System.IO;
    using System.Net;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Windows.Forms;

    public class Scanner : Form
    {
        // Fields
        private IContainer components = null;
        private InstaButton instaButton1;
        private InstaButton instaButton2;
        private InstaButton instaButton3;
        private InstaTheme iscannther;
        private InstaLabel label2;
        public string loc = "";
        public static string Scanapi = "0a6fd6b56d9d39f4257f8316a2e4d07f";
        private static string Scanurl = "http://s2.razorscanner.com/public_api.php";
        public static string Scanusername = "killamuvz";
        private TextBox txtURL;
        private XtendPicBox xtendPicBox1;

        // Methods
        public Scanner()
        {
            this.InitializeComponent();
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && (this.components != null))
            {
                this.components.Dispose();
            }
            base.Dispose(disposing);
        }

        private void InitializeComponent()
        {
            this.iscannther = new InstaTheme();
            this.instaButton3 = new InstaButton();
            this.txtURL = new TextBox();
            this.instaButton1 = new InstaButton();
            this.instaButton2 = new InstaButton();
            this.label2 = new InstaLabel();
            this.xtendPicBox1 = new XtendPicBox();
            base.SuspendLayout();
            this.iscannther.Dock = DockStyle.Fill;
            this.iscannther.Font = new Font("Verdana", 7f);
            this.iscannther.ForeColor = Color.FromArgb(0x4c, 160, 190);
            this.iscannther.Location = new Point(0, 0);
            this.iscannther.Name = "iscannther";
            this.iscannther.ShowIcon = false;
            this.iscannther.Size = new Size(0x224, 0x1eb);
            this.iscannther.TabIndex = 0;
            this.iscannther.Text = "Scanner";
            this.instaButton3.Font = new Font("Verdana", 7f);
            this.instaButton3.ForeColor = Color.FromArgb(0xf9, 0xf9, 0xf9);
            this.instaButton3.Location = new Point(0x1f1, 0);
            this.instaButton3.Name = "instaButton3";
            this.instaButton3.Size = new Size(0x12, 0x10);
            this.instaButton3.TabIndex = 0x17;
            this.instaButton3.Text = "X";
            this.instaButton3.Click += new EventHandler(this.instaButton3_Click);
            this.txtURL.BackColor = Color.FromArgb(40, 40, 40);
            this.txtURL.BorderStyle = BorderStyle.FixedSingle;
            this.txtURL.ForeColor = Color.FromArgb(0xf9, 0xf9, 0xf9);
            this.txtURL.Location = new Point(30, 0x1b0);
            this.txtURL.Name = "txtURL";
            this.txtURL.Size = new Size(0x132, 20);
            this.txtURL.TabIndex = 0x2f;
            this.txtURL.TextChanged += new EventHandler(this.txtURL_TextChanged);
            this.instaButton1.Font = new Font("Verdana", 7f);
            this.instaButton1.ForeColor = Color.FromArgb(0xf9, 0xf9, 0xf9);
            this.instaButton1.Location = new Point(0x167, 0x1af);
            this.instaButton1.Name = "instaButton1";
            this.instaButton1.Size = new Size(0x4b, 0x17);
            this.instaButton1.TabIndex = 0x31;
            this.instaButton1.Text = "Load";
            this.instaButton1.Click += new EventHandler(this.instaButton1_Click);
            this.instaButton2.Font = new Font("Verdana", 7f);
            this.instaButton2.ForeColor = Color.FromArgb(0xf9, 0xf9, 0xf9);
            this.instaButton2.Location = new Point(440, 0x1af);
            this.instaButton2.Name = "instaButton2";
            this.instaButton2.Size = new Size(0x4b, 0x17);
            this.instaButton2.TabIndex = 50;
            this.instaButton2.Text = "Scan";
            this.instaButton2.Click += new EventHandler(this.instaButton2_Click);
            this.label2.BackColor = Color.FromArgb(50, 50, 50);
            this.label2.Font = new Font("Verdana", 7f);
            this.label2.ForeColor = Color.FromArgb(0x4c, 160, 190);
            this.label2.Location = new Point(0x167, 0x1ce);
            this.label2.Name = "label2";
            this.label2.Size = new Size(0x86, 0x13);
            this.label2.TabIndex = 0x33;
            this.label2.Text = "Please Load File";
            this.xtendPicBox1.AutoScroll = true;
            this.xtendPicBox1.BackColor = Color.FromArgb(50, 50, 50);
            this.xtendPicBox1.Location = new Point(30, 0x23);
            this.xtendPicBox1.Name = "xtendPicBox1";
            this.xtendPicBox1.PictureFile = "";
            this.xtendPicBox1.Size = new Size(0x1e5, 390);
            this.xtendPicBox1.TabIndex = 0x34;
            base.AutoScaleDimensions = new SizeF(6f, 13f);
//            base.AutoScaleMode = AutoScaleMode.Font;
            base.ClientSize = new Size(0x224, 0x1eb);
            base.Controls.Add(this.xtendPicBox1);
            base.Controls.Add(this.label2);
            base.Controls.Add(this.instaButton2);
            base.Controls.Add(this.instaButton1);
            base.Controls.Add(this.txtURL);
            base.Controls.Add(this.instaButton3);
            base.Controls.Add(this.iscannther);
//            base.FormBorderStyle = FormBorderStyle.None;
            base.Name = "Scanner";
            this.Text = "e";
            base.ResumeLayout(false);
            base.PerformLayout();
        }

        private void instaButton1_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = ".exe|*.exe",
                ShowHelp = true,
                Title = "Load File to Scan"
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                this.loc = dialog.FileName;
                this.label2.Text = "File Loaded.";
                this.label2.Refresh();
            }
        }

        private void instaButton2_Click(object sender, EventArgs e)
        {
            if (this.loc == string.Empty)
            {
                this.label2.Text = "No file loaded.";
                this.label2.Refresh();
            }
            else
            {
                this.label2.Text = "Scanning...";
                this.label2.Refresh();
                this.Scan(this.loc);
                this.label2.Text = "Finished.";
            }
        }

        private void instaButton3_Click(object sender, EventArgs e)
        {
            base.Close();
        }

        private void Scan(string file)
        {
            try
            {
                using (FileStream stream = System.IO.File.Open(file, FileMode.Open))
                {
                    NameValueCollection values = new NameValueCollection();
                    UploadFile file2 = new UploadFile {
                        ContentType = "application/x-msdownload",
                        Filename = Path.GetFileName(file),
                        Name = "uploadedfile",
                        Stream = stream
                    };
                    values.Add("upload_file", "upload_file");
                    Console.WriteLine("Scanning...");
                    byte[] bytes = UploadFiles("http://www.refud.me/scan.php", new UploadFile[] { file2 }, values);
                    string input = Encoding.UTF8.GetString(bytes);
                    string tempFileName = Path.GetTempFileName();
                    string str3 = new Regex("location = \"(.*?)\";").Match(input).Groups[1].Value;
                    byte[] buffer2 = new WebClient().DownloadData(str3.Replace(".php?id=", "/") + ".png");
                    System.IO.File.WriteAllBytes(tempFileName, buffer2);
                    this.xtendPicBox1.PictureFile = tempFileName;
                    this.txtURL.Text = str3;
                }
            }
            catch (Exception exception)
            {
                MessageBox.Show(exception.Message);
            }
        }

        private void txtURL_TextChanged(object sender, EventArgs e)
        {
        }

        public static byte[] UploadFiles(string address, IEnumerable<UploadFile> files, NameValueCollection values)
        {
            byte[] buffer3;
            WebRequest request = WebRequest.Create(address);
            request.Method = "POST";
            string str = "---------------------------" + DateTime.Now.Ticks.ToString("x", NumberFormatInfo.InvariantInfo);
            request.ContentType = "multipart/form-data; boundary=" + str;
            str = "--" + str;
            using (Stream stream = request.GetRequestStream())
            {
                byte[] buffer;
                foreach (string str2 in values.Keys)
                {
                    buffer = Encoding.ASCII.GetBytes(str + Environment.NewLine);
                    stream.Write(buffer, 0, buffer.Length);
                    buffer = Encoding.ASCII.GetBytes(string.Format("Content-Disposition: form-data; name=\"{0}\"{1}{1}", str2, Environment.NewLine));
                    stream.Write(buffer, 0, buffer.Length);
                    buffer = Encoding.UTF8.GetBytes(values[str2] + Environment.NewLine);
                    stream.Write(buffer, 0, buffer.Length);
                }
                foreach (UploadFile file in files)
                {
                    buffer = Encoding.ASCII.GetBytes(str + Environment.NewLine);
                    stream.Write(buffer, 0, buffer.Length);
                    buffer = Encoding.UTF8.GetBytes(string.Format("Content-Disposition: form-data; name=\"{0}\"; filename=\"{1}\"{2}", file.Name, file.Filename, Environment.NewLine));
                    stream.Write(buffer, 0, buffer.Length);
                    buffer = Encoding.ASCII.GetBytes(string.Format("Content-Type: {0}{1}{1}", file.ContentType, Environment.NewLine));
                    stream.Write(buffer, 0, buffer.Length);
                    file.Stream.CopyTo(stream);
                    buffer = Encoding.ASCII.GetBytes(Environment.NewLine);
                    stream.Write(buffer, 0, buffer.Length);
                }
                byte[] bytes = Encoding.ASCII.GetBytes(str + "--");
                stream.Write(bytes, 0, bytes.Length);
            }
            using (WebResponse response = request.GetResponse())
            {
                using (Stream stream2 = response.GetResponseStream())
                {
                    using (MemoryStream stream3 = new MemoryStream())
                    {
                        stream2.CopyTo(stream3);
                        buffer3 = stream3.ToArray();
                    }
                }
            }
            return buffer3;
        }
    }
}

