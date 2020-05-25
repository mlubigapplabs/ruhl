table 50113 "Item Property 4"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Item Property 1"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warengruppe', ENU = 'Item Property 1';
            TableRelation = "Item Property 1";
            ValidateTableRelation = true;
        }
        field(2; "Code"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Stahlgüte', ENU = 'Code';

        }
        field(3; "Name"; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Name', ENU = 'Name';
        }
    }

    keys
    {
        key(PK; "Item Property 1", "Code")
        {
            Clustered = true;
        }
    }

}