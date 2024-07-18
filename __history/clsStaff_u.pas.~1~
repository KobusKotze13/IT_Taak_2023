unit clsStaff_u;

interface

type
  TStaff = class(TObject)
  private
    Staff_ID: String;
    Staff_Name: string;
    Staff_Password: String;
    Staff_Number: String;
    Staff_Email: String;
    Staff_Address: String;
    Staff_Wage: Real;
    Staff_Is_Manager: Boolean;

  public
    // Setters to assign values to member variables

    // Set the Staff's ID
    procedure Set_StaffID(ID: String);

    // Set the Staff's Name
    procedure Set_Name(Name: String);

    // Set the Staff's Password
    procedure Set_Password(Password: String);

    // Set the Staff's Phone Number
    procedure Set_Number(Number: String);

    // Set the Staff's Email Address
    procedure Set_Email(Email: String);

    // Set the Staff's Address
    procedure Set_Address(Address: String);

    // Set the Staff's Wage
    procedure Set_Wage(Wage: Real);

    // Set the Staff's Manager Status
    procedure Set_ManagerStatus(IsManager: Boolean);

    // Getters to retrieve values of member variables

    // Get the Staff's ID
    function Get_StaffID: String;

    // Get the Staff's Name
    function Get_Name: String;

    // Get the Staff's Password
    function Get_Password: String;

    // Get the Staff's Phone Number
    function Get_Number: String;

    // Get the Staff's Email Address
    function Get_Email: String;

    // Get the Staff's Address
    function Get_Address: String;

    // Get the Staff's Wage
    function Get_Wage: Real;

    // Get the Staff's Manager Status
    function Get_ManagerStatus: Boolean;
  end;

implementation

{ TStaff }

// Setters

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

// Getters

function TStaff.Get_Address: String;
begin
  Result := Staff_Address;
end;

function TStaff.Get_Email: String;
begin
  Result := Staff_Email;
end;

function TStaff.Get_ManagerStatus: Boolean;
begin
  Result := Staff_Is_Manager;
end;

function TStaff.Get_Name: String;
begin
  Result := Staff_Name;
end;

function TStaff.Get_Number: String;
begin
  Result := Staff_Number;
end;

function TStaff.Get_Password: String;
begin
  Result := Staff_Password;
end;

function TStaff.Get_StaffID: String;
begin
  Result := Staff_ID;
end;

function TStaff.Get_Wage: Real;
begin
  Result := Staff_Wage;
end;

