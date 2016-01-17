program WebProtocolProbe;

{$mode objfpc}{$H+}

uses
  {$IFDEF UNIX}{$IFDEF UseCThreads}
  cthreads,
  {$ENDIF}{$ENDIF}
  Interfaces, // this includes the LCL widgetset
  Forms, GC.WebProtocolProbe.Forms.Main,
  GC.WebProtocolProbe.DataModules.dmCommom, virtualtreeview_package
  { you can add units after this };

{$R *.res}

begin
  RequireDerivedFormResource := True;
  Application.Initialize;
  Application.CreateForm(TdmCommom, dmCommom);
  Application.CreateForm(TfrmMain, frmMain);
  Application.Run;
end.

