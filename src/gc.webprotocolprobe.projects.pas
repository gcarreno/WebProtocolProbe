unit GC.WebProtocolProbe.Projects;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
{ TWPPProject }
  PWPPPRoject = ^TWPPProject;
  TWPPProject = record
    Name: String;
    FileName: String;
  end;

implementation

end.

