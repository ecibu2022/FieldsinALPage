page 50110 "Fields in AL Programming"
{
    PageType = Card;
    ApplicationArea = Basic, Suite;
    UsageCategory = Administration;
    Caption='Fields in AL Programming';
    
    layout
    {
        area(Content)
        {
            group(Select)
            {
                Caption='Select or Options';
                field(SelectDate; MyDate)
                {
                    ApplicationArea = All;
                    Caption='Work Date';
                    ToolTip='This is date';
                    // Makes this field to be mandatory
                    ShowMandatory=true;
                }

                 field(SelectGender; Gender)
                {
                    ApplicationArea = All;
                    Caption='Gender';
                    ToolTip='This is a field for Gender';
                    
                }

                field(EnumValues; CallingEnum)
                {
                   ApplicationArea=All;
                   Caption='Enum Values';
                   ToolTip='This is a value from an enum';
                }

            }

            group(ToggleButton)
            {
                Caption='Toggle Button';
                field(ToggleBtn; ToggleBton)
                {
                ApplicationArea=All;
                Caption='Toggle Button';
                ToolTip='This is a Toggle Button';
                }
                
            }

             group(AssistEditButton)
            {
                Caption='AssistEdit Button';
                field(AssistEdit; AssistBtn)
                {
                ApplicationArea=All;
                Caption='AssistEdit Button';
                ToolTip='This is a AssistEdit Button';
                // Makes this Field to have AssistEdit Button in the right
                AssistEdit=true;
                }
                
            }

               group(NumFields)
            {
                Caption='Number & Code Fields';
                field(NumFi; Age)
                {
                ApplicationArea=All;
                Caption='Age';
                ToolTip='This is a num field';
                }

                 field(Amount; Amt)
                {
                ApplicationArea=All;
                Caption='Amount';
                ToolTip='This is a decimal field';
                Style=Strong;
                }

                 field(MyCode; CodeField)
                {
                ApplicationArea=All;
                Caption='Code Field';
                ToolTip='This is a code field';
                }

                 field(DisabledField; MyDisabledField)
                {
                ApplicationArea=All;
                Caption='Disabled Field';
                ToolTip='This is a disabled field';
                // Disabling this field
                Editable=false;
                }
                
            }

                field(Comments; Comments)
                {
                    ApplicationArea = All;
                    MultiLine = true;
            }

            part(MyItemLines; "ListPart Page")
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
        MyDate: Date;
        Gender: Option Male, Female, Others;
        CallingEnum: Enum "Status Enum";
        ToggleBton: Boolean;
        AssistBtn: Text;
        Amt: Decimal;
        Age: Integer;
        CodeField: Code[50];
        MyDisabledField: Text;
        Map, Comments: Text;
        }


enum 50111 "Status Enum"
{
    Extensible = true;
    
    value(0; YES)
    {
    }
    value(1; NO)
    {
    }
}


page 50132 "ListPart Page"
{
    PageType = ListPart;
    // ListPart is the like the lines in the tem when making sales order
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "My Item";
    
    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(No; Rec."Item No.")
                {
                    ApplicationArea = All;
                    
                }
                field("Description"; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Unit Price";Rec."Unit Price")
                {

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
                
                trigger OnAction();
                begin
                    
                end;
            }
        }
    }
}