using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Forms;
using System.Drawing;
using System.Drawing.Drawing2D;

//Theme created by DoggyCollin.
//http://www.hackforums.net/member.php?action=profile&uid=1278211

internal class InstaTheme : Control
{
    /// <summary>
    /// Gets or sets the visibility of the icon copied from the parent control.
    /// </summary>
    public bool ShowIcon { get { return _showIcon; } set { _showIcon = value; Invalidate(); } }
    private bool _showIcon;

    private Graphics G;

    private Pen borderColor;
    private SolidBrush textColor;
    private SolidBrush fillheaderColor;
    private SolidBrush fillbodyColor;

    private Icon icon;

    public InstaTheme()
    {
        SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.UserPaint | ControlStyles.ResizeRedraw, true);
        borderColor = new Pen(Color.FromArgb(49, 49, 49));
        textColor = new SolidBrush(Color.FromArgb(249, 249, 249));
        fillheaderColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        fillbodyColor = new SolidBrush(Color.FromArgb(212, 212, 212));

        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
    }

    protected override void OnHandleCreated(EventArgs e)
    {
        Dock = DockStyle.Fill;
        if (Parent is Form)
        {
            Form tempWith1 = (Form)Parent;
            tempWith1.FormBorderStyle = 0;
            tempWith1.BackColor = fillheaderColor.Color;
            icon = tempWith1.Icon;
        }
        base.OnHandleCreated(e);
    }
    protected override void OnMouseDown(System.Windows.Forms.MouseEventArgs e)
    {
        if (new Rectangle(Parent.Location.X, Parent.Location.Y, Width, 22).IntersectsWith(new Rectangle(MousePosition.X, MousePosition.Y, 1, 1)))
        {
            Capture = false;
            Message M = Message.Create(Parent.Handle, 161, new IntPtr(2), IntPtr.Zero);
            DefWndProc(ref M);
        }
        base.OnMouseDown(e);
    }

    protected override void OnPaintBackground(PaintEventArgs pevent)
    {

    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;
        G.Clear(BackColor);

        G.DrawRectangle(borderColor, new Rectangle(0, 0, Width, 23));
        G.FillRectangle(fillheaderColor, new Rectangle(1, 1, Width, 23));

        if (ShowIcon)
        {
            G.DrawIcon(icon, new Rectangle(5, 6, 12, 12));
            G.DrawString(Text, Font, new SolidBrush(ForeColor), new Point(22, 6));
        }
        else
        {
            G.DrawString(Text, Font, new SolidBrush(ForeColor), new Point(5, 6));
        }

        G.DrawLine(new Pen(Color.FromArgb(249, 249, 249)), 4, 24, Width - 5, 24);

        G.FillRectangle(fillbodyColor, new Rectangle(4, 25, Width - 8, Height - 29));

    }
}

internal class InstaButton : Control
{
    private Graphics G;
    private bool isMouseDown;

    private Pen borderColor;
    private SolidBrush textColor;
    private SolidBrush fillColor;
    private SolidBrush downColor;

    private StringFormat stringformat;

    public InstaButton()
    {
        borderColor = new Pen(Color.FromArgb(49, 49, 49));
        textColor = new SolidBrush(Color.FromArgb(249, 249, 249));
        fillColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        downColor = new SolidBrush(Color.FromArgb(78, 123, 160));

        stringformat = new StringFormat { Alignment = StringAlignment.Center, LineAlignment = StringAlignment.Center };

        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
    }

    protected override void OnMouseDown(MouseEventArgs e)
    {
        isMouseDown = true;
        Invalidate();
    }

    protected override void OnMouseUp(MouseEventArgs e)
    {
        isMouseDown = false;
        Invalidate();
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;
        G.Clear(BackColor);

        SolidBrush currentBrush;

        if (isMouseDown)
            currentBrush = downColor;
        else
            currentBrush = fillColor;

        G.DrawRectangle(borderColor, new Rectangle(0, 0, Width, Height));
        G.FillRectangle(currentBrush, new Rectangle(0, 0, Width, Height));
        G.DrawString(Text, Font, new SolidBrush(ForeColor), new Point(Width / 2, Height / 2), stringformat);
    }
}

