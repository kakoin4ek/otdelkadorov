unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql57conn, mysql56conn, sqldb, db, FileUtil, Forms,
  Controls, Graphics, Dialogs, StdCtrls, DBGrids, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBMemo1: TDBMemo;
    DBNavigator1: TDBNavigator;
    Edit1: TEdit;
    MySQL56Connection1: TMySQL56Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    procedure Button1Click(Sender: TObject);
    procedure DataSource1DataChange(Sender: TObject; Field: TField);
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }


 procedure TForm1.Button1Click(Sender: TObject);
begin
  try
    MySQL56Connection1.DatabaseName:='otdel kadrov';
    MySQL56Connection1.Connected:=true;
  except
    ShowMessage(' Не могу подключиться к базе данных');
  exit;
  end;
  try
    SQLTransaction1.Active:=true;
  except
    ShowMessage(' Не могу создать транзакцию');
  exit;
  end;
  try
    SQLQuery1.Active:=false;
    SQLQuery1.SQL.Clear;
    SQLQuery1.ExecSQL;
    SQLQuery1.SQL.Clear;
    SQLQuery1.sql.add('SELECT * from  паспорт ' + Edit1.Text + ';');
    SQLQuery1.Open;
    SQLQuery1.Active:=true;
  except
    ShowMessage(' Ошибка при выполнении SQL запроса.');
  exit;
  end;
end;

procedure TForm1.DataSource1DataChange(Sender: TObject; Field: TField);
begin

end;


procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

end.

