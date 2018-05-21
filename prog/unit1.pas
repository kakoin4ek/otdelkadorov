unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, mysql51conn, sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, DBGrids, DbCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    MySQL51Connection1: TMySQL51Connection;
    SQLQuery1: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

end.

