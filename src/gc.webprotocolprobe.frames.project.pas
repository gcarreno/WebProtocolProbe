unit GC.WebProtocolProbe.Frames.Project;

{$mode objfpc}{$H+}

interface

uses
  Classes
, SysUtils
, FileUtil
, Forms
, Controls
, ExtCtrls
, StdCtrls
, RXCtrls
;

{ TfrmProject }

type
  TfrmProject = class(TFrame)
    edtProjectName: TEdit;
    lblProjectLocation: TLabel;
    lblProjectName: TLabel;
    lblProjectDescription: TLabel;
    memProjectDescription: TMemo;
    panProjectHeader: TPanel;
    lblProjectLocationFilename: TRxLabel;
  private
    { private declarations }
  public
    { public declarations }
  end;

implementation

{$R *.lfm}

end.

