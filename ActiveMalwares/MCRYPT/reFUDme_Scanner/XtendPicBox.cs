namespace reFUDme_Scanner
{
    using System;
    using System.ComponentModel;
    using System.Drawing;
    using System.Windows.Forms;

    public class XtendPicBox : Panel
    {
        // Fields
        private PictureBox innerPicture = new PictureBox();
        private bool mAutoScroll = true;
        private string mPictureFile = string.Empty;

        // Methods
        public XtendPicBox()
        {
            this.innerPicture.Top = 0;
            this.innerPicture.Left = 0;
            this.innerPicture.SizeMode = PictureBoxSizeMode.Normal;
            base.Controls.Add(this.innerPicture);
        }

        // Properties
        [Browsable(false)]
        public override bool AutoScroll
        {
            get
            {
                return this.mAutoScroll;
            }
            set
            {
                this.mAutoScroll = value;
            }
        }

        [Browsable(true), Description("Set path to image file."), Category("Image File")]
        public string PictureFile
        {
            get
            {
                return this.mPictureFile;
            }
            set
            {
                this.mPictureFile = value;
                if (!string.IsNullOrEmpty(this.mPictureFile))
                {
                    this.innerPicture.Image = Image.FromFile(this.mPictureFile);
                    this.innerPicture.Size = this.innerPicture.Image.Size;
                }
            }
        }
    }
}

