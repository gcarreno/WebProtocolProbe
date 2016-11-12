unit GC.WebProtocolProbe.Forms.NewProject;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls, Codebot.Controls.Banner;

{ TfrmNewProject }

type
  TfrmNewProject = class(TForm)
    banNewProject: TBanner;
    btnOk: TButton;
    btnCancel: TButton;
    edtProjectName: TEdit;
    lblProjectName: TLabel;
    lblProjectDescription: TLabel;
    memProjectDescription: TMemo;
    panBottomButtons: TPanel;
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  frmNewProject: TfrmNewProject;

implementation

{$R *.lfm}

end.

