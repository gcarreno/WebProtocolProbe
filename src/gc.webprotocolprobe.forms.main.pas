unit GC.WebProtocolProbe.Forms.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ActnList, StdActns, ExtCtrls, VirtualTrees,
  GC.WebProtocolProbe.Projects;

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
    procedure vstMainProjectFreeNode(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vstMainProjectGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vstMainProjectGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: String);
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
  GC.WebProtocolProbe.DataModules.dmCommon;

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmMain.vstMainProjectFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  //
end;

procedure TfrmMain.vstMainProjectGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize:= SizeOf(TWPPProject);
end;

procedure TfrmMain.vstMainProjectGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: String);
var
  project: PWPPPRoject;
begin
  project:= Sender.GetNodeData(Node);
  if Assigned(project) then
  begin
    case Column of
      0: CellText := project^.Name;
    end;
  end;
end;

end.

