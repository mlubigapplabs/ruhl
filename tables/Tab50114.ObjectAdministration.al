table 50114 ObjectAdministration
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Object No."; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Object No.', DEU = 'Objekt Nummer';
            TableRelation = "Sales Header"."No." where("Document Type" = CONST("Blanket Order"));
        }
        field(2; "Construction Part No."; integer)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Construction Part No.', DEU = 'Bauteilnummer';
        }
        field(3; Name; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Name', DEU = 'Name';
        }
        field(4; "Name 2"; Text[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Name 2', DEU = 'Name 2';
        }
        field(5; "Ship-to Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Ship-to Code', DEU = 'Lieferadresse';
            TableRelation = "Ship-to Construction Part";
        }
    }

    keys
    {
        key(PK; "Object No.", "construction part No.")
        {
            Clustered = true;
        }
    }

}