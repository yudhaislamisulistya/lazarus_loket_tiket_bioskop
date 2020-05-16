unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    CBKursi: TComboBox;
    ETiket: TEdit;
    EJumlah: TEdit;
    EHarga: TEdit;
    EUang: TEdit;
    EKembalian: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioGroup1: TRadioGroup;
    Timer1: TTimer;
    Timer2: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Change(Sender: TObject);
    procedure RadioButton2Change(Sender: TObject);
    procedure RadioButton3Change(Sender: TObject);
    procedure RadioButton4Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;
  jumlah, harga, uang, kembalian: Integer;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin
  Timer1.Interval := 100;
  Timer2.Interval := 100;
  Timer1.Enabled := true;
  Timer2.Enabled := true;
end;

procedure TForm1.RadioButton1Change(Sender: TObject);
begin
  ETiket.Enabled:=False;
  EHarga.Enabled:=False;
  EKembalian.Enabled:=False;
  ETiket.Text:='Spongebob';
end;

procedure TForm1.Button1Click(Sender: TObject);
var harga_per_tiket, diskon, hitung_diskon : Double;
begin
  jumlah:=StrToInt(EJumlah.Text);
  Inc(jumlah);
  EJumlah.Text:=IntToStr(jumlah);

  begin
    if ETiket.Text = 'Spongebob' then
       begin
         if CBKursi.Text = 'Depan' then
            harga_per_tiket:=40000;
         if CBKursi.Text = 'Tengah' then
            harga_per_tiket:=35000;
         if CBKursi.Text = 'Belakang' then
            begin
              harga_per_tiket:=30000;
              diskon:=0;
            end;
       end
    else if ETiket.Text = 'Dora The Explorer' then
       begin
         if CBKursi.Text = 'Depan' then
            begin
              harga_per_tiket:=25000;
              diskon:=0.05;
            end;
         if CBKursi.Text = 'Tengah' then
            harga_per_tiket:=20000;
         if CBKursi.Text = 'Belakang' then
            harga_per_tiket:=22000;
       end
    else if ETiket.Text = 'Frozen IV' then
       begin
         if CBKursi.Text = 'Depan' then
            harga_per_tiket:=35000;
         if CBKursi.Text = 'Tengah' then
            harga_per_tiket:=30000;
         if CBKursi.Text = 'Belakang' then
            harga_per_tiket:=25000;
       end
    else if ETiket.Text = 'The Lion King' then
       begin
         if CBKursi.Text = 'Depan' then
            harga_per_tiket:=50000;
         if CBKursi.Text = 'Tengah' then
            harga_per_tiket:=47000;
         if CBKursi.Text = 'Belakang' then
            harga_per_tiket:=45000;
       end
  end;

  hitung_diskon:=(harga_per_tiket * StrToInt(EJumlah.Text)) * diskon;
  EHarga.Text:=FloatToStr((harga_per_tiket * StrToInt(EJumlah.Text)) - hitung_diskon);
  EKembalian.Text:=FloatToStr(StrToFloat(EUang.Text) - StrToFloat(EHarga.Text));
end;

procedure TForm1.Button2Click(Sender: TObject);
var harga_per_tiket, diskon, hitung_diskon : Double;
begin
  jumlah:=StrToInt(EJumlah.Text);

  begin
    if jumlah <= 0 then
     ShowMessage('Jumlah Tidak Boleh Kurang Dari Kosong')
    else
        begin
        Dec(jumlah);
        EJumlah.Text:=IntToStr(jumlah);
          if ETiket.Text = 'Spongebob' then
             begin
               if CBKursi.Text = 'Depan' then
                  harga_per_tiket:=40000;
               if CBKursi.Text = 'Tengah' then
                  harga_per_tiket:=35000;
               if CBKursi.Text = 'Belakang' then
                  begin
                    harga_per_tiket:=30000;
                    diskon:=0;
                  end;
             end
          else if ETiket.Text = 'Dora The Explorer' then
             begin
               if CBKursi.Text = 'Depan' then
                  begin
                    harga_per_tiket:=25000;
                    diskon:=0.05;
                  end;
               if CBKursi.Text = 'Tengah' then
                  harga_per_tiket:=20000;
               if CBKursi.Text = 'Belakang' then
                  harga_per_tiket:=22000;
             end
          else if ETiket.Text = 'Frozen IV' then
             begin
               if CBKursi.Text = 'Depan' then
                  harga_per_tiket:=35000;
               if CBKursi.Text = 'Tengah' then
                  harga_per_tiket:=30000;
               if CBKursi.Text = 'Belakang' then
                  harga_per_tiket:=25000;
             end
          else if ETiket.Text = 'The Lion King' then
             begin
               if CBKursi.Text = 'Depan' then
                  harga_per_tiket:=50000;
               if CBKursi.Text = 'Tengah' then
                  harga_per_tiket:=47000;
               if CBKursi.Text = 'Belakang' then
                  harga_per_tiket:=45000;
             end;
             hitung_diskon:=(harga_per_tiket * StrToInt(EJumlah.Text)) * diskon;
             EHarga.Text:=FloatToStr((harga_per_tiket * StrToInt(EJumlah.Text)) - hitung_diskon);
             EKembalian.Text:=FloatToStr(StrToFloat(EUang.Text) - StrToFloat(EHarga.Text));
        end;
  end;





end;



procedure TForm1.RadioButton2Change(Sender: TObject);
begin
  ETiket.Enabled:=False;
  EHarga.Enabled:=False;
  EKembalian.Enabled:=False;
  ETiket.Text:='Dora The Exproler';
end;

procedure TForm1.RadioButton3Change(Sender: TObject);
begin
  ETiket.Enabled:=False;
  EHarga.Enabled:=False;
  EKembalian.Enabled:=False;
  ETiket.Text:='Frozen IV';
end;

procedure TForm1.RadioButton4Change(Sender: TObject);
begin
  ETiket.Enabled:=False;
  EHarga.Enabled:=False;
  EKembalian.Enabled:=False;
  ETiket.Text:='The Lion King';
end;

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


end.

