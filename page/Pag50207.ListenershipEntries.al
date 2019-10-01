page 50207 "Listenership Entries"
{

    PageType = List;
    SourceTable = "Listenership Entry";
    Caption = 'Listenership Entries';
    ApplicationArea = All;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Ratings Source Entry No."; "Ratings Source Entry No.")
                {
                    ApplicationArea = All;
                }
                field(Date; Date)
                {
                    ApplicationArea = All;
                }
                field("Start Time"; "Start Time")
                {
                    ApplicationArea = All;
                }
                field("End Time"; "End Time")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field("Listener Count"; "Listener Count")
                {
                    ApplicationArea = All;
                }
                field("Audience Share"; "Audience Share")
                {
                    ApplicationArea = All;
                }
                field("Age Demographic"; "Age Demographic")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
