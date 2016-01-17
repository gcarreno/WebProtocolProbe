unit GC.WebProtocolProbe.Forms.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ActnList, StdActns, ExtCtrls, VirtualTrees;

{ TfrmMain }

type
  TfrmMain = class(TForm)
    actMain: TActionList;
    actMainFileExit: TFileExit;
    mnuMainFileExit: TMenuItem;
    mnuMainFile: TMenuItem;
    mnuMain: TMainMenu;
    panMainContent: TPanel;
    panMainProject: TPanel;
    splMain1: TSplitter;
    vstMainProject: TVirtualStringTree;
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
//
end;

end.

