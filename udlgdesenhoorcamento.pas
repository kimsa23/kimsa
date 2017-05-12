unit udlgdesenhoorcamento;

interface

uses
  forms, dialogs, sysutils, Mask, Classes, ExtCtrls, Buttons, StdCtrls, ComCtrls, Controls,
  sqlexpr, DB,
  uexportarexcel, ustrings, uregistro, uconstantes, udatahora, ulocalizarcliente,
  classeregistrainformacao, classegerar, classeform,  classeempresa, classeretornasql, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxPC, cxContainer, cxEdit,
  cxTextEdit, cxMaskEdit, cxButtonEdit, Menus, cxButtons, cxLabel,
  cxCheckListBox, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxDBData, cxMemo, cxDBEdit, cxCalendar, cxGridLevel,
  cxClasses, cxGridCustomView, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxGrid, FMTBcd, Provider, DBClient, cxCheckBox,
  cxGridBandedTableView, cxGridDBBandedTableView, cxSplitter, cxBlobEdit,
  cxCurrencyEdit, cxSpinEdit, cxCalc, cxPCdxBarPopupMenu, cxNavigator,
  dxBarBuiltInMenu;

type
  Tfrmdlgdesenhoorcamento = class(TForm)
    btncancelar: TcxButton;
    btnok: TcxButton;
    bvl1: TBevel;
    cxSplitter1: TcxSplitter;
    sdsdetail: TSQLDataSet;
    cdsdetail: TClientDataSet;
    dtsdetail: TDataSource;
    dts2: TDataSource;
    dtsitorcamentorecurso: TDataSource;
    cdsitorcamentorecurso: TClientDataSet;
    cdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    cdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    cdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    cdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentorecursoQTPREPARACAO: TFloatField;
    cdsitorcamentorecursoQTOPERACAO: TFloatField;
    cdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    cdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    cdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    cdsitorcamentorecursoCDEMPRESA: TFMTBCDField;
    cdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    cdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    sdsitorcamentorecurso: TSQLDataSet;
    sdsitorcamentorecursoCDITORCAMENTORECURSO: TIntegerField;
    sdsitorcamentorecursoCDITORCAMENTO: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOI: TIntegerField;
    sdsitorcamentorecursoCDUSUARIOA: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentorecursoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentorecursoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentorecursoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentorecursoQTPREPARACAO: TFloatField;
    sdsitorcamentorecursoQTOPERACAO: TFloatField;
    sdsitorcamentorecursoVLPREPARACAO: TFMTBCDField;
    sdsitorcamentorecursoVLOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoVLTOTALOPERACAO: TFMTBCDField;
    sdsitorcamentorecursoCDTPEQUIPAMENTO: TIntegerField;
    sdsitorcamentorecursoVLTOTALPREPARACAO: TFMTBCDField;
    sdsitorcamentorecursoCDEMPRESA: TFMTBCDField;
    sdsitorcamentorecursoVLTOTAL: TFMTBCDField;
    sdsitorcamentorecursoDSOBSERVACAO: TBlobField;
    sdsitorcamentomaterial: TSQLDataSet;
    sdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    sdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    sdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    sdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    sdsitorcamentomaterialCDPRODUTO: TIntegerField;
    sdsitorcamentomaterialCDFORMA: TIntegerField;
    sdsitorcamentomaterialCDMATERIAL: TIntegerField;
    sdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentomaterialQTITEM: TFloatField;
    sdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    sdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    sdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    sdsitorcamentomaterialCDDIGITADO: TStringField;
    sdsitorcamentomaterialCDEMPRESA: TFMTBCDField;
    sdsitorcamentomaterialNMPRODUTO: TStringField;
    sdsitorcamentomaterialQTPECA: TFloatField;
    sdsitorcamentomaterialDSPOSICAO: TStringField;
    sdsitorcamentomaterialNUCLFISCAL: TStringField;
    sdsitorcamentomaterialALICMS: TFloatField;
    sdsitorcamentomaterialALIPI: TFloatField;
    sdsitorcamentomaterialBORECUPERAICMS: TStringField;
    sdsitorcamentomaterialBORECUPERAIPI: TStringField;
    sdsitorcamentomaterialVLICMS: TFMTBCDField;
    sdsitorcamentomaterialVLIPI: TFMTBCDField;
    sdsitorcamentomaterialVLFRETE: TFMTBCDField;
    sdsitorcamentomaterialVLFINAL: TFMTBCDField;
    sdsitorcamentomaterialALPIS: TFloatField;
    sdsitorcamentomaterialALCOFINS: TFloatField;
    sdsitorcamentomaterialVLPIS: TFMTBCDField;
    sdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    sdsitorcamentomaterialBORECUPERAPIS: TStringField;
    sdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    sdsitorcamentocusto: TSQLDataSet;
    sdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    sdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    sdsitorcamentocustoCDUSUARIOI: TIntegerField;
    sdsitorcamentocustoCDUSUARIOA: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    sdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    sdsitorcamentocustoCDPRODUTO: TIntegerField;
    sdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    sdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    sdsitorcamentocustoVLTOTAL: TFMTBCDField;
    sdsitorcamentocustoCDDIGITADO: TStringField;
    sdsitorcamentocustoNMPRODUTO: TStringField;
    sdsitorcamentocustoCDEMPRESA: TFMTBCDField;
    sdsitorcamentocustoQTITEM: TFloatField;
    sdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    cdsitorcamentomaterial: TClientDataSet;
    cdsitorcamentomaterialCDITORCAMENTOMATERIAL: TIntegerField;
    cdsitorcamentomaterialCDITORCAMENTO: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOI: TIntegerField;
    cdsitorcamentomaterialCDUSUARIOA: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORI: TIntegerField;
    cdsitorcamentomaterialCDCOMPUTADORA: TIntegerField;
    cdsitorcamentomaterialCDPRODUTO: TIntegerField;
    cdsitorcamentomaterialTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentomaterialTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentomaterialQTITEM: TFloatField;
    cdsitorcamentomaterialQTPESOUNITARIO: TFloatField;
    cdsitorcamentomaterialVLUNITARIO: TFMTBCDField;
    cdsitorcamentomaterialVLTOTAL: TFMTBCDField;
    cdsitorcamentomaterialCDDIGITADO: TStringField;
    cdsitorcamentomaterialCDFORMA: TIntegerField;
    cdsitorcamentomaterialCDMATERIAL: TIntegerField;
    cdsitorcamentomaterialCDEMPRESA: TFMTBCDField;
    cdsitorcamentomaterialNMPRODUTO: TStringField;
    cdsitorcamentomaterialQTPECA: TFloatField;
    cdsitorcamentomaterialDSPOSICAO: TStringField;
    cdsitorcamentomaterialNUCLFISCAL: TStringField;
    cdsitorcamentomaterialALICMS: TFloatField;
    cdsitorcamentomaterialALIPI: TFloatField;
    cdsitorcamentomaterialBORECUPERAICMS: TStringField;
    cdsitorcamentomaterialBORECUPERAIPI: TStringField;
    cdsitorcamentomaterialVLICMS: TFMTBCDField;
    cdsitorcamentomaterialVLIPI: TFMTBCDField;
    cdsitorcamentomaterialVLFRETE: TFMTBCDField;
    cdsitorcamentomaterialVLFINAL: TFMTBCDField;
    cdsitorcamentomaterialALPIS: TFloatField;
    cdsitorcamentomaterialALCOFINS: TFloatField;
    cdsitorcamentomaterialVLPIS: TFMTBCDField;
    cdsitorcamentomaterialVLCOFINS: TFMTBCDField;
    cdsitorcamentomaterialBORECUPERAPIS: TStringField;
    cdsitorcamentomaterialBORECUPERACOFINS: TStringField;
    dtsitorcamentomaterial: TDataSource;
    dtsitorcamentocusto: TDataSource;
    cdsitorcamentocusto: TClientDataSet;
    cdsitorcamentocustoCDITORCAMENTOCUSTO: TIntegerField;
    cdsitorcamentocustoCDITORCAMENTO: TIntegerField;
    cdsitorcamentocustoCDUSUARIOI: TIntegerField;
    cdsitorcamentocustoCDUSUARIOA: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORI: TIntegerField;
    cdsitorcamentocustoCDCOMPUTADORA: TIntegerField;
    cdsitorcamentocustoCDPRODUTO: TIntegerField;
    cdsitorcamentocustoTSINCLUSAO: TSQLTimeStampField;
    cdsitorcamentocustoTSALTERACAO: TSQLTimeStampField;
    cdsitorcamentocustoVLTOTAL: TFMTBCDField;
    cdsitorcamentocustoCDDIGITADO: TStringField;
    cdsitorcamentocustoNMPRODUTO: TStringField;
    cdsitorcamentocustoCDEMPRESA: TFMTBCDField;
    cdsitorcamentocustoQTITEM: TFloatField;
    cdsitorcamentocustoVLUNITARIO: TFMTBCDField;
    grddetail1: TcxGrid;
    grddetail1DBTableView1: TcxGridDBTableView;
    grddetail1DBTableView1CDPRODUTO: TcxGridDBColumn;
    grddetail1DBTableView1CDDIGITADO: TcxGridDBColumn;
    grddetail1DBTableView1NMPRODUTO: TcxGridDBColumn;
    grddetail1DBTableView1CDTPGRADEVALOR: TcxGridDBColumn;
    grddetail1DBTableView1CDSTITPEDIDO: TcxGridDBColumn;
    grddetail1DBTableView1QTITEM: TcxGridDBColumn;
    grddetail1DBTableView1VLUNITARIO: TcxGridDBColumn;
    grddetail1DBTableView1QTATENDIDA: TcxGridDBColumn;
    grddetail1DBTableView1VLTOTAL: TcxGridDBColumn;
    grddetail1DBTableView1VLIPI: TcxGridDBColumn;
    grddetail1DBTableView1ALIPI: TcxGridDBColumn;
    grddetail1DBTableView1VLTOTALCIPI: TcxGridDBColumn;
    grddetail1DBTableView1DTPRVENTREGA: TcxGridDBColumn;
    grddetail1DBTableView1CDALTERNATIVO: TcxGridDBColumn;
    grddetail1DBTableView1QTPESO: TcxGridDBColumn;
    grddetail1DBTableView1VLQUILO: TcxGridDBColumn;
    grddetail1DBTableView1DSDESENHO: TcxGridDBColumn;
    grddetail1DBTableView1VLMAQUINA: TcxGridDBColumn;
    grddetail1DBTableView1VLPECA: TcxGridDBColumn;
    grddetail1DBTableView1ALMVA: TcxGridDBColumn;
    grddetail1DBTableView1VLICMSSUBTRIB: TcxGridDBColumn;
    grddetail1DBTableView1VLFRETE: TcxGridDBColumn;
    grddetail1DBTableView1VLDESCONTO: TcxGridDBColumn;
    grddetail1DBTableView1ALICMS: TcxGridDBColumn;
    grddetail1DBTableView1ALICMSSUBTRIB: TcxGridDBColumn;
    grddetail1DBTableView1NUCOTACAO: TcxGridDBColumn;
    grddetail1DBTableView1NMFORMA: TcxGridDBColumn;
    grddetail1DBTableView1CDFORMA: TcxGridDBColumn;
    grddetail1DBTableView1NMTPGRADEVALOR: TcxGridDBColumn;
    grddetail1DBBandedTableView1: TcxGridDBBandedTableView;
    grddetail1DBBandedTableView1CDDIGITADO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDALTERNATIVO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NMPRODUTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DTPRVENTREGA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSOBSERVACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHOPOSICAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSDESENHOREVISAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUCOTACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUITEM: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPGRADEVALOR: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NMTPGRADEVALOR: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NMFORMA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDFORMA: TcxGridDBBandedColumn;
    colgrddetail1DBBandedTableView1QTPECA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTITEM: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1QTATENDIDA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLUNITARIO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLTOTAL: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLFRETE: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLDESCONTO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLICMS: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALMVA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLICMSSUBTRIB: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALICMSSUBTRIB: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1CDTPIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1ALIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1VLTOTALCIPI: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUPRAZOENTREGA: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DTAPROVACAO: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1NUCLFISCAL: TcxGridDBBandedColumn;
    grddetail1DBBandedTableView1DSOBSERVACAOMADEIRA: TcxGridDBBandedColumn;
    grlgrddetail1Level1: TcxGridLevel;
    pgcPECA: TcxPageControl;
    tbsmaterial: TcxTabSheet;
    grdmaterial: TcxGrid;
    cxGridDBTableView2: TcxGridDBTableView;
    cxGridDBBandedTableView2: TcxGridDBBandedTableView;
    cxGridDBBandedTableView2CDDIGITADO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2NMPRODUTO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTPECA: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTPESOUNITARIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2QTITEM: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLUNITARIO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLTOTAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2DSPOSICAO: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2NUCLFISCAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLICMS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLIPI: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLFRETE: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLFINAL: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2ALCOFINS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2VLCOFINS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERAPIS: TcxGridDBBandedColumn;
    cxGridDBBandedTableView2BORECUPERACOFINS: TcxGridDBBandedColumn;
    cxGridLevel2: TcxGridLevel;
    tbscustos: TcxTabSheet;
    grdcusto: TcxGrid;
    cxGridDBTableView3: TcxGridDBTableView;
    grdcustoDBTableView1: TcxGridDBTableView;
    grdcustoDBTableView1CDDIGITADO: TcxGridDBColumn;
    grdcustoDBTableView1NMPRODUTO: TcxGridDBColumn;
    grdcustoDBTableView1QTITEM: TcxGridDBColumn;
    grdcustoDBTableView1VLUNITARIO: TcxGridDBColumn;
    grdcustoDBTableView1VLTOTAL: TcxGridDBColumn;
    cxGridLevel3: TcxGridLevel;
    tbsrecursos: TcxTabSheet;
    grdrecurso: TcxGrid;
    cxGridDBTableView1: TcxGridDBTableView;
    tbvrecurso: TcxGridDBBandedTableView;
    tbvrecursoCDTPEQUIPAMENTO: TcxGridDBBandedColumn;
    tbvrecursoQTPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoVLPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoQTOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLTOTALOPERACAO: TcxGridDBBandedColumn;
    tbvrecursoVLTOTALPREPARACAO: TcxGridDBBandedColumn;
    tbvrecursoDSOBSERVACAO: TcxGridDBBandedColumn;
    cxGridLevel1: TcxGridLevel;
    dspdetail: TDataSetProvider;
    grddetail1DBBandedTableView1CDORCAMENTO: TcxGridDBBandedColumn;
    sdsdetailCDITORCAMENTO: TIntegerField;
    sdsdetailCDORCAMENTO: TIntegerField;
    sdsdetailCDUSUARIOI: TIntegerField;
    sdsdetailCDUSUARIOA: TIntegerField;
    sdsdetailCDCOMPUTADORI: TIntegerField;
    sdsdetailCDCOMPUTADORA: TIntegerField;
    sdsdetailCDPRODUTO: TIntegerField;
    sdsdetailCDTPICMS: TIntegerField;
    sdsdetailCDTPIPI: TIntegerField;
    sdsdetailTSINCLUSAO: TSQLTimeStampField;
    sdsdetailTSALTERACAO: TSQLTimeStampField;
    sdsdetailQTITEM: TFMTBCDField;
    sdsdetailQTAPROVADO: TFloatField;
    sdsdetailVLUNITARIO: TFMTBCDField;
    sdsdetailVLTOTAL: TFMTBCDField;
    sdsdetailPRLUCRO: TFloatField;
    sdsdetailALICMS: TFloatField;
    sdsdetailVLICMS: TFMTBCDField;
    sdsdetailALIPI: TFloatField;
    sdsdetailVLIPI: TFMTBCDField;
    sdsdetailDSDESENHO: TStringField;
    sdsdetailDSPOSICAODESENHO: TStringField;
    sdsdetailNUREVISAODESENHO: TStringField;
    sdsdetailNUDIASENTREGA: TIntegerField;
    sdsdetailCDDIGITADO: TStringField;
    sdsdetailCDTPGRADEVALOR: TIntegerField;
    sdsdetailVLTOTALCIPI: TFMTBCDField;
    sdsdetailDTPRVENTREGA: TDateField;
    sdsdetailALMVA: TFloatField;
    sdsdetailVLICMSSUBTRIB: TFMTBCDField;
    sdsdetailVLFRETE: TFMTBCDField;
    sdsdetailVLDESCONTO: TFMTBCDField;
    sdsdetailALICMSSUBTRIB: TFloatField;
    sdsdetailNUCOTACAO: TStringField;
    sdsdetailNUITEM: TStringField;
    sdsdetailQTPECA: TFloatField;
    sdsdetailCDEMPRESA: TFMTBCDField;
    sdsdetailDSOBSERVACAO: TBlobField;
    sdsdetailDSDESENHOPOSICAO: TStringField;
    sdsdetailDSDESENHOREVISAO: TStringField;
    sdsdetailALPIS: TFloatField;
    sdsdetailVLPIS: TFMTBCDField;
    sdsdetailALCOFINS: TFloatField;
    sdsdetailVLCOFINS: TFMTBCDField;
    sdsdetailALCSLL: TFloatField;
    sdsdetailVLCSLL: TFMTBCDField;
    sdsdetailALIRPJ: TFloatField;
    sdsdetailVLIRPJ: TFMTBCDField;
    sdsdetailVLPRODUCAO: TFMTBCDField;
    sdsdetailVLMATERIAL: TFMTBCDField;
    sdsdetailVLCUSTO: TFMTBCDField;
    sdsdetailVLPREPARACAO: TFMTBCDField;
    sdsdetailVLOPERACAO: TFMTBCDField;
    sdsdetailQTOPERACAO: TFloatField;
    sdsdetailQTPREPARACAO: TFloatField;
    sdsdetailQTHORA: TFloatField;
    sdsdetailVLPRODUCAOP: TFMTBCDField;
    sdsdetailVLMATERIALP: TFMTBCDField;
    sdsdetailVLCUSTOP: TFMTBCDField;
    sdsdetailVLPREPARACAOP: TFMTBCDField;
    sdsdetailVLOPERACAOP: TFMTBCDField;
    sdsdetailQTPREPARACAOP: TFloatField;
    sdsdetailQTOPERACAOP: TFloatField;
    sdsdetailQTHORAP: TFloatField;
    sdsdetailVLPISP: TFMTBCDField;
    sdsdetailVLCOFINSP: TFMTBCDField;
    sdsdetailVLCSLLP: TFMTBCDField;
    sdsdetailVLIRPJP: TFMTBCDField;
    sdsdetailVLICMSP: TFMTBCDField;
    sdsdetailVLIPIP: TFMTBCDField;
    sdsdetailNUPRAZOENTREGA: TIntegerField;
    sdsdetailDTAPROVACAO: TDateField;
    sdsdetailVLLUCRO: TFMTBCDField;
    sdsdetailVLLUCROP: TFMTBCDField;
    sdsdetailALISS: TFloatField;
    sdsdetailVLISSP: TFMTBCDField;
    sdsdetailVLISS: TFMTBCDField;
    sdsdetailVLIMPOSTOP: TFMTBCDField;
    sdsdetailVLIMPOSTO: TFMTBCDField;
    sdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    sdsdetailVLVENDALIQUIDA: TFMTBCDField;
    sdsdetailVLLUCROBRUTOP: TFMTBCDField;
    sdsdetailVLLUCROBRUTO: TFMTBCDField;
    sdsdetailVLDESPESA: TFMTBCDField;
    sdsdetailVLDESPESAP: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    sdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    sdsdetailVLDESPESAFRETEP: TFMTBCDField;
    sdsdetailVLDESPESAFRETE: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    sdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    sdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    sdsdetailVLDESPESASEGUROP: TFMTBCDField;
    sdsdetailVLDESPESASEGURO: TFMTBCDField;
    sdsdetailVLLUCROIRCSP: TFMTBCDField;
    sdsdetailVLLUCROIRCS: TFMTBCDField;
    sdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    sdsdetailPRDESPESAFRETE: TFloatField;
    sdsdetailPRDESPESACOMERCIAL: TFloatField;
    sdsdetailPRDESPESAEMBALAGEM: TFloatField;
    sdsdetailPRDESPESASEGURO: TFloatField;
    sdsdetailVLIRCSLLP: TFMTBCDField;
    sdsdetailVLIRCSLL: TFMTBCDField;
    sdsdetailALSIMPLES: TFloatField;
    sdsdetailVLSIMPLESP: TFMTBCDField;
    sdsdetailVLSIMPLES: TFMTBCDField;
    sdsdetailVLRECURSOP: TFMTBCDField;
    sdsdetailVLRECURSO: TFMTBCDField;
    sdsdetailPRDESCONTO: TFMTBCDField;
    sdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    sdsdetailNUSEQUENCIA: TIntegerField;
    sdsdetailDSPRODUTO: TStringField;
    sdsdetailCDSTITORCAMENTO: TIntegerField;
    sdsdetailBOCERTIFICADO: TStringField;
    sdsdetailBOINFTECNICA: TStringField;
    sdsdetailCDCONDPAGTO: TIntegerField;
    sdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    sdsdetailNMFORMA: TStringField;
    sdsdetailCDFORMA: TIntegerField;
    sdsdetailNMPRODUTO: TStringField;
    sdsdetailCDALTERNATIVO: TStringField;
    sdsdetailNUCLFISCAL: TStringField;
    sdsdetailNMTPGRADEVALOR: TStringField;
    sdsdetailNMUNIDADE: TStringField;
    sdsdetailBOSERVICO: TStringField;
    cdsdetailCDITORCAMENTO: TIntegerField;
    cdsdetailCDORCAMENTO: TIntegerField;
    cdsdetailCDUSUARIOI: TIntegerField;
    cdsdetailCDUSUARIOA: TIntegerField;
    cdsdetailCDCOMPUTADORI: TIntegerField;
    cdsdetailCDCOMPUTADORA: TIntegerField;
    cdsdetailCDPRODUTO: TIntegerField;
    cdsdetailCDTPICMS: TIntegerField;
    cdsdetailCDTPIPI: TIntegerField;
    cdsdetailTSINCLUSAO: TSQLTimeStampField;
    cdsdetailTSALTERACAO: TSQLTimeStampField;
    cdsdetailQTITEM: TFMTBCDField;
    cdsdetailQTAPROVADO: TFloatField;
    cdsdetailVLUNITARIO: TFMTBCDField;
    cdsdetailVLTOTAL: TFMTBCDField;
    cdsdetailPRLUCRO: TFloatField;
    cdsdetailALICMS: TFloatField;
    cdsdetailVLICMS: TFMTBCDField;
    cdsdetailALIPI: TFloatField;
    cdsdetailVLIPI: TFMTBCDField;
    cdsdetailDSDESENHO: TStringField;
    cdsdetailDSPOSICAODESENHO: TStringField;
    cdsdetailNUREVISAODESENHO: TStringField;
    cdsdetailNUDIASENTREGA: TIntegerField;
    cdsdetailCDDIGITADO: TStringField;
    cdsdetailCDTPGRADEVALOR: TIntegerField;
    cdsdetailVLTOTALCIPI: TFMTBCDField;
    cdsdetailDTPRVENTREGA: TDateField;
    cdsdetailALMVA: TFloatField;
    cdsdetailVLICMSSUBTRIB: TFMTBCDField;
    cdsdetailVLFRETE: TFMTBCDField;
    cdsdetailVLDESCONTO: TFMTBCDField;
    cdsdetailALICMSSUBTRIB: TFloatField;
    cdsdetailNUCOTACAO: TStringField;
    cdsdetailNUITEM: TStringField;
    cdsdetailQTPECA: TFloatField;
    cdsdetailCDEMPRESA: TFMTBCDField;
    cdsdetailDSOBSERVACAO: TBlobField;
    cdsdetailDSDESENHOPOSICAO: TStringField;
    cdsdetailDSDESENHOREVISAO: TStringField;
    cdsdetailALPIS: TFloatField;
    cdsdetailVLPIS: TFMTBCDField;
    cdsdetailALCOFINS: TFloatField;
    cdsdetailVLCOFINS: TFMTBCDField;
    cdsdetailALCSLL: TFloatField;
    cdsdetailVLCSLL: TFMTBCDField;
    cdsdetailALIRPJ: TFloatField;
    cdsdetailVLIRPJ: TFMTBCDField;
    cdsdetailVLPRODUCAO: TFMTBCDField;
    cdsdetailVLMATERIAL: TFMTBCDField;
    cdsdetailVLCUSTO: TFMTBCDField;
    cdsdetailVLPREPARACAO: TFMTBCDField;
    cdsdetailVLOPERACAO: TFMTBCDField;
    cdsdetailQTOPERACAO: TFloatField;
    cdsdetailQTPREPARACAO: TFloatField;
    cdsdetailQTHORA: TFloatField;
    cdsdetailVLPRODUCAOP: TFMTBCDField;
    cdsdetailVLMATERIALP: TFMTBCDField;
    cdsdetailVLCUSTOP: TFMTBCDField;
    cdsdetailVLPREPARACAOP: TFMTBCDField;
    cdsdetailVLOPERACAOP: TFMTBCDField;
    cdsdetailQTPREPARACAOP: TFloatField;
    cdsdetailQTOPERACAOP: TFloatField;
    cdsdetailQTHORAP: TFloatField;
    cdsdetailVLPISP: TFMTBCDField;
    cdsdetailVLCOFINSP: TFMTBCDField;
    cdsdetailVLCSLLP: TFMTBCDField;
    cdsdetailVLIRPJP: TFMTBCDField;
    cdsdetailVLICMSP: TFMTBCDField;
    cdsdetailVLIPIP: TFMTBCDField;
    cdsdetailNUPRAZOENTREGA: TIntegerField;
    cdsdetailDTAPROVACAO: TDateField;
    cdsdetailVLLUCRO: TFMTBCDField;
    cdsdetailVLLUCROP: TFMTBCDField;
    cdsdetailALISS: TFloatField;
    cdsdetailVLISSP: TFMTBCDField;
    cdsdetailVLISS: TFMTBCDField;
    cdsdetailVLIMPOSTOP: TFMTBCDField;
    cdsdetailVLIMPOSTO: TFMTBCDField;
    cdsdetailVLVENDALIQUIDAP: TFMTBCDField;
    cdsdetailVLVENDALIQUIDA: TFMTBCDField;
    cdsdetailVLLUCROBRUTOP: TFMTBCDField;
    cdsdetailVLLUCROBRUTO: TFMTBCDField;
    cdsdetailVLDESPESA: TFMTBCDField;
    cdsdetailVLDESPESAP: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVA: TFMTBCDField;
    cdsdetailVLDESPESAADMINISTRATIVAP: TFMTBCDField;
    cdsdetailVLDESPESAFRETEP: TFMTBCDField;
    cdsdetailVLDESPESAFRETE: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIALP: TFMTBCDField;
    cdsdetailVLDESPESACOMERCIAL: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEMP: TFMTBCDField;
    cdsdetailVLDESPESAEMBALAGEM: TFMTBCDField;
    cdsdetailVLDESPESASEGUROP: TFMTBCDField;
    cdsdetailVLDESPESASEGURO: TFMTBCDField;
    cdsdetailVLLUCROIRCSP: TFMTBCDField;
    cdsdetailVLLUCROIRCS: TFMTBCDField;
    cdsdetailPRDESPESAADMINISTRATIVA: TFloatField;
    cdsdetailPRDESPESAFRETE: TFloatField;
    cdsdetailPRDESPESACOMERCIAL: TFloatField;
    cdsdetailPRDESPESAEMBALAGEM: TFloatField;
    cdsdetailPRDESPESASEGURO: TFloatField;
    cdsdetailVLIRCSLLP: TFMTBCDField;
    cdsdetailVLIRCSLL: TFMTBCDField;
    cdsdetailALSIMPLES: TFloatField;
    cdsdetailVLSIMPLESP: TFMTBCDField;
    cdsdetailVLSIMPLES: TFMTBCDField;
    cdsdetailVLRECURSOP: TFMTBCDField;
    cdsdetailVLRECURSO: TFMTBCDField;
    cdsdetailPRDESCONTO: TFMTBCDField;
    cdsdetailVLTOTALSDESCONTO: TFMTBCDField;
    cdsdetailNUSEQUENCIA: TIntegerField;
    cdsdetailDSPRODUTO: TStringField;
    cdsdetailCDSTITORCAMENTO: TIntegerField;
    cdsdetailBOCERTIFICADO: TStringField;
    cdsdetailBOINFTECNICA: TStringField;
    cdsdetailCDCONDPAGTO: TIntegerField;
    cdsdetailVLDESCONTOPRODUCAO: TFMTBCDField;
    cdsdetailNMFORMA: TStringField;
    cdsdetailCDFORMA: TIntegerField;
    cdsdetailNMPRODUTO: TStringField;
    cdsdetailCDALTERNATIVO: TStringField;
    cdsdetailNUCLFISCAL: TStringField;
    cdsdetailNMTPGRADEVALOR: TStringField;
    cdsdetailNMUNIDADE: TStringField;
    cdsdetailBOSERVICO: TStringField;
    cdsdetailsdsitorcamentocusto: TDataSetField;
    cdsdetailsdsitorcamentomaterial: TDataSetField;
    cdsdetailsdsitorcamentorecurso: TDataSetField;
    cxGridDBBandedTableView2Column1: TcxGridDBBandedColumn;
    sdsitorcamentomaterialDSFORMULA: TStringField;
    cdsitorcamentomaterialDSFORMULA: TStringField;
    procedure btnOkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
  private   { Private declarations }
    dsdesenho, cditorcamento: string;
  public    { Public declarations }
  end;

