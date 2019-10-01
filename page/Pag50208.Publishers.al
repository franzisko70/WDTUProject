page 50208 Publishers
{
    
    PageType = List;
    SourceTable = Publisher;
    Caption = 'Publishers';
    ApplicationArea = All;
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
