unit GC.WebProtocolProbe.Projects;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils;

type
{ TWPPProject }
  TWPPProject = class(TCollectionItem)
  private
    FName: String;
    FDescription: String;
    FFileName: String;
  protected
  public
    constructor Create(ACollection: TCollection); override;
  published
    property Name: String read FName write FName;
    property Description: String read FDescription write FDescription;
    property FileName: String read FFileName write FFileName;
  end;

{ TWPPProjects }
  TWPPProjects = class(TCollection)
  private
    function GetItems(Index: Integer): TWPPProject;
    procedure SetItems(Index: Integer; Value: TWPPProject);
  protected
  public
    constructor Create;

    function Add: TWPPProject;

    property Items[Index: Integer]: TWPPProject read GetItems write SetItems; default;
  end;

implementation

{ TWPPProject }

constructor TWPPProject.Create(ACollection: TCollection);
begin
	if Assigned(ACollection) then
		inherited Create(ACollection);
end;

{ TWPPProjects }

function TWPPProjects.GetItems(Index: Integer): TWPPProject;
begin
  Result:= inherited Items[Index] as TWPPProject;
end;

procedure TWPPProjects.SetItems(Index: Integer; Value: TWPPProject);
begin
  Items[Index].Assign(Value);
end;

constructor TWPPProjects.Create;
begin
   inherited Create(TWPPProject);
end;

function TWPPProjects.Add: TWPPProject;
begin
  Result:= inherited Add as TWPPProject;
end;

end.

