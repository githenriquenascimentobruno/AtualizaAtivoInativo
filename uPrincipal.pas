unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider, Data.SqlExpr,
  Data.DBXFirebird, Vcl.Mask;

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
    edtSaldo: TEdit;
    mskData: TMaskEdit;
    sdsEstoque: TSQLDataSet;
    dspEstoque: TDataSetProvider;
    cdsEstoque: TClientDataSet;
    dsEstoque: TDataSource;
    sdsEntradaSaida: TSQLDataSet;
    dspEntradaSaida: TDataSetProvider;
    cdsEntradaSaida: TClientDataSet;
    dsEntradaSaida: TDataSource;
    edtTipoMovimento: TEdit;
    edtQuantidade: TEdit;
    edtNota: TEdit;
    edtCodigoProduto: TEdit;
    edtHistorico: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    edtMaximoCodigo: TEdit;
    Button1: TButton;
    edtMaximoCodigoEstoque: TEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBGrid2: TDBGrid;
    cdsContagem: TClientDataSet;
    dsContagem: TDataSource;
    btnContagem: TButton;
    btnGravarContagem: TButton;
    sdsContagem: TSQLDataSet;
    dspContagem: TDataSetProvider;
    conexaoBdContagem: TSQLConnection;
    cdsContagemES_CODIGO: TIntegerField;
    cdsContagemES_DTMOVIMENTO: TDateField;
    cdsContagemES_TMOVIMENTO: TStringField;
    cdsContagemES_CODPRODUTO: TIntegerField;
    cdsContagemES_QTDE: TFMTBCDField;
    cdsContagemES_NRNOTA: TIntegerField;
    cdsContagemES_SALDO: TIntegerField;
    cdsContagemES_HISTORICO: TStringField;
    cdsContagemE_CODIGO: TIntegerField;
    cdsContagemE_DTMOVIMENTO: TDateField;
    cdsContagemE_TMOVIMENTO: TStringField;
    cdsContagemE_CODPRODUTO: TIntegerField;
    cdsContagemE_QTDE: TFMTBCDField;
    cdsContagemE_NRNOTA: TIntegerField;
    cdsContagemE_SALDO: TIntegerField;
    cdsContagemE_HISTORICO: TStringField;
    cdsEstoqueE_CODIGO: TIntegerField;
    cdsEstoqueE_DTMOVIMENTO: TDateField;
    cdsEstoqueE_TMOVIMENTO: TStringField;
    cdsEstoqueE_CODPRODUTO: TIntegerField;
    cdsEstoqueE_QTDE: TFMTBCDField;
    cdsEstoqueE_NRNOTA: TIntegerField;
    cdsEstoqueE_SALDO: TFMTBCDField;
    cdsEstoqueE_HISTORICO: TStringField;
    cdsEstoqueE_FORNECEDOR: TIntegerField;
    cdsEntradaSaidaES_CODIGO: TIntegerField;
    cdsEntradaSaidaES_DTMOVIMENTO: TDateField;
    cdsEntradaSaidaES_DTDEVOLUCAO: TDateField;
    cdsEntradaSaidaES_TMOVIMENTO: TStringField;
    cdsEntradaSaidaES_CODPRODUTO: TIntegerField;
    cdsEntradaSaidaES_QTDE: TFMTBCDField;
    cdsEntradaSaidaES_NRNOTA: TIntegerField;
    cdsEntradaSaidaES_SALDO: TFMTBCDField;
    cdsEntradaSaidaES_HISTORICO: TStringField;
    cdsEntradaSaidaES_FORNECEDOR: TIntegerField;
    sdsGenerator: TSQLDataSet;
    sdsGeneratorGEN_ID: TLargeintField;
    sdsGeneratorEstoque: TSQLDataSet;
    sdsGeneratorEstoqueGEN_ID: TLargeintField;
    sdsEntrSaidaGen: TSQLDataSet;
    sdsEstoqueGen: TSQLDataSet;
    sdsEntrSaidaGenGEN_ID: TLargeintField;
    sdsEstoqueGenGEN_ID: TLargeintField;
    queryAtualizaP_ID: TIntegerField;
    queryAtualizaP_FANTASIA: TIntegerField;
    queryAtualizaP_REFERENCIA: TStringField;
    queryAtualizaP_PRODUTO: TStringField;
    queryAtualizaP_APELIDO: TIntegerField;
    queryAtualizaP_FABRICA: TStringField;
    queryAtualizaP_MARCA: TIntegerField;
    queryAtualizaP_COR: TIntegerField;
    queryAtualizaP_GRUPO: TIntegerField;
    queryAtualizaP_CATEGORIA: TIntegerField;
    queryAtualizaP_SUBCATEGORIA: TIntegerField;
    queryAtualizaP_TIPO: TIntegerField;
    queryAtualizaP_TAMANHO: TIntegerField;
    queryAtualizaP_UNIDADE: TIntegerField;
    queryAtualizaP_MEDIDA: TIntegerField;
    queryAtualizaP_DIAMETRO: TIntegerField;
    queryAtualizaP_PESO: TIntegerField;
    queryAtualizaP_BARRAS1: TStringField;
    queryAtualizaP_BARRAS2: TStringField;
    queryAtualizaP_LUCRO: TFMTBCDField;
    queryAtualizaP_DESCONTO: TIntegerField;
    queryAtualizaP_DATACADASTRO: TDateField;
    queryAtualizaP_COMPRA: TDateField;
    queryAtualizaP_ATIVO: TStringField;
    queryAtualizaP_MASCULINO: TStringField;
    queryAtualizaP_FEMININO: TStringField;
    queryAtualizaP_UNISSEX: TStringField;
    queryAtualizaP_QTDEMINIMA: TFMTBCDField;
    queryAtualizaP_CEST: TStringField;
    queryAtualizaP_NCM: TStringField;
    queryAtualizaP_CFOP: TIntegerField;
    queryAtualizaP_TRIBUTACAO: TStringField;
    queryAtualizaP_ORIGEM: TStringField;
    queryAtualizaP_CSTPIS: TStringField;
    queryAtualizaP_GTINCOMERCIAL: TStringField;
    queryAtualizaP_GTINTRIBUTAVEL: TStringField;
    queryAtualizaP_APARECERSITE: TStringField;
    queryAtualizaP_TITULO: TStringField;
    queryAtualizaP_HISTORICO: TStringField;
    queryAtualizaP_IMPORTA: TIntegerField;
    queryAtualizaP_LIDO: TStringField;
    queryAtualizaP_ALTERADO: TStringField;
    cdsAtualizaP_ID: TIntegerField;
    cdsAtualizaP_FANTASIA: TIntegerField;
    cdsAtualizaP_REFERENCIA: TStringField;
    cdsAtualizaP_PRODUTO: TStringField;
    cdsAtualizaP_APELIDO: TIntegerField;
    cdsAtualizaP_FABRICA: TStringField;
    cdsAtualizaP_MARCA: TIntegerField;
    cdsAtualizaP_COR: TIntegerField;
    cdsAtualizaP_GRUPO: TIntegerField;
    cdsAtualizaP_CATEGORIA: TIntegerField;
    cdsAtualizaP_SUBCATEGORIA: TIntegerField;
    cdsAtualizaP_TIPO: TIntegerField;
    cdsAtualizaP_TAMANHO: TIntegerField;
    cdsAtualizaP_UNIDADE: TIntegerField;
    cdsAtualizaP_MEDIDA: TIntegerField;
    cdsAtualizaP_DIAMETRO: TIntegerField;
    cdsAtualizaP_PESO: TIntegerField;
    cdsAtualizaP_BARRAS1: TStringField;
    cdsAtualizaP_BARRAS2: TStringField;
    cdsAtualizaP_LUCRO: TFMTBCDField;
    cdsAtualizaP_DESCONTO: TIntegerField;
    cdsAtualizaP_DATACADASTRO: TDateField;
    cdsAtualizaP_COMPRA: TDateField;
    cdsAtualizaP_ATIVO: TStringField;
    cdsAtualizaP_MASCULINO: TStringField;
    cdsAtualizaP_FEMININO: TStringField;
    cdsAtualizaP_UNISSEX: TStringField;
    cdsAtualizaP_QTDEMINIMA: TFMTBCDField;
    cdsAtualizaP_CEST: TStringField;
    cdsAtualizaP_NCM: TStringField;
    cdsAtualizaP_CFOP: TIntegerField;
    cdsAtualizaP_TRIBUTACAO: TStringField;
    cdsAtualizaP_ORIGEM: TStringField;
    cdsAtualizaP_CSTPIS: TStringField;
    cdsAtualizaP_GTINCOMERCIAL: TStringField;
    cdsAtualizaP_GTINTRIBUTAVEL: TStringField;
    cdsAtualizaP_APARECERSITE: TStringField;
    cdsAtualizaP_TITULO: TStringField;
    cdsAtualizaP_HISTORICO: TStringField;
    cdsAtualizaP_IMPORTA: TIntegerField;
    cdsAtualizaP_LIDO: TStringField;
    cdsAtualizaP_ALTERADO: TStringField;
    btnLimparLancamentos: TButton;
    qryDeletarContagem: TSQLQuery;
    edtCodigoSubcategoria: TEdit;
    edtDescricaoSubcategoria: TEdit;
    qrySubcategoria: TSQLQuery;
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
    procedure btnContagemClick(Sender: TObject);
    procedure btnGravarContagemClick(Sender: TObject);
    procedure cdsContagemNewRecord(DataSet: TDataSet);
    procedure cdsEntradaSaidaNewRecord(DataSet: TDataSet);
    procedure cdsEstoqueNewRecord(DataSet: TDataSet);
    procedure edtSaldoKeyPress(Sender: TObject; var Key: Char);
    procedure edtSaldoExit(Sender: TObject);
    procedure btnLimparLancamentosClick(Sender: TObject);
  private
    { Private declarations }

  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}


