unit WebProtocolProbe.Forms.NewProject;

{$mode objfpc}{$H+}

interface

uses
  Classes
, SysUtils
, FileUtil
, Forms
, Controls
, Graphics
, Dialogs
, ExtCtrls
, StdCtrls
;

{ TfrmNewProject }

type
  TfrmNewProject = class(TForm)
    btnOk: TButton;
    btnCancel: TButton;
    edtProjectName: TEdit;
    lblProjectName: TLabel;
    lblProjectDescription: TLabel;
    memProjectDescription: TMemo;
    panBottomButtons: TPanel;
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormCloseQuery(Sender: TObject; var CanClose: boolean);
    procedure FormCreate(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmNewProject: TfrmNewProject;

implementation

{$R *.lfm}

{ TfrmNewProject }

procedure TfrmNewProject.FormCreate(Sender: TObject);
begin
  //
end;

procedure TfrmNewProject.FormCloseQuery(Sender: TObject; var CanClose: boolean);
begin
  //CanClose := True;
end;

procedure TfrmNewProject.FormClose(Sender: TObject;
  var CloseAction: TCloseAction);
begin
  CloseAction := caFree;
end;

end.

