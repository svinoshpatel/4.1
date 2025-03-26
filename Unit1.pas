unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    BitBtn1: TBitBtn;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;
  TField = class // TField - клас-предок
function GetData: String; Virtual; Abstract;
end;
TStringField = class(TField) // TStringField - клас-нащадок 1
 Data: String; // поле класу
 Function GetData: String; Override;
end;
TIntegerField = class(TField) // TIntegerField - клас-нащадок 2
 Data: Integer; // поле класу
 Function GetData: String; Override;
end;
TExtendedField = class(TField) // TExtendedField - клас-нащадок 3
 Data: Extended; // поле класу
  Function GetData: String; Override;
end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

 function TStringField.GetData;
 Begin
 GetData := Data;
 end;
 function TIntegerField.GetData;
 Begin
 GetData := IntToStr(Data);
 end;
 function TExtendedField.GetData;
 Begin
GetData := FloatToStrF(Data, ffFixed, 7, 2);
 end;



procedure TForm1.Button1Click(Sender: TObject);
 Var OS: TStringField;
 S: String;
 begin
 OS := TStringField.Create;
 OS.Data := 'Вітаю!';
 S := OS.GetData;
 Form1.Label1.Caption := S;
 end;



procedure TForm1.Button2Click(Sender: TObject);
Var OI: TIntegerField;
 I: Integer;
 S: String;
begin
 OI := TIntegerField.Create;
 I := 12345;
OI.Data := 12345;
 S := FloatToStr(I);
 Form1.Label1.Caption := S;
 end;
procedure TForm1.Button3Click(Sender: TObject);
Var OE: TExtendedField;
 E: Extended;
 S: String;
begin
 OE := TExtendedField.Create;
 E := 12.235;
OE.Data := 12.235;
 S := FloatToStr(E);
 Form1.Label1.Caption := S;
end;

 end.
