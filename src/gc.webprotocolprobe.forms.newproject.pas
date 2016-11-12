unit GC.WebProtocolProbe.Forms.NewProject;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, ExtCtrls,
  StdCtrls;

{ TfrmNewProject }

type
  TfrmNewProject = class(TForm)
    edtProjectName: TEdit;
    lblProjectName: TLabel;
    lblProjectDescription: TLabel;
    memProjectDescription: TMemo;
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

