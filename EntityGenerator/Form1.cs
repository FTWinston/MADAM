using System;
using System.IO;
using System.Windows.Forms;

namespace EntityGenerator
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        private void btnGenerate_Click(object sender, EventArgs e)
        {
            var targetDir = new DirectoryInfo(new DirectoryInfo(Directory.GetCurrentDirectory()).Parent.Parent.Parent.FullName + "\\TestModule\\Models\\Entities");
            if (!targetDir.Exists)
            {
                MessageBox.Show(targetDir.FullName, "Dir not found");
                return;
            }

            Generator.Generate("TestModule", targetDir);
        }
    }
}
