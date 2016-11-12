program WebProtocolProbe;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, virtualtreeview_package,
  GC.WebProtocolProbe.Forms.Main,
  GC.WebProtocolProbe.DataModules.dmCommon, GC.WebProtocolProbe.Projects,
GC.WebProtocolProbe.Forms.NewProject
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TfrmMain, frmMain);
  Application.CreateForm(TdmCommon, dmCommon);
  Application.CreateForm(TfrmNewProject, frmNewProject);
  Application.Run;
end.

