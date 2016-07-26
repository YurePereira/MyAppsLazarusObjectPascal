unit unit_calculating_speed;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TFrmCalculatingSpeed }

  TFrmCalculatingSpeed = class(TForm)
    BtnCalc: TButton;
    BtnClean: TButton;
    BtnExit: TButton;
    TxtKm: TEdit;
    TxtMinutes: TEdit;
    LbKm: TLabel;
    LbTime: TLabel;
    TxtaResult: TMemo;
    procedure BtnCalcClick(Sender: TObject);
    procedure BtnCleanClick(Sender: TObject);
    procedure BtnExitClick(Sender: TObject);
    procedure TxtaResultChange(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  FrmCalculatingSpeed: TFrmCalculatingSpeed;

implementation

{$R *.lfm}

{ TFrmCalculatingSpeed }

procedure TFrmCalculatingSpeed.TxtaResultChange(Sender: TObject);
begin

end;

procedure TFrmCalculatingSpeed.BtnCalcClick(Sender: TObject);
var
  km, minutes, result: Real;
begin
  km := StrToFloat(TxtKm.Text);
  minutes := StrToFloat(TxtMinutes.Text);
  result := (km / minutes) / 60;
  TxtaResult.Lines.Add(FloatToStr(result));
  FrmCalculatingSpeed.Caption := 'Calculating Speed: ' + FloatToStr(result);
end;

procedure TFrmCalculatingSpeed.BtnCleanClick(Sender: TObject);
begin
  TxtaResult.Clear;
  FrmCalculatingSpeed.Caption := 'Calculating Speed';
end;

procedure TFrmCalculatingSpeed.BtnExitClick(Sender: TObject);
begin
  Application.Terminate;
end;

end.

