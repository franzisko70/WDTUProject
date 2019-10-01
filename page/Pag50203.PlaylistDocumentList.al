page 50203 "Playlist Document List"
{
    
    PageType = List;
    SourceTable = "Playlist Header";
    Caption = 'Playlist Document List';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field("Radio Show No."; "Radio Show No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Broadcast Date"; "Broadcast Date")
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
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
