unit unit_first_connection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, IBConnection, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, StdCtrls, DBGrids, ComCtrls, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
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

