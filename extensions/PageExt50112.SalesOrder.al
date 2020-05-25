pageextension 50112 PageExtSalesOrder extends "Sales Order"
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