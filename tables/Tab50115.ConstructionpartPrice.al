table 50115 ConstructionPartPrice
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Object No."; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Object No.', DEU = 'Objekt Nummer';
            TableRelation = "Sales Line"."Document No." where("Document Type" = CONST("Blanket Order"));
        }
        field(2; "Line No."; Code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Rahmenauftragszeilennummer', ENU = 'Line No.';
            TableRelation = "Sales Line"."Line No." where("Document No." = Field("Object No."));
        }
        field(3; "Construction Part No."; Integer)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Construction Part No.', DEU = 'Bauteilnummer';
        }
        field(4; "Sales Price"; Decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Sales Price', DEU = 'Verkaufspreis';
        }
        field(5; "Start Date"; Date)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Start Date', DEU = 'Startdatum';
        }
        field(6; "End Date"; Date)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'End Date', DEU = 'Enddatum';
        }
    }

    keys
    {
        key(PK; "Object No.", "Line No.")
        {
            Clustered = true;
        }
    }

}