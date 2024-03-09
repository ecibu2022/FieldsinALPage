page 50110 "Fields in AL Programming"
{
    PageType = Card;
    ApplicationArea = Basic, Suite;
    UsageCategory = Administration;
    // SourceTable = TableName;
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