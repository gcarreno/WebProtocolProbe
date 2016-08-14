unit GC.WebProtocolProbe.Projects;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
{ TWPPProject }
  TWPPProject = class(TOject)
  private
    FName: String;
    FDescription: String;
    FFileName: String;
  protected
  public
    property Name: String read FName write FName;
    property Description: String read FDescription write FDescription;
    property FileName: String read FFileName write FFileName;
  end;

{ TWPPProjects }
  TWPPProjects = class(TObject)
  private
  protected
  public
  end;

implementation

end.

