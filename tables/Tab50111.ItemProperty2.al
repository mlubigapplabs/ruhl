table 50111 "Item Property 2"
{
    DataClassification = ToBeClassified;
    CaptionML = DEU = 'SubWarenGruppe', ENU = 'Item Property 2';
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
        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Name', ENU = 'Name';
        }
    }

    keys
    {
        key(PK; "Item Property 1", "Item Property 2")
        {
            Clustered = true;
        }
    }

}