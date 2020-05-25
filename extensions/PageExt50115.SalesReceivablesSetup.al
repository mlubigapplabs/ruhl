pageextension 50115 PageExtSalesReceivablesSetup extends "Sales & Receivables Setup"
{
    layout
    {
        addlast(content)
        {
            field("Factory Dimension Code"; "Factory Dimension Code")
            {
                ApplicationArea = All;
            }
        }
    }
}