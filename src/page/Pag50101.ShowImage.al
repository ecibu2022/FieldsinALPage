page 55101 "Show Image"
{
    ApplicationArea = All;
    Caption = 'Show Image';
    PageType = Card;
    SourceTable = Images;
    UsageCategory=Administration;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General';
                
                field(ID; Rec.ID)
                {
                    ToolTip = 'Specifies the value of the ID field.';
                }
                field(Name; Rec.Name)
                {
                    ToolTip = 'Specifies the value of the Name field.';
                }
                field(Photo; Rec.Photo)
                {
                    ToolTip = 'Specifies the value of the Photo field.';
                }
            }
        }
    }
}
