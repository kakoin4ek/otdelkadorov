unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, mysql56conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, DBGrids, DbCtrls, StdCtrls, ExtCtrls, Variants;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    DataSource1: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    Image1: TImage;
    Label1: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MySQL56Connection1: TMySQL56Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
      var Editor: TWinControl);
    procedure DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.DBNavigator1Click(Sender: TObject; Button: TDBNavButtonType);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
  SQLQuery1.Insert;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    SQLQuery1.ApplyUpdates;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  SQLQuery1.Edit;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  SQLQuery1.Delete;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  SQLQuery1.Active:=false;
  SQLQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('SELECT * FROM `Отдел кадров Магнит` WHERE `Фамилия` LIKE "'+Edit1.Text+'%"');
  SQLQuery1.Active:=true;
  SQLQuery1.Open;
end;

procedure TForm1.DBGrid1SelectEditor(Sender: TObject; Column: TColumn;
  var Editor: TWinControl);
var s: string;
begin
  s := VarToStr(DBGrid1.Columns.Items[12].Field.Value);
  if s <> '' then
     Image1.Picture.LoadFromFile('image\' + s)
  else
      Image1.Picture.Clear;
end;

end.

