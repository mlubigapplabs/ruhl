tableextension 50152 TableExtSalesInvoiceHeader extends "Sales Invoice Header"
{
    fields
    {
        field(50100; "Factory Code"; code[10])
        {
            CaptionML = DEU = 'Werk';
            DataClassification = ToBeClassified;
        }
    }
}