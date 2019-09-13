page 50201 "Radio Show Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Radio Show";

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("No."; "No.")
                {
                    ApplicationArea = Basic;
                }
                field("Radio Show Type"; "Radio Show Type")
                {
                    ApplicationArea = Basic;
                }
                field("Run Time"; "Run Time")
                {
                    ApplicationArea = Basic;
                }
                field("Host Code"; "Host Code")
                {
                    ApplicationArea = Basic;
                }
                field("Host Name"; "Host Name")
                {
                    ApplicationArea = Basic;
                }
                field("Average Listeners"; "Average Listeners")
                {
                    ApplicationArea = Basic;
                }
                field("Audience Share"; "Audience Share")
                {
                    ApplicationArea = Basic;
                }
                field("Advertising Revenue"; "Advertising Revenue")
                {
                    ApplicationArea = Basic;
                }
                field("Royalty Cost"; "Royalty Cost")
                {
                    ApplicationArea = Basic;
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}