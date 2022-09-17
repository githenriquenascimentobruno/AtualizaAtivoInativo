unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Data.DBXFirebird;

type
  TfrmPrincipal = class(TForm)
    edtCodigo: TEdit;
    edtDescricao: TEdit;
    edtAtivo: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    btnIncluir: TButton;
    conexaoBd: TSQLConnection;
    sdsAtualiza: TSQLDataSet;
    dspAtualiza: TDataSetProvider;
    cdsAtualiza: TClientDataSet;
    btnGravar: TButton;
    queryAtualiza: TSQLQuery;
    cdsAtualizaNovoStatus: TClientDataSet;
    dsAtualizaNovoStatus: TDataSource;
    cdsAtualizaNovoStatuscodigo: TIntegerField;
    cdsAtualizaNovoStatusdescricao: TStringField;
    cdsAtualizaNovoStatusstatus: TStringField;
    dsAtualiza: TDataSource;
    edtBarras: TEdit;
    edtDescricaoBarras: TEdit;
    edtAtivoBarras: TEdit;
    procedure edtCodigoExit(Sender: TObject);
    procedure edtCodigoKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtivoKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirKeyPress(Sender: TObject; var Key: Char);
    procedure btnIncluirClick(Sender: TObject);
    procedure btnIncluirExit(Sender: TObject);
    procedure edtBarrasExit(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnGravarKeyPress(Sender: TObject; var Key: Char);
    procedure edtBarrasClick(Sender: TObject);
    procedure edtCodigoClick(Sender: TObject);
    procedure edtBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure edtDescricaoBarrasKeyPress(Sender: TObject; var Key: Char);
    procedure edtAtivoBarrasKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.btnGravarClick(Sender: TObject);
begin
  cdsAtualiza.Locate('P_BARRAS1', edtBarras.Text, [loCaseInsensitive, loPartialKey]);
  begin
  cdsAtualiza.Edit;
  cdsAtualiza.FieldByName('P_ATIVO').AsString := 'S';
  cdsAtualiza.Post;
  cdsAtualiza.ApplyUpdates(1);
  end;
end;

procedure TfrmPrincipal.btnGravarKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    edtBarras.SetFocus;
  end;
end;

procedure TfrmPrincipal.btnIncluirClick(Sender: TObject);
begin
  cdsAtualiza.Locate('P_ID', edtCodigo.Text, [loCaseInsensitive, loPartialKey]);
  begin
  cdsAtualiza.Edit;
  cdsAtualiza.FieldByName('P_ATIVO').AsString := 'S';
  cdsAtualiza.Post;
  cdsAtualiza.ApplyUpdates(1);
  end;
end;

procedure TfrmPrincipal.btnIncluirExit(Sender: TObject);
begin
  edtCodigo.SetFocus;
  edtCodigo.SelectAll;
end;

procedure TfrmPrincipal.btnIncluirKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
  begin
    edtCodigo.SetFocus;
  end;
end;

procedure TfrmPrincipal.edtAtivoBarrasKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     btnGravar.SetFocus;
end;

procedure TfrmPrincipal.edtAtivoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
     begin
       btnIncluir.SetFocus;
     end;
end;

procedure TfrmPrincipal.edtBarrasClick(Sender: TObject);
begin
edtBarras.SelectAll;
end;

procedure TfrmPrincipal.edtBarrasExit(Sender: TObject);
begin
    //PESQUISA Cidades
    if edtBarras.Text<>'' then
        begin
            queryAtualiza.Close;
            queryAtualiza.SQL.Clear;
          if length(trim(edtCodigo.Text))<=9 Then
            queryAtualiza.SQL.Add('SELECT * FROM PRODUTOS WHERE P_BARRAS1=:P_BARRAS1');
            queryAtualiza.Params.ParamByName('P_BARRAS1').Value:=edtBarras.Text;
            queryAtualiza.Open;

    if not queryAtualiza.IsEmpty then
        begin
            edtDescricaoBarras.Text:=queryAtualiza.FieldByName('P_PRODUTO').AsString;
        end
          else
            begin
                MessageDlg('Cidade N�o Localizada.Verifique!!!',mtInformation,[mbOk],0);
                edtBarras.SetFocus;
            end;
        end;
end;

procedure TfrmPrincipal.edtBarrasKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     Perform(WM_nextdlgctl,0,0);
end;

procedure TfrmPrincipal.edtCodigoClick(Sender: TObject);
begin
edtCodigo.SelectAll;
end;

procedure TfrmPrincipal.edtCodigoExit(Sender: TObject);
begin
    //PESQUISA Cidades
    if edtCodigo.Text<>'' then
        begin
            queryAtualiza.Close;
            queryAtualiza.SQL.Clear;
          if length(trim(edtCodigo.Text))<=9 Then
            queryAtualiza.SQL.Add('SELECT * FROM PRODUTOS WHERE P_ID=:P_ID');
            queryAtualiza.Params.ParamByName('P_ID').Value:=edtCodigo.Text;
            queryAtualiza.Open;

    if not queryAtualiza.IsEmpty then
        begin
            edtDescricao.Text:=queryAtualiza.FieldByName('P_PRODUTO').AsString;
        end
          else
            begin
                MessageDlg('Cidade N�o Localizada.Verifique!!!',mtInformation,[mbOk],0);
                edtCodigo.SetFocus;
            end;
        end;
end;

procedure TfrmPrincipal.edtCodigoKeyPress(Sender: TObject; var Key: Char);
 begin
 if key=#13 then
     Perform(WM_nextdlgctl,0,0);

  end;

procedure TfrmPrincipal.edtDescricaoBarrasKeyPress(Sender: TObject;
  var Key: Char);
begin
 if key=#13 then
     Perform(WM_nextdlgctl,0,0);
end;

procedure TfrmPrincipal.edtDescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if key=#13 then
     Perform(WM_nextdlgctl,0,0);
end;

end.
