page 50100 "Emplyoee Setup Page"
{
    PageType = Card;
    // ApplicationArea = All;
    //UsageCategory = Administration;
    SourceTable = "Employee Setup";

    layout
    {
        area(Content)
        {
            group(Numbering)
            {
                field("Employee Nos."; Rec."Employee Nos.")
                {
                    ApplicationArea = All;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}
