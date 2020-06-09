open System
open System.Drawing
open System.IO
open System.Windows.Forms

//создание формы
let Form1 =new Form(Text = "Индикатор" ,Width = 400, Height = 300)

//создание поля ввода 
let Edit1 = new TextBox(Width=100, Left=100, Height=25, Text=" ")


//привязываем значаеня к форме 
Form1.Controls.Add(Edit1)



// Запускаем форму
do Application.Run(Form1)
