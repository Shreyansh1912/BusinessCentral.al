/*Task 4-
 The Employee payment Line table will store information about granted bonus percent. It will be connected with the header by using the Document No. field. Users will be able to put bonuses either for all items or for one particular. If a user would choose a particular item, it will be possible to choose a number from the list.
 This table will have multiple fields in the primary key.
 1. Create new file EmployeePaymentLine.Table.al
 2. Use a snippet ttable to create a new table. Add table number and table name "Employee Payment Line"
 3. Create a new field "Document No." - use type Code[20]. Remember about properties and add TableRelation to "Employee Payment Header"
 5. Create a new field "Bonus Reason No." - use type Code[20] and add TableRelation to "Bonus Reason"  with Active set as TRUE.
 6. Create a new field "Bonus Perc." - use type Integer.  To be auto populated while selecting bonus reason
7. Add fields "Document No.", "Type" and to "bonus Reason No." to the primary Key
*/

table 50102 "Employee Payment Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No"; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Employee No"; Code[20])
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

        field(5; "Starting Date"; Date)
        {
            Caption = 'Starting Date';
        }
        field(6; "Ending Date"; Date)
        {
            Caption = 'Ending Date';
        }
        field(7; "Employee Name"; Code[20])
        {
            Caption = 'Employee Name';
        }


    }

    keys
    {
        key(PK; "No")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}
