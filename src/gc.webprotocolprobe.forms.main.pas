unit GC.WebProtocolProbe.Forms.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs;

{ TfrmMain }

type
  TfrmMain = class(TForm)
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

uses
  GC.WebProtocolProbe.DataModules.dmCommom;

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  Caption:= Format(R_Forms_frmMain_Title, ['0.1.0.1']);
end;

end.

