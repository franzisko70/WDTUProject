page 50202 "Radio Show Type"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Radio Show Type";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Code)
                {
                    ApplicationArea = Basic;                   
                }
                field(Description; Description)
                {
                    ApplicationArea = Basic;                   
                }
            }
        }
    }
    
 }