function dlgdesenhoorcamento(cditorcamento, dsdesenho: string):string;

var
  frmdlgdesenhoorcamento: Tfrmdlgdesenhoorcamento;

implementation

uses uMain, uDtmMain;

{$R *.DFM}

function dlgdesenhoorcamento(cditorcamento, dsdesenho: string):string;
begin
  frmdlgdesenhoorcamento := Tfrmdlgdesenhoorcamento.Create(application);
  try
    frmdlgdesenhoorcamento.cditorcamento := cditorcamento;
    frmdlgdesenhoorcamento.dsdesenho     := dsdesenho;
    frmdlgdesenhoorcamento.caption       := frmdlgdesenhoorcamento.caption + ' '+dsdesenho;
    with frmdlgdesenhoorcamento do
    begin
      showmodal;
      if ModalResult = mrok then
      begin
        result := cdsdetailCDITORCAMENTO.AsString;
      end;
    end;
  finally
    freeandnil(frmdlgdesenhoorcamento);
  end;
end;

procedure Tfrmdlgdesenhoorcamento.btnOkClick(Sender: TObject);
begin
  modalresult := mrok;
end;

procedure Tfrmdlgdesenhoorcamento.FormShow(Sender: TObject);
begin
  sdsdetail.Parambyname(_cdempresa).ASlargeInt     := empresa.cdempresa;
  sdsdetail.Parambyname(_dsdesenho).AsString     := dsdesenho;
  sdsdetail.Parambyname(_cditorcamento).AsString := cditorcamento;
  cdsdetail.Open;
end;

procedure Tfrmdlgdesenhoorcamento.FormCreate(Sender: TObject);
begin
  TcxLookupComboBoxProperties(tbvrecursoCDTPEQUIPAMENTO.Properties).ListSource := abrir_tabela(_tpequipamento);
end;

procedure Tfrmdlgdesenhoorcamento.ExportarGradeExcel(Sender: TObject; var Key: Word; Shift: TShiftState);
begin
  ExportarExcel(Key, sender);
end;

end.