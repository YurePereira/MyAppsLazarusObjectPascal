unit unit_first_connection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, FileUtil, Forms, Controls, Graphics,
  Dialogs, StdCtrls, DBGrids;

type

  { TForm1 }

  TForm1 = class(TForm)
    BtnOpen: TButton;
    DBGrid1: TDBGrid;
    procedure BtnOpenClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IBConnection1AfterConnect(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.IBConnection1AfterConnect(Sender: TObject);
begin

end;

procedure TForm1.BtnOpenClick(Sender: TObject);
begin

end;

procedure TForm1.FormShow(Sender: TObject);
begin

end;

end.