internal class InstaTabControl : TabControl
{
    private Pen borderColor;
    private SolidBrush textColor;
    private SolidBrush fillColor;
    private SolidBrush downColor;
    private SolidBrush fillbodyColor;

    public InstaTabControl()
    {
        SetStyle(ControlStyles.AllPaintingInWmPaint | ControlStyles.ResizeRedraw | ControlStyles.UserPaint | ControlStyles.DoubleBuffer, true);
        DoubleBuffered = true;
        SizeMode = TabSizeMode.Fixed;
        Alignment = TabAlignment.Left;
        ItemSize = new Size(30, 152);

        borderColor = new Pen(Color.FromArgb(49, 49, 49));
        textColor = new SolidBrush(Color.FromArgb(249, 249, 249));
        fillColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        downColor = new SolidBrush(Color.FromArgb(78, 123, 160));
        fillbodyColor = new SolidBrush(Color.FromArgb(212, 212, 212));

        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        Bitmap B = new Bitmap(Width, Height);
        Graphics G = Graphics.FromImage(B);
        G.Clear(fillbodyColor.Color);

        

        for (int i = 0; i <= TabCount - 1; i++)
        {
            Rectangle x2 = new Rectangle(new Point(GetTabRect(i).Location.X - 2, GetTabRect(i).Location.Y - 2), new Size(GetTabRect(i).Width + 3, GetTabRect(i).Height - 1));

            if (i == SelectedIndex)
            {
                G.FillRectangle(downColor, new Rectangle(new Point(x2.Location.X, x2.Location.Y), new Size(GetTabRect(i).Size.Width, GetTabRect(i).Size.Height)));
            }
            else
            {
                G.FillRectangle(fillColor, new Rectangle(new Point(x2.Location.X, x2.Location.Y), new Size(GetTabRect(i).Size.Width, GetTabRect(i).Size.Height)));
            }

            G.DrawString(TabPages[i].Text, Font, new SolidBrush(ForeColor), new Rectangle(x2.Location.X + 6, x2.Location.Y, x2.Width - 20, x2.Height), new StringFormat
            {
                LineAlignment = StringAlignment.Center,
                Alignment = StringAlignment.Near
            });
        }


        e.Graphics.DrawImage((Image)B.Clone(), 0, 4);

        G.Dispose();
        B.Dispose();
    }

    public override Color BackColor
    {
        get
        {
            return fillbodyColor.Color;
        }
        set
        {
            base.BackColor = value;
        }
    }

    protected override void OnControlAdded(ControlEventArgs e)
    {
        e.Control.BackColor = fillbodyColor.Color;
        e.Control.Invalidate();
    }

}

internal class InstaProgressBar : Control
{
    /// <summary>
    /// Value in percentage.
    /// </summary>
    public float Value { get { return _value; } set { _value = value; Invalidate(); } }
    private float _value;

    /// <summary>
    /// Sets or gets the visibility setting for the percentage value.
    /// </summary>
    public bool ShowPercentage { get; set; }

    private Graphics G;

    private Pen borderColor;
    private SolidBrush textColor;
    private SolidBrush fillColor;
    private SolidBrush downColor;

    private StringFormat stringformat;

    public InstaProgressBar()
    {
        this.SetStyle(ControlStyles.OptimizedDoubleBuffer, true);

        borderColor = new Pen(Color.FromArgb(49, 49, 49));
        textColor = new SolidBrush(Color.FromArgb(249, 249, 249));
        fillColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        downColor = new SolidBrush(Color.FromArgb(78, 123, 160));

        stringformat = new StringFormat { Alignment = StringAlignment.Center, LineAlignment = StringAlignment.Center };
        ShowPercentage = true;

        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;

        float percent = ((float)Width / 100) * Value;

        G.DrawRectangle(borderColor, new Rectangle(0, 0, Width, Height));
        G.FillRectangle(fillColor, new Rectangle(0, 0, Width, Height));
        G.FillRectangle(downColor, new Rectangle(2, 2, (int)percent - 4, Height - 4));

        if (ShowPercentage)
            G.DrawString(string.Format("{0}%", Value), Font, new SolidBrush(ForeColor), new Point((Width + 2) / 2, (Height + 2) / 2), stringformat);
    }
}

