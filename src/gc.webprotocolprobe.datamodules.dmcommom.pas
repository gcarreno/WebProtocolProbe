unit GC.WebProtocolProbe.DataModules.dmCommom;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil;

{ Resources }
resourcestring
  R_Forms_frmMain_Title = 'Web Protocol Probe v%s';

{ TdmCommom }

type
  TdmCommom = class(TDataModule)
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  dmCommom: TdmCommom;

implementation

{$R *.lfm}

end.

