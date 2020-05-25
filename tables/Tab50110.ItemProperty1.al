table 50110 "Item Property 1"
{
    DataClassification = ToBeClassified;
    CaptionML = DEU = 'Warengruppe', ENU = 'Item Property 1';
    fields
    {
        field(1; "Item Property 1"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warengruppe', ENU = 'Item Property 1';
        }
        field(2; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Name', ENU = 'Name';
        }
    }

    keys
    {
        key(PK; "Item Property 1")
        {
            Clustered = true;
        }
    }

}