internal class InstaCheckBox : Control
{
    public bool Checked { get; set; }
    public CheckStyleType CheckStyle { get; set; }

    private Graphics G;

    private Pen borderColor;
    private SolidBrush textColor;
    private SolidBrush fillColor;
    private SolidBrush downColor;

    private StringFormat stringformat;

    public InstaCheckBox()
    {
        borderColor = new Pen(Color.FromArgb(49, 49, 49));
        textColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        fillColor = new SolidBrush(Color.FromArgb(49, 49, 49));
        downColor = new SolidBrush(Color.FromArgb(78, 123, 160));

        stringformat = new StringFormat { Alignment = StringAlignment.Center, LineAlignment = StringAlignment.Center };


        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
        Checked = true;
        CheckStyle = CheckStyleType.Square;
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;

        switch (CheckStyle)
        {
            case CheckStyleType.Square:
                G.DrawRectangle(borderColor, new Rectangle(0, 0, 12, 12));
                G.DrawString(Text, Font, new SolidBrush(ForeColor), 14, 0);

                if (Checked)
                    G.FillRectangle(downColor, new Rectangle(2, 2, 9, 9));
                break;
            case CheckStyleType.Round:
                G.DrawEllipse(borderColor, new Rectangle(0, 0, 13, 13));
                G.DrawString(Text, Font, new SolidBrush(ForeColor), 14, 0);

                if (Checked)
                    G.FillEllipse(downColor, new Rectangle(2, 2, 9, 9));
                break;
            case CheckStyleType.Checkmark:
                G.DrawRectangle(borderColor, new Rectangle(0, 0, 12, 12));
                G.DrawString(Text, Font, new SolidBrush(ForeColor), 14, 0);

                if (Checked)
                {
                    G.DrawLine(new Pen(downColor.Color, 2), 3, 5, 7, 9);
                    G.DrawLine(new Pen(downColor.Color, 2), 6, 9, 9, 3);
                }
                break;
            default:
                break;
        }
    }

    protected override void OnMouseClick(MouseEventArgs e)
    {
        Checked = !Checked;
        Invalidate();
    }

    public enum CheckStyleType
    {
        Square = 0,
        Round = 1,
        Checkmark = 2
    }
}

internal class InstaSeperator : Control
{
    public float Thickness { get; set; }
    public bool IsVertical { get; set; }

    Graphics G;

    public InstaSeperator()
    {
        Thickness = 1;
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;

        if (IsVertical)
            G.DrawLine(new Pen(Color.FromArgb(78, 123, 160), Thickness), 0, 0, 0, Height);
        else
            G.DrawLine(new Pen(Color.FromArgb(78, 123, 160), Thickness), 0, 0, Width, 0);

    }
}

internal class InstaLabel : Control
{
    private Graphics G;

    private SolidBrush textColor;

    public InstaLabel()
    {
        textColor = new SolidBrush(Color.FromArgb(49, 49, 49));

        //Set defaults
        Font = new Font("Verdana", 7.0F);
        ForeColor = textColor.Color;
    }

    protected override void OnPaint(PaintEventArgs e)
    {
        G = e.Graphics;

        G.DrawString(Text, Font, new SolidBrush(ForeColor), 0, 0);
    }
}

public class InstaListView : ListView
{
    public InstaListView()
    {
        this.DoubleBuffered = true;
        this.OwnerDraw = true;
        this.MultiSelect = false;
        this.FullRowSelect = true;
    }

    private Brush white = new SolidBrush(Color.White);
    private Brush black = new SolidBrush(Color.Black);
    private Pen bluePen = new Pen(Color.FromArgb(78, 123, 160));
    private Pen grayPen = new Pen(Color.FromArgb(49, 49, 49));

