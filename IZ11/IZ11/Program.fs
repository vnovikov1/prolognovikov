open System
open System.Drawing
open System.IO
open System.Windows.Forms

//создание формы
let Form1 = new Form(Text = "Индикатор" ,Width = 400, Height = 300)

//создание поля ввода 
let Edit1 = new TextBox(Width=150, Left=115, Height=25, Text="")

let ProgressBar1 = new ProgressBar(Dock = DockStyle.Bottom)

let Change _ = ProgressBar1.Value <- Edit1.TextLength

let _ = Edit1.TextChanged.Add(Change)

//привязываем значаеня к форме 
Form1.Controls.Add(Edit1)
Form1.Controls.Add(ProgressBar1)

// Запускаем форму
do Application.Run(Form1)
