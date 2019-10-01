page 50206 "Radio Show Entries"
{
    
    PageType = List;
    SourceTable = "Radio Show Entry";
    Caption = 'Radio Show Entries';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("ACSAP ID"; "ACSAP ID")
                {
                    ApplicationArea = All;
                }
                field("Data Format"; "Data Format")
                {
                    ApplicationArea = All;
                }
                field("Entry No."; "Entry No.")
                {
                    ApplicationArea = All;
                }
                field("Fee Amount"; "Fee Amount")
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Publisher Code"; "Publisher Code")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field(Date; Date)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
                field(Time; Time)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
