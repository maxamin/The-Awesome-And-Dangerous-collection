namespace EladitosCrypter
{
    using System;
    using System.IO;
    using System.Runtime.CompilerServices;

    public class UploadFile
    {
        // Methods
        public UploadFile()
        {
            this.ContentType = "application/octet-stream";
        }

        // Properties
        public string ContentType { get; set; }

        public string Filename { get; set; }

        public string Name { get; set; }

        public System.IO.Stream Stream { get; set; }
    }
}

