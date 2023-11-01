unit clsStaff_u;

interface

type TStaff = class(TObject)

  Private
    Staff_ID : String;
    Staff_Name : string;
    Staff_Password : String;
    Staff_Number : String;
    Staff_Email : String;
    Staff_Address : String;
    Staff_Wage : Real;
    Staff_Is_Manager : Boolean;

  Public
    procedure Set_StaffID (ID :String);
    procedure Set_Name (Name : String);
    procedure Set_Password (Password : String);
    procedure Set_Number (Number : String);
    procedure Set_Email (Email : String);
    procedure Set_Address (Address : String);
    procedure Set_Wage (Wage : Real);
    procedure Set_ManagerStatus (IsManager : Boolean);

    function Get_StaffID : String;
    function Get_Name : String;
    function Get_Password : String;
    function Get_Number : String;
    function Get_Email : String;
    function Get_Address : String;
    function Get_Wage : Real;
    function Get_ManagerStatus : Boolean;



end;

implementation

{ TStaff }


{ TStaff }



function TStaff.Get_Address: String;
begin
result := Staff_Address;

end;

function TStaff.Get_Email: String;
begin
result := Staff_Email;
end;

function TStaff.Get_ManagerStatus: Boolean;
begin
result := Staff_Is_Manager;
end;

function TStaff.Get_Name: String;
begin
result := Staff_Name;
end;

function TStaff.Get_Number: String;
begin
result := Staff_Number;
end;

function TStaff.Get_Password: String;
begin
result := Staff_Password;
end;

function TStaff.Get_StaffID: String;
begin
result := Staff_ID;
end;

function TStaff.Get_Wage: Real;
begin
result := Staff_Wage;
end;

procedure TStaff.Set_Address(Address: String);
begin
Staff_Address := Address;
end;


procedure TStaff.Set_Email(Email: String);
begin
Staff_Email := Email;
end;

procedure TStaff.Set_ManagerStatus(IsManager: Boolean);
begin
Staff_Is_Manager := IsManager;
end;

procedure TStaff.Set_Name(Name: String);
begin
Staff_Name := Name;
end;

procedure TStaff.Set_Number(Number: String);
begin
Staff_Number := Number;
end;

procedure TStaff.Set_Password(Password: String);
begin
Staff_Password := Password;
end;

procedure TStaff.Set_StaffID(ID: String);
begin
Staff_ID := ID;
end;

procedure TStaff.Set_Wage(Wage: Real);
begin
Staff_Wage := Wage;
end;

end.
