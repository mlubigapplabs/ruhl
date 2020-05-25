tableextension 50153 TableExtSalesReceivablesSetup extends "Sales & Receivables Setup"
{
    fields
    {
        field(50100; "Factory Dimension Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = dimension;
            CaptionML = DEU = 'Werksverwaltung Dimension';
        }
    }
}