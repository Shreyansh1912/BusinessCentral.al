/*
Task 2-
1.  Create new file EmployePayment.Table.al
 2. Use a snippet ttable to create a new table. Add table number and table name "Employee Payment Header"
 3. Create a new field "No." - use type Code[20]. Remember about properties. This field will be the primary key.
 4. Create a new field "Employee No." - use type Code[20]. Remember about properties and add TableRelation to Employee
 5. Create a new field "Starting Date" - use type Date
 6.  Create a new field "Ending Date" - use type Date
7. Create new file EmployeePaymentStatus.Enum.al
  *   Use a snippet tenum to create a new enum. Add number and name  "emplyee Bonus Status"
* Create value 0 with Caption "Open".
 *  Create value 10 with Caption "Released"
 
·       Open file EmployeePaymentHeader.Table.al
 Add new field "Status" with Type Enum and choose enum "Employee  Payment Status"
*/
table 50101 "Employee Payment Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Employee Name"; Text[30])
        {
            Caption = 'Employee Name';
        }
        field(3; "Employee No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Employee;
            trigger OnValidate()
            var
                employee_Rec: Record Employee;
            begin
                employee_Rec.SetRange("No.", rec."Employee No");
                if employee_Rec.FindFirst() then
                    Rec."Employee Name" := employee_Rec."First Name"
                else
                    Error('Employee Does not exists');
            end;

        }
        field(4; "Starting Date"; Date)
        {
            Caption = 'Starting Date';


        }
        field(5; "Ending Date"; Date)
        {
            Caption = 'Ending Date';

        }
        field(6; "Status"; Enum "Employee Status")
        {
            Caption = 'Status';

        }

        field(7; "No.series"; Code[20])
        {
            Caption = 'No.series';

        }

    }

    keys
    {
        key(PK; "No.", "No.series")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    var
        Noseries_cu: Codeunit NoSeriesManagement;
        EmployeSetup_rec: Record "Employee Setup";
    begin
        if "No." = '' then begin

            EmployeSetup_rec.Get();
            Noseries_cu.InitSeries(EmployeSetup_rec."Employee Nos.", xRec."No.series", Today, "No.", "No.series");
        end;

    end;


}