procedure DeletarTabela(const DataSet: TDataSet);
begin
  with DataSet do
    while RecordCount > 0 do
      Delete;
end;

procedure TfrmPrincipal.btnContagemClick(Sender: TObject);
begin

  cdsAtualiza.Locate('P_ID', edtCodigo.Text, [loCaseInsensitive, loPartialKey]);

  begin
      cdsAtualiza.Edit;
      cdsAtualiza.FieldByName('P_ATIVO').AsString := 'S';
      cdsAtualiza.Post;
      cdsAtualiza.ApplyUpdates(1);
  end;



  if cdsContagem.IsEmpty then
  begin

  if cdsContagem.Locate('ES_CODPRODUTO',  edtCodigo.Text, [loCaseInsensitive, loPartialKey]) = False then
  begin
      cdsContagem.Insert;
      cdsContagem.FieldByName('ES_CODIGO').AsInteger := sdsGeneratorGEN_ID.AsInteger;
      cdsContagem.FieldByName('ES_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
      cdsContagem.FieldByName('ES_TMOVIMENTO').AsString := edtTipoMovimento.Text;
      cdsContagem.FieldByName('ES_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
      cdsContagem.FieldByName('ES_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
      cdsContagem.FieldByName('ES_NRNOTA').AsInteger := StrToInt(edtNota.Text);
      cdsContagem.FieldByName('ES_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('ES_HISTORICO').AsString := edtHistorico.Text;

      cdsContagem.FieldByName('E_CODIGO').AsInteger := sdsGeneratorEstoqueGEN_ID.AsInteger;
      cdsContagem.FieldByName('E_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
      cdsContagem.FieldByName('E_TMOVIMENTO').AsString := edtTipoMovimento.Text;
      cdsContagem.FieldByName('E_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
      cdsContagem.FieldByName('E_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
      cdsContagem.FieldByName('E_NRNOTA').AsInteger := StrToInt(edtNota.Text);
      cdsContagem.FieldByName('E_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('E_HISTORICO').AsString := edtHistorico.Text;
      cdsContagem.Post;
      cdsContagem.ApplyUpdates(1);
  end
  else
  if cdsContagem.Locate('ES_CODPRODUTO',  edtCodigo.Text, [loCaseInsensitive, loPartialKey]) = True then
  begin
      cdsContagem.Edit;
      cdsContagem.FieldByName('ES_SALDO').AsFloat := cdsContagem.FieldByName('ES_SALDO').AsFloat + StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('E_SALDO').AsFloat := cdsContagem.FieldByName('E_SALDO').AsFloat + StrToFloat(edtSaldo.Text);
      cdsContagem.Post;
      cdsContagem.ApplyUpdates(1);
  end;
  end else
  begin

  if cdsContagem.Locate('ES_CODPRODUTO',  edtCodigo.Text, [loCaseInsensitive, loPartialKey]) = False then
  begin
      cdsContagem.Insert;

      //cdsContagem.FieldByName('ES_CODIGO').AsInteger := StrToInt(edtMaximoCodigo.Text);
      cdsContagem.FieldByName('ES_CODIGO').AsInteger := sdsGeneratorGEN_ID.AsInteger;
      cdsContagem.FieldByName('ES_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
      cdsContagem.FieldByName('ES_TMOVIMENTO').AsString := edtTipoMovimento.Text;
      cdsContagem.FieldByName('ES_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
      cdsContagem.FieldByName('ES_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
      cdsContagem.FieldByName('ES_NRNOTA').AsInteger := StrToInt(edtNota.Text);
      cdsContagem.FieldByName('ES_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('ES_HISTORICO').AsString := edtHistorico.Text;

      //cdsContagem.FieldByName('E_CODIGO').AsInteger := StrToInt(edtMaximoCodigoEstoque.Text);
      cdsContagem.FieldByName('E_CODIGO').AsInteger := sdsGeneratorEstoqueGEN_ID.AsInteger;
      cdsContagem.FieldByName('E_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
      cdsContagem.FieldByName('E_TMOVIMENTO').AsString := edtTipoMovimento.Text;
      cdsContagem.FieldByName('E_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
      cdsContagem.FieldByName('E_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
      cdsContagem.FieldByName('E_NRNOTA').AsInteger := StrToInt(edtNota.Text);
      cdsContagem.FieldByName('E_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('E_HISTORICO').AsString := edtHistorico.Text;
      cdsContagem.Post;
      cdsContagem.ApplyUpdates(1);
  end
  else
  if cdsContagem.Locate('ES_CODPRODUTO',  edtCodigo.Text, [loCaseInsensitive, loPartialKey]) = True then
  begin
      cdsContagem.Edit;
      cdsContagem.FieldByName('ES_SALDO').AsFloat := cdsContagem.FieldByName('ES_SALDO').AsFloat + StrToFloat(edtSaldo.Text);
      cdsContagem.FieldByName('E_SALDO').AsFloat := cdsContagem.FieldByName('E_SALDO').AsFloat + StrToFloat(edtSaldo.Text);
      cdsContagem.Post;
      cdsContagem.ApplyUpdates(1);
  end;
  end;


end;


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

procedure TfrmPrincipal.btnGravarContagemClick(Sender: TObject);
begin
  cdsContagem.First;
  while not cdsContagem.Eof do
  begin

   begin
      cdsEntradaSaida.Insert;
      cdsEntradaSaida.FieldByName('ES_CODIGO').AsInteger := sdsEntrSaidaGenGEN_ID.AsInteger;
      cdsEntradaSaida.FieldByName('ES_DTMOVIMENTO').AsDateTime := cdsContagem.FieldByName('ES_DTMOVIMENTO').AsDateTime;
      cdsEntradaSaida.FieldByName('ES_TMOVIMENTO').AsString := cdsContagem.FieldByName('ES_TMOVIMENTO').AsString;
      cdsEntradaSaida.FieldByName('ES_CODPRODUTO').AsInteger := cdsContagem.FieldByName('ES_CODPRODUTO').AsInteger;
      cdsEntradaSaida.FieldByName('ES_QTDE').AsFloat := cdsContagem.FieldByName('ES_QTDE').AsFloat;
      cdsEntradaSaida.FieldByName('ES_NRNOTA').AsInteger := cdsContagem.FieldByName('ES_NRNOTA').AsInteger;
      cdsEntradaSaida.FieldByName('ES_SALDO').AsFloat := cdsContagem.FieldByName('ES_SALDO').AsFloat;
      cdsEntradaSaida.FieldByName('ES_HISTORICO').AsString := cdsContagem.FieldByName('ES_HISTORICO').AsString;
      cdsEntradaSaida.Post;
      //cdsEntradaSaida.Next;
      //cdsEntradaSaida.ApplyUpdates(1);
  end;


  begin
      cdsEstoque.Insert;
      cdsEstoque.FieldByName('E_CODIGO').AsInteger := sdsEstoqueGenGEN_ID.AsInteger;
      cdsEstoque.FieldByName('E_DTMOVIMENTO').AsDateTime := cdsContagem.FieldByName('E_DTMOVIMENTO').AsDateTime;
      cdsEstoque.FieldByName('E_TMOVIMENTO').AsString := cdsContagem.FieldByName('E_TMOVIMENTO').AsString;
      cdsEstoque.FieldByName('E_CODPRODUTO').AsInteger := cdsContagem.FieldByName('E_CODPRODUTO').AsInteger;
      cdsEstoque.FieldByName('E_QTDE').AsFloat := cdsContagem.FieldByName('E_QTDE').AsFloat;
      cdsEstoque.FieldByName('E_NRNOTA').AsInteger := cdsContagem.FieldByName('E_NRNOTA').AsInteger;
      cdsEstoque.FieldByName('E_SALDO').AsFloat := cdsContagem.FieldByName('E_SALDO').AsFloat;
      cdsEstoque.FieldByName('E_HISTORICO').AsString := cdsContagem.FieldByName('E_HISTORICO').AsString;
      cdsEstoque.Post;
      //cdsEstoque.Next;
      //cdsEstoque.ApplyUpdates(1);
  end;
    cdsContagem.Next;
    cdsEntradaSaida.ApplyUpdates(1);
    cdsEstoque.ApplyUpdates(1);
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

 { begin
  cdsEntradaSaida.Insert;
  cdsEntradaSaida.FieldByName('ES_CODIGO').AsInteger := StrToInt(edtMaximoCodigo.Text);
  cdsEntradaSaida.FieldByName('ES_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
  cdsEntradaSaida.FieldByName('ES_TMOVIMENTO').AsString := edtTipoMovimento.Text;
  cdsEntradaSaida.FieldByName('ES_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
  cdsEntradaSaida.FieldByName('ES_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
  cdsEntradaSaida.FieldByName('ES_NRNOTA').AsInteger := StrToInt(edtNota.Text);
  cdsEntradaSaida.FieldByName('ES_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
  cdsEntradaSaida.FieldByName('ES_HISTORICO').AsString := edtHistorico.Text;
  cdsEntradaSaida.Post;
  cdsEntradaSaida.ApplyUpdates(1);
  end;


  begin
  cdsEstoque.Insert;
  cdsEstoque.FieldByName('E_CODIGO').AsInteger := StrToInt(edtMaximoCodigoEstoque.Text);
  cdsEstoque.FieldByName('E_DTMOVIMENTO').AsDateTime := StrToDate(mskData.Text);
  cdsEstoque.FieldByName('E_TMOVIMENTO').AsString := edtTipoMovimento.Text;
  cdsEstoque.FieldByName('E_CODPRODUTO').AsInteger := StrToInt(edtCodigoProduto.Text);
  cdsEstoque.FieldByName('E_QTDE').AsFloat := StrToFloat(edtQuantidade.Text);
  cdsEstoque.FieldByName('E_NRNOTA').AsInteger := StrToInt(edtNota.Text);
  cdsEstoque.FieldByName('E_SALDO').AsFloat := StrToFloat(edtSaldo.Text);
  cdsEstoque.FieldByName('E_HISTORICO').AsString := edtHistorico.Text;
  cdsEstoque.Post;
  cdsEstoque.ApplyUpdates(1);
  end;     }


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

procedure TfrmPrincipal.btnLimparLancamentosClick(Sender: TObject);
begin

  DeletarTabela(cdsContagem);

 qryDeletarContagem.close;
 qryDeletarContagem.sql.clear;
 qryDeletarContagem.sql.text := 'delete from ENTRSAIDA';
 qryDeletarContagem.Execsql;

  cdsContagem.Close;
  cdsContagem.Open;
end;

procedure TfrmPrincipal.cdsContagemNewRecord(DataSet: TDataSet);
begin
  begin
    sdsGenerator.Active := False;
    sdsGenerator.Active := True;
    cdsContagemES_CODIGO.AsInteger := sdsGeneratorGEN_ID.AsInteger;
  end;

  begin
    sdsGeneratorEstoque.Active := False;
    sdsGeneratorEstoque.Active := True;
    cdsContagemE_CODIGO.AsInteger := sdsGeneratorEstoqueGEN_ID.AsInteger;
  end;

end;

procedure TfrmPrincipal.cdsEntradaSaidaNewRecord(DataSet: TDataSet);
begin
    sdsEntrSaidaGen.Active := False;
    sdsEntrSaidaGen.Active := True;
    cdsEntradaSaidaES_CODIGO.AsInteger := sdsEntrSaidaGenGEN_ID.AsInteger;
end;

procedure TfrmPrincipal.cdsEstoqueNewRecord(DataSet: TDataSet);
begin
    sdsEstoqueGen.Active := False;
    sdsEstoqueGen.Active := True;
    cdsEstoqueE_CODIGO.AsInteger := sdsEstoqueGenGEN_ID.AsInteger;
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
            edtCodigo.Text:=IntToStr(queryAtualiza.FieldByName('P_ID').AsInteger);
            edtDescricao.Text:=queryAtualiza.FieldByName('P_PRODUTO').AsString;
            edtDescricaoBarras.Text:=queryAtualiza.FieldByName('P_PRODUTO').AsString;
            edtCodigoSubcategoria.Text:=queryAtualiza.FieldByName('P_SUBCATEGORIA').AsString;
        end
          else
            begin
                MessageDlg('C?digo N?o Localizado.Verifique!!!',mtInformation,[mbOk],0);
                edtBarras.SetFocus;
            end;
        end;

        edtCodigoProduto.Text := edtCodigo.Text;


            //PESQUISA Cidades
    if edtCodigoSubcategoria.Text<>'' then
        begin
            qrySubcategoria.Close;
            qrySubcategoria.SQL.Clear;
          if length(trim(edtCodigo.Text))<=9 Then
            qrySubcategoria.SQL.Add('SELECT * FROM SUBCATEGORIA WHERE SC_ID=:SC_ID');
            qrySubcategoria.Params.ParamByName('SC_ID').Value:=edtCodigoSubcategoria.Text;
            qrySubcategoria.Open;

    if not qrySubcategoria.IsEmpty then
        begin

            edtDescricaoSubcategoria.Text:=qrySubcategoria.FieldByName('SC_NOME').AsString;

        end
          else
            begin
                MessageDlg('Subcategoria N?o Localizada.Verifique!!!',mtInformation,[mbOk],0);
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
                MessageDlg('Cidade N?o Localizada.Verifique!!!',mtInformation,[mbOk],0);
                edtCodigo.SetFocus;
            end;
        end;

        edtCodigoProduto.Text := edtCodigo.Text;





        with sdsContagem do
        begin
          sdsContagem.Close;
          sdsContagem.CommandText := 'SELECT MAX(ES_CODIGO) AS ES_CODIGO FROM ENTRSAIDA';
          sdsContagem.Open;
          edtMaximoCodigo.Text := IntToStr(sdsContagem.FieldByName('ES_CODIGO').AsInteger +1);
        end;



        with sdsContagem do
        begin
          sdsContagem.Close;
          sdsContagem.CommandText := 'SELECT MAX(E_CODIGO) AS E_CODIGO FROM ENTRSAIDA';
          sdsContagem.Open;
          edtMaximoCodigoEstoque.Text := IntToStr(sdsContagem.FieldByName('E_CODIGO').AsInteger +1);
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

procedure TfrmPrincipal.edtSaldoExit(Sender: TObject);
begin
  btnContagem.Click;
  edtBarras.SetFocus;
end;

procedure TfrmPrincipal.edtSaldoKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then
     Perform(WM_nextdlgctl,0,0);
end;

end.
