page 50134 "Lines Page"
{
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Administration;
    Caption='My Own Lines Page';
    DeleteAllowed=true;
    
    layout
    {
        area(Content)
        {
            // Including ListPart Page
           part("Lines Page"; "Lines")
           {
            
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




page 50133 "Lines"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = Customer;
    // Makes a user not to modify the lists
    ModifyAllowed=false;
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                 field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                    
                }

                field("Name"; Rec.Name)
                {
                    ApplicationArea = All;
                    
                }

                 field("Balance";Rec.Balance)
                {
                    ApplicationArea = All;
                    
                }
            }
        }
       
    }
    
    actions
    {
        area(Processing)
        {
            action(Manage)
            {
                Caption='Manage';
                ApplicationArea = All;
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}

