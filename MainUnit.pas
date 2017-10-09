unit MainUnit;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  Data.DB, FireDAC.Comp.Client, Data.Win.ADODB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.Menus, IniFiles;

type
  TForm1 = class(TForm)
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button5: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    OpenDialog1: TOpenDialog;
    N7: TMenuItem;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Edit5: TEdit;
    Label6: TLabel;
    Edit6: TEdit;
    N8: TMenuItem;
    Label7: TLabel;
    Edit7: TEdit;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure N5Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Edit1Click(Sender: TObject);
    procedure Edit2Click(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure N8Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  CompSelected: byte;
  socket, ozu, ozuc, dbPath: string;

implementation

{$R *.dfm}

uses AddDataToDb, RemoveDataFromDb, ViewDbData;

procedure TForm1.Button5Click(Sender: TObject);
begin
  socket := string.Empty;
  ozu := string.Empty;
  ozuc := '4000';
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
  case CompSelected of
    1:begin
      Edit1.Text := DBGrid1.Fields[0].Text;
      socket := DBGrid1.Fields[2].Text;
    end;
    2:begin
      Edit2.Text := DBGrid1.Fields[0].Text;
      ozu := DBGrid1.Fields[3].Text;
      ozuc := DBGrid1.Fields[4].Text;
      socket := DBGrid1.Fields[2].Text;
    end;
    3:begin
      Edit3.Text := Column.Field.AsString;
    end;
  end;
end;


procedure TForm1.Edit1Click(Sender: TObject);
begin
  CompSelected := 1;
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM "cpu Запрос" WHERE socket like :prm');
  ADOQuery1.Parameters.ParamByName('prm').Value := '%'+socket+'%';
  ADOQuery1.Active := true;
end;

procedure TForm1.Edit2Click(Sender: TObject);
begin
  CompSelected := 2;
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM "mat_plata Запрос" WHERE socket like :prm');
  ADOQuery1.Parameters.ParamByName('prm').Value := '%'+socket+'%';
  ADOQuery1.Active := true;
end;

procedure TForm1.Edit3Click(Sender: TObject);
begin
  CompSelected := 3;
  ADOQuery1.Active := false;
  ADOQuery1.SQL.Clear;
  ADOQuery1.SQL.Add('SELECT * FROM "ozu Запрос" WHERE (((tipy_ozu.tip) Like :prm1) AND ((chastota_ozu.chastota)<=:prm2))');
  ADOQuery1.Parameters.ParamByName('prm1').Value := '%'+ozu+'%';
  ADOQuery1.Parameters.ParamByName('prm2').Value := ozuc;
  ADOQuery1.Active := true;
end;

procedure TForm1.FormShow(Sender: TObject);
var iniFile: TIniFile;
begin
  Button5.Click;
  iniFile := TIniFile.Create('Settings.ini');
  dbPath := iniFile.ReadString('db', 'Name', 'ConfDb.accdb');
  ADOConnection1.Connected;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  AddDataToDb.Form3.ShowModal;
end;

procedure TForm1.N4Click(Sender: TObject);
begin
  RemoveDataFromDb.Form4.ShowModal;
end;

procedure TForm1.N5Click(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    dbPath := OpenDialog1.FileName;
    ADOConnection1.ConnectionString := 'Provider=MSDASQL.1;Password=111111;Persist Security Info=True;Data Source=MS Access Database;Initial Catalog=' + dbPath;
  end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  close;
end;

procedure TForm1.N8Click(Sender: TObject);
begin
  ViewDbData.Form2.ShowModal;
end;

end.
