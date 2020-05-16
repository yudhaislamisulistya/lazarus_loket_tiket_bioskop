## Lazarus Loket Tiket Bioskop With Marquee Label

Masukkan Komponen Timer Pada Tab System Di Lazarus

Kode Dibawah Ini Merupakan Timer 

```pascal
procedure TForm1.Timer1Timer(Sender: TObject);
const
{$WRITEABLECONST ON}
  ScrollingText : string = 'LOKET TIKET BIOSKOP XX';
{$WRITEABLECONST OFF}
var
  ScrollPosition: Integer;
begin
  Form1.Caption := ScrollingText;
  for ScrollPosition := 1 to (Length(ScrollingText) - 1) do
    begin
      ScrollingText[ScrollPosition] := Form1.Caption[ScrollPosition + 1];
      ScrollingText[Length(ScrollingText)] := Form1.Caption[1];
     end;
end;
```

Prosedur Dibawah Ini Berfungsi Hampir Sama Seperti Constructor. Ketika Form Pertama Kali Dijalankan, Maka Akan Menjalankan Perintah Timer1
```pascal
procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Interval := 100;
  Timer1.Enabled := true;
end;   
```

![Hasil](https://image.prntscr.com/image/5mIe2GLpRKaDfLQDHP0lDA.png)

**Stay Home Yah 😀**
