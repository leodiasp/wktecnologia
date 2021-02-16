program WKTecnologia;

uses
  Forms,
  Unit1 in 'Unit1.pas' {frmPedidoVenda};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPedidoVenda, frmPedidoVenda);
  Application.Run;
end.
