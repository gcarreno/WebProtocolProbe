unit GC.WebProtocolProbe.Forms.Main;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, Menus,
  ActnList, StdActns, ExtCtrls, StdCtrls, VirtualTrees,
  GC.WebProtocolProbe.Projects;

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
    vstMainProjects: TVirtualStringTree;
    procedure actHelpAboutExecute(Sender: TObject);
    procedure actProjectCloseExecute(Sender: TObject);
    procedure actProjectNewExecute(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
    procedure vstMainProjectsFreeNode(Sender: TBaseVirtualTree;
      Node: PVirtualNode);
    procedure vstMainProjectsGetNodeDataSize(Sender: TBaseVirtualTree;
      var NodeDataSize: Integer);
    procedure vstMainProjectsGetText(Sender: TBaseVirtualTree;
      Node: PVirtualNode; Column: TColumnIndex; TextType: TVSTTextType;
      var CellText: String);
  private
    { private declarations }
    FProjects: TWPPProjects;
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
  GC.WebProtocolProbe.DataModules.dmCommon;

{ TfrmMain }

procedure TfrmMain.FormCreate(Sender: TObject);
begin
  // Add Projects Create
  FProjects := TWPPProjects.Create;;
end;

procedure TfrmMain.actHelpAboutExecute(Sender: TObject);
begin
  ShowMessage('About...');
end;

procedure TfrmMain.actProjectCloseExecute(Sender: TObject);
var
  PVNode: PVirtualNode;
  ProjectNode: PWPPNode;
  Project: TWPPProject;
begin
  if vstMainProjects.SelectedCount > 0 then
  begin
    PVNode := vstMainProjects.GetNextSelected(vstMainProjects.RootNode);
    if Assigned(PVNode) then
    begin
      ProjectNode := vstMainProjects.GetNodeData(PVNode);
      if Assigned(ProjectNode) then
      begin
	      Project := ProjectNode^.Item as TWPPProject;
        if Assigned(Project) then
        begin
          FProjects.Delete(Project.Index);
          ProjectNode^.Item := nil;
          vstMainProjects.DeleteNode(PVNode);
        end;
      end;
    end;
  end;
end;

procedure TfrmMain.actProjectNewExecute(Sender: TObject);
var
  PVNode: PVirtualNode;
  ProjectNode: PWPPNode;
  Project: TWPPProject;
begin
  Project := FProjects.Add;
  Project.Name := 'Project ' + IntToStr(FProjects.Count);
  PVNode := vstMainProjects.AddChild(vstMainProjects.RootNode);
  ProjectNode := vstMainProjects.GetNodeData(PVNode);
  ProjectNode^.Name := Project.Name;
  ProjectNode^.Item := Project;
end;

procedure TfrmMain.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  // Add Projects Free
  FProjects.Free;
end;

procedure TfrmMain.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  CanClose := True;
end;

procedure TfrmMain.vstMainProjectsFreeNode(Sender: TBaseVirtualTree;
  Node: PVirtualNode);
begin
  //
end;

procedure TfrmMain.vstMainProjectsGetNodeDataSize(Sender: TBaseVirtualTree;
  var NodeDataSize: Integer);
begin
  NodeDataSize := SizeOf(TWPPNode);
end;

procedure TfrmMain.vstMainProjectsGetText(Sender: TBaseVirtualTree;
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