    protected override void OnDrawColumnHeader(DrawListViewColumnHeaderEventArgs e)
    {
        var textSize = TextRenderer.MeasureText(e.Header.Text, this.Font);
        if (e.Header.Width < (int)textSize.Width)
        {
            e.Header.Width = (e.Header.Width + textSize.Width);
            this.Refresh();
        }

        e.Graphics.FillRectangle(new SolidBrush(grayPen.Color), e.Bounds.X, e.Bounds.Y, e.Header.Width, e.Bounds.Height - 3);
        e.Graphics.DrawLine(new Pen(white), e.Bounds.X, e.Bounds.Y, e.Bounds.X, e.Bounds.Height - 4);
        using (Font font = new Font(this.Font.FontFamily, this.Font.Size, FontStyle.Bold))
        {
            e.Graphics.DrawString(e.Header.Text, font, white, e.Bounds.X + ((e.Header.Width / 2) - (textSize.Width / 2)), (e.Bounds.Y / 2));
        }

        if (e.ColumnIndex == (this.Columns.Count - 1))
        {
            int newlength = this.Width - (e.Bounds.X + e.Bounds.Width);
            e.Graphics.FillRectangle(new SolidBrush(grayPen.Color), (this.Width - newlength), e.Bounds.Y, newlength, e.Bounds.Height - 3);
        }
    }

    protected override void OnDrawItem(DrawListViewItemEventArgs e)
    {
        if (e.Item.Selected)
        {
            Rectangle rowBounds = e.Bounds;
            int leftMargin = e.Item.GetBounds(ItemBoundsPortion.Label).Left;
            Rectangle bounds = new Rectangle(rowBounds.Left, rowBounds.Top, rowBounds.Width, rowBounds.Height);
            e.Graphics.FillRectangle(new SolidBrush(Color.FromArgb(200, bluePen.Color)), bounds.X, bounds.Y, bounds.Width, bounds.Height);
        }
        else
        {
            e.DrawDefault = true;
        }
    }

    protected override void OnDrawSubItem(DrawListViewSubItemEventArgs e)
    {
        if (e.Item.Selected)
        {
            Rectangle rowBounds = e.SubItem.Bounds;
            Rectangle labelBounds = e.Item.GetBounds(ItemBoundsPortion.Label);
            int leftMargin = labelBounds.Left - 1;
            Rectangle bounds = new Rectangle(rowBounds.Left + leftMargin, rowBounds.Top, e.ColumnIndex == 0 ? labelBounds.Width : (rowBounds.Width - leftMargin - 1), rowBounds.Height);
            TextFormatFlags align = TextFormatFlags.Default;
            switch (this.Columns[e.ColumnIndex].TextAlign)
            {
                case HorizontalAlignment.Right:
                    align = TextFormatFlags.Right;
                    break;
                case HorizontalAlignment.Center:
                    align = TextFormatFlags.HorizontalCenter;
                    break;
                default:
                    align = TextFormatFlags.Left;
                    break;
            }

            TextRenderer.DrawText(e.Graphics, e.SubItem.Text, this.Font, bounds, this.ForeColor,
            align | TextFormatFlags.SingleLine | TextFormatFlags.GlyphOverhangPadding | TextFormatFlags.VerticalCenter | TextFormatFlags.WordEllipsis);
        }
    }

    protected override void OnFontChanged(EventArgs e)
    {
        base.OnFontChanged(e);
    }

    [System.Runtime.InteropServices.DllImport("user32.dll", CharSet = System.Runtime.InteropServices.CharSet.Auto)]
    static extern IntPtr SendMessage(IntPtr hWnd, int Msg, int wParam, int lParam);

    protected override void OnSelectedIndexChanged(EventArgs e)
    {
        base.OnSelectedIndexChanged(e);
        SendMessage(Handle, 0x127, 0x10001, 0);
    }
    protected override void OnEnter(EventArgs e)
    {
        base.OnEnter(e);
        SendMessage(Handle, 0x127, 0x10001, 0);
    }
    protected override void OnPreviewKeyDown(PreviewKeyDownEventArgs e)
    {
        base.OnPreviewKeyDown(e);
        SendMessage(Handle, 0x127, 0x10001, 0);
    }
}