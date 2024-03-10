report 50138 MyReport
{
    ApplicationArea = All;
    Caption = 'MyReport';
    UsageCategory = ReportsAndAnalysis;
    DefaultLayout=RDLC;
    RDLCLayout='MyReportLayout.rdl';

    dataset
    {
        dataitem(Customer; Customer)
        {
            // Header
            column(Company; CompanyInfo.Name)
            {
                
            }

            column(Logo; CompanyInfo.Picture)
            {
                
            }

            // Body
            column(No; "No.")
            {
            }
            column(Name; Name)
            {
            }
            column(Balance; Balance)
            {
            }
            column(BalanceDue; "Balance Due")
            {
            }
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }


    

trigger OnInitReport()
begin
    CompanyInfo.Get;
    CompanyInfo.CalcFields(Picture);
end;

    var
        CompanyInfo: Record "Company Information";
}
