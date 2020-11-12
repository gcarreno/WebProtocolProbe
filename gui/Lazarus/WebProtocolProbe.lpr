program WebProtocolProbe;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, virtualtreeview_package, rxnew
, WebProtocolProbe.Forms.Main
, WebProtocolProbe.DataModules.dmCommon
, WebProtocolProbe.Forms.NewProject
, WebProtocolProbe.Frames.Project
, WebProtocolProbe.Projects
;

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmCommon, dmCommon);
  Application.Run;
end.

