unit program_soma;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmSoma }

  TFrmSoma = class(TForm)
    BtnCalc: TButton;
    TxtNumberOne: TEdit;
    TxtNumberTwo: TEdit;
    TxtResult: TEdit;
    LbNumber1: TLabel;
    LbNumber2: TLabel;
    procedure BtnCalcClick(Sender: TObject);
    procedure LbNumber1Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmSoma: TFrmSoma;

implementation

{$R *.lfm}

{ TFrmSoma }

procedure TFrmSoma.LbNumber1Click(Sender: TObject);
begin

end;

procedure TFrmSoma.BtnCalcClick(Sender: TObject);
var
   n1, n2, r: Real;
begin
   n1 := StrToFloat(TxtNumberOne.Text);
   n2 := StrToFloat(TxtNumberTwo.Text);
   r := n1 + n2;
   TxtResult.Text := FloatToStr(r);
end;

end.

