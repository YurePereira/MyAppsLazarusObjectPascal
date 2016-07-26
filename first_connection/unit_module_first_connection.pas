unit unit_module_first_connection;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, sqldb, db, IBConnection, FileUtil;

type

  { TmdCliente }

  TmdCliente = class(TDataModule)
    dsCliente: TDataSource;
    dbCliente: TIBConnection;
    queryClientes: TSQLQuery;
    trGeral: TSQLTransaction;
    procedure dsClienteDataChange(Sender: TObject; Field: TField);
    procedure queryClientesAfterPost(DataSet: TDataSet);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  mdCliente: TmdCliente;

implementation

{$R *.lfm}

{ TmdCliente }

procedure TmdCliente.dsClienteDataChange(Sender: TObject; Field: TField);
begin

end;

procedure TmdCliente.queryClientesAfterPost(DataSet: TDataSet);
begin
  queryClientes.ApplyUpdates;
  trGeral.CommitRetaining;
end;

end.

