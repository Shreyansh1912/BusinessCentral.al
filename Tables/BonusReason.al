/* 
Task 3- Create new table “Bonus Reason”
·Fields are-->
1.  Sl no: Primary key -à Integer
2.  Description à Text
3.  Bonus percentage -> Decimal
4.  Active->Boolean
*/

table 50103 "Bonus Reason"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Sl no"; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Description"; Text[20])
        {
            Caption = 'Description';

        }
        field(3; "Bonus Percentage"; Decimal)
        {
            Caption = 'Bonus Percentage';

        }
        field(4; "Active"; Boolean)
        {
            Caption = 'Active';

        }
    }

    keys
    {
        key(PK; "Sl no")
        {
            Clustered = true;
        }
    }


}
