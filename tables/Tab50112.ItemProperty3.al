table 50112 "Item Property 3"
{
    DataClassification = ToBeClassified;
    CaptionML = DEU = 'Warendetails', ENU = 'Item Property 3';
    fields
    {
        field(1; "Item Property 1"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warengruppe', ENU = 'Item Property 1';
            TableRelation = "Item Property 1";
            ValidateTableRelation = true;
        }
        field(2; "Item Property 2"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'SubWarenGruppe', ENU = 'Item Property 2';
            TableRelation = "Item Property 2";
            ValidateTableRelation = true;
        }
        field(3; "Item Property 3"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warendetails', ENU = 'Item Property 3';
        }
        field(4; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Name', ENU = 'Name';
        }
    }

    keys
    {
        key(PK; "Item Property 1", "Item Property 2", "Item Property 3")
        {
            Clustered = true;
        }
    }

}