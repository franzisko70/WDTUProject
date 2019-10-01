page 50205 "Playlist Item Rates List"
{
    
    PageType = List;
    SourceTable = "Playlist Item Rate";
    Caption = 'Playlist Item Rates List';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Source No."; "Source No.")
                {
                    ApplicationArea = All;
                }
                field("Source Type"; "Source Type")
                {
                    ApplicationArea = All;
                }
                field("Item No."; "Item No.")
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
                field("Rate Amount"; "Rate Amount")
                {
                    ApplicationArea = All;
                }
                field("Publisher Code"; "Publisher Code")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
