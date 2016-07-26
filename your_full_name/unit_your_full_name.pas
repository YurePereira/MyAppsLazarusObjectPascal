unit unit_your_full_name;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmYourFullName }

  TFrmYourFullName = class(TForm)
    BtnShowFullName: TButton;
    BtnExit: TButton;
    TxtName: TEdit;
    TxtLastName: TEdit;
    LbName: TLabel;
    LbLastName: TLabel;
    procedure BtnExitClick(Sender: TObject);
    procedure BtnShowFullNameClick(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmYourFullName: TFrmYourFullName;

implementation

{$R *.lfm}

{ TFrmYourFullName }

procedure TFrmYourFullName.BtnShowFullNameClick(Sender: TObject);
var
   myName, myLastName: string;
begin
   myName := TxtName.Text;
   myLastName := TxtLastName.Text;
   ShowMessage('Your full name is: ' + myName + ' ' + myLastName);
end;

procedure TFrmYourFullName.BtnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

