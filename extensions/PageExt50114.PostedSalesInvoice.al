pageextension 50114 PageExtPostedSalesInvoice extends "Posted Sales Invoice"
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