unit GC.WebProtocolProbe.Forms.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ActnList, StdActns, ExtCtrls, StdCtrls, VirtualTrees;

{ TfrmMain }

type
  TfrmMain = class(TForm)
    actHelpAbout: TAction;
    actEditUndo: TAction;
    actEditRedo: TAction;
    actEditCut: TAction;
    actEditCopy: TAction;
    actEditPaste: TAction;
    Action1: TAction;
    actProjectClose: TAction;
    actProjectSave: TAction;
    actProjectOpen: TAction;
    actProjectNew: TAction;
    actMain: TActionList;
    actMainFileExit: TFileExit;
    actProjectSaveAs: TAction;
    mnuProjectSep2: TMenuItem;
    mnuProjectSep1: TMenuItem;
    mnuProjectSaveAs: TMenuItem;
    mnuProjectClose: TMenuItem;
    mnuEditPaste: TMenuItem;
    mnuEditCopy: TMenuItem;
    mnuEditCut: TMenuItem;
    mnuEditSep1: TMenuItem;
    mnuEditRedo: TMenuItem;
    mnuEditUndo: TMenuItem;
    mnuProjectSave: TMenuItem;
    mnuHelpAbout: TMenuItem;
    mnuProjectOpenRecent: TMenuItem;
    mnuProjectOpen: TMenuItem;
    mnuProjectNew: TMenuItem;
    mnuMainHelp: TMenuItem;
    mnuMainEdit: TMenuItem;
    mnuMainView: TMenuItem;
    mnuMainProject: TMenuItem;
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

{ TWPPNodeTypes }
  TWPPNodeTypes = (ntProject);

{ TWPPNode }
  PWPPNode = ^TWPPNode;
  TWPPNode = record
    Name: String;
    NodeType: TWPPNodeTypes;
    Item: TObject;
  end;


var
  frmMain: TfrmMain;

implementation

{$R *.lfm}

uses
  GC.WebProtocolProbe.DataModules.dmCommon,
  GC.WebProtocolProbe.Projects;

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
  NodeDataSize:= SizeOf(TWPPNode);
end;

procedure TfrmMain.vstMainProjectGetText(Sender: TBaseVirtualTree;
  Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
  var CellText: String);
var
  project: PWPPNode;
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

