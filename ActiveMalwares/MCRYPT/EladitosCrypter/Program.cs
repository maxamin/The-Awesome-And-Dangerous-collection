namespace EladitosCrypter
{
    using System;
    using System.Windows.Forms;

    internal static class Program
    {
        // Methods
        [STAThread]
        private static void Main()
        {
            Application.EnableVisualStyles();
            Application.SetCompatibleTextRenderingDefault(false);
            Application.Run(new Form1());
        }
    }
}

