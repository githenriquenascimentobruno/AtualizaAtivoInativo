object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  Caption = 'Principal - Atualiza'
  ClientHeight = 651
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 88
    Top = 3
    Width = 33
    Height = 13
    Caption = 'C'#243'digo'
  end
  object Label2: TLabel
    Left = 167
    Top = 3
    Width = 46
    Height = 13
    Caption = 'Descri'#231#227'o'
  end
  object Label3: TLabel
    Left = 663
    Top = 3
    Width = 25
    Height = 13
    Caption = 'Ativo'
  end
  object edtCodigo: TEdit
    Left = 88
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 0
    OnClick = edtCodigoClick
    OnExit = edtCodigoExit
    OnKeyPress = edtCodigoKeyPress
  end
  object edtDescricao: TEdit
    Left = 167
    Top = 16
    Width = 490
    Height = 21
    TabOrder = 1
    OnKeyPress = edtDescricaoKeyPress
  end
  object edtAtivo: TEdit
    Left = 663
    Top = 16
    Width = 73
    Height = 21
    TabOrder = 2
    Text = 'S'
    OnKeyPress = edtAtivoKeyPress
  end
  object DBGrid1: TDBGrid
    Left = 88
    Top = 76
    Width = 648
    Height = 567
    DataSource = dsAtualiza
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'P_ID'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_FANTASIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_REFERENCIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_PRODUTO'
        Width = 500
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_APELIDO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_FABRICA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_MARCA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_COR'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_GRUPO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_CATEGORIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_SUBCATEGORIA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_TIPO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_TAMANHO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_UNIDADE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_MEDIDA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_DIAMETRO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_PESO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_BARRAS1'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_BARRAS2'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_LUCRO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_DESCONTO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_DATACADASTRO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_COMPRA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_ATIVO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'P_MASCULINO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_FEMININO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_UNISSEX'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_QTDEMINIMA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_CEST'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_NCM'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_CFOP'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_TRIBUTACAO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_ORIGEM'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_CSTPIS'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_GTINCOMERCIAL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_GTINTRIBUTAVEL'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_APARECERSITE'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_TITULO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_HISTORICO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_IMPORTA'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_LIDO'
        Visible = False
      end
      item
        Expanded = False
        FieldName = 'P_ALTERADO'
        Visible = False
      end>
  end
  object btnIncluir: TButton
    Left = 742
    Top = 14
    Width = 75
    Height = 25
    Caption = 'Incluir'
    TabOrder = 4
    OnClick = btnIncluirClick
    OnExit = btnIncluirExit
    OnKeyPress = btnIncluirKeyPress
  end
  object btnGravar: TButton
    Left = 742
    Top = 45
    Width = 75
    Height = 25
    Caption = 'Incluir - EAN'
    TabOrder = 5
    OnClick = btnGravarClick
    OnKeyPress = btnGravarKeyPress
  end
  object edtBarras: TEdit
    Left = 88
    Top = 48
    Width = 73
    Height = 21
    TabOrder = 6
    OnClick = edtBarrasClick
    OnExit = edtBarrasExit
    OnKeyPress = edtBarrasKeyPress
  end
  object edtDescricaoBarras: TEdit
    Left = 167
    Top = 49
    Width = 490
    Height = 21
    TabOrder = 7
    OnKeyPress = edtDescricaoBarrasKeyPress
  end
  object edtAtivoBarras: TEdit
    Left = 663
    Top = 49
    Width = 73
    Height = 21
    TabOrder = 8
    Text = 'S'
    OnKeyPress = edtAtivoBarrasKeyPress
  end
  object conexaoBd: TSQLConnection
    ConnectionName = 'SisFraldas'
    DriverName = 'Firebird'
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      'DriverUnit=Data.DBXFirebird'
      
        'DriverPackageLoader=TDBXDynalinkDriverLoader,DbxCommonDriver270.' +
        'bpl'
      
        'DriverAssemblyLoader=Borland.Data.TDBXDynalinkDriverLoader,Borla' +
        'nd.Data.DbxCommonDriver,Version=24.0.0.0,Culture=neutral,PublicK' +
        'eyToken=91d62ebb5b0d1b1b'
      
        'MetaDataPackageLoader=TDBXFirebirdMetaDataCommandFactory,DbxFire' +
        'birdDriver270.bpl'
      
        'MetaDataAssemblyLoader=Borland.Data.TDBXFirebirdMetaDataCommandF' +
        'actory,Borland.Data.DbxFirebirdDriver,Version=24.0.0.0,Culture=n' +
        'eutral,PublicKeyToken=91d62ebb5b0d1b1b'
      'LibraryName=dbxfb.dll'
      'LibraryNameOsx=libsqlfb.dylib'
      'VendorLib=fbclient.dll'
      'VendorLibWin64=fbclient.dll'
      'VendorLibOsx=/Library/Frameworks/Firebird.framework/Firebird'
      
        'Database=lojadasfraldas.ddns.us:/bminfo/webapps/sisfraldas/bmfra' +
        'ldas.fdb'
      'User_Name=sysdba'
      'Password=fraldas_'
      'Role=RoleName'
      'MaxBlobSize=-1'
      'LocaleCode=0000'
      'IsolationLevel=ReadCommitted'
      'SQLDialect=3'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'TrimChar=False'
      'BlobSize=-1'
      'ErrorResourceFile='
      'RoleName=RoleName'
      'ServerCharSet='
      'Trim Char=False')
    Connected = True
    Left = 136
    Top = 240
  end
  object sdsAtualiza: TSQLDataSet
    Active = True
    CommandText = 'select * from produtos'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexaoBd
    Left = 280
    Top = 240
  end
  object dspAtualiza: TDataSetProvider
    DataSet = sdsAtualiza
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 424
    Top = 240
  end
  object cdsAtualiza: TClientDataSet
    Active = True
    Aggregates = <>
    CommandText = 'select * from produtos'
    Params = <>
    ProviderName = 'dspAtualiza'
    Left = 560
    Top = 240
  end
  object queryAtualiza: TSQLQuery
    DataSource = dsAtualizaNovoStatus
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      'select * from produtos')
    SQLConnection = conexaoBd
    Left = 656
    Top = 240
  end
  object cdsAtualizaNovoStatus: TClientDataSet
    PersistDataPacket.Data = {
      620000009619E0BD010000001800000003000000000003000000620006636F64
      69676F04000100000000000964657363726963616F0200490000000100055749
      44544802000200FF000673746174757301004900000001000557494454480200
      02000A000000}
    Active = True
    Aggregates = <>
    Params = <>
    Left = 240
    Top = 392
    object cdsAtualizaNovoStatuscodigo: TIntegerField
      FieldName = 'codigo'
    end
    object cdsAtualizaNovoStatusdescricao: TStringField
      FieldName = 'descricao'
      Size = 255
    end
    object cdsAtualizaNovoStatusstatus: TStringField
      FieldName = 'status'
      Size = 10
    end
  end
  object dsAtualizaNovoStatus: TDataSource
    DataSet = cdsAtualizaNovoStatus
    Left = 408
    Top = 392
  end
  object dsAtualiza: TDataSource
    DataSet = cdsAtualiza
    Left = 640
    Top = 168
  end
end
