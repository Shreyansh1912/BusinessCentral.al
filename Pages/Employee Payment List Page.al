page 50101 "Employee Payment List"
{
    PageType = List;
    SourceTable = "Employee Payment Header";
    ApplicationArea = All;
    UsageCategory = Lists;
    CardPageId = "Employee Payment Card";
    InsertAllowed = false;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Employee No"; Rec."Employee No")
                {
                    ApplicationArea = All;
                }
                field("Starting Date"; Rec."Starting Date")
                {
                    ApplicationArea = All;

                }
                field("Ending Date"; Rec."Ending Date")
                {
                    ApplicationArea = All;
                }


            }
        }
    }

}
