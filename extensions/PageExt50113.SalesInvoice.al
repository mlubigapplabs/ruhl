pageextension 50113 PageExtSalesInvoice extends "Sales Invoice"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field("Factory Code"; "Factory Code")
            {
                ApplicationArea = All;
            }
        }
    }

}