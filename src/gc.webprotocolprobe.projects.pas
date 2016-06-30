unit GC.WebProtocolProbe.Projects;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
{ TWPPNodeTypes }
  TWPPNodeTypes = (ntProject);

{ Forward }
  TWPPProjectO = class;
{ TWPPProject }
  PWPPPRojectR = ^TWPPProjectR;
  TWPPProjectR = record
    Name: String;
    NodeType: TWPPNodeTypes;
  end;

{ TWPPProjectO }
  TWPPProjectO = class
  private
    FName: String;
    FFileName: String;
  protected
  public
  end;

implementation

end.

