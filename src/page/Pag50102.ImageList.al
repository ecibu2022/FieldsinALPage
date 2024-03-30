page 55102 "Image List"
{
    ApplicationArea = All;
    Caption = 'Image List';
    PageType = List;
    SourceTable = Images;
    UsageCategory = Lists;
    DeleteAllowed=false;
    ModifyAllowed=false;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
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
