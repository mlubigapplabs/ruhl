table 50116 ObjectQuantityLog
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
        field(3; "Date"; Date)
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Änderungsdatum', ENU = 'Date';
        }
        field(4; "Quantity Change"; Decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = ENU = 'Quantity Change', DEU = 'Änderungsmenge';
        }
        field(5; "User ID"; code[20])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Benutzer', ENU = 'User ID';
        }
        field(6; Comment; Text[150])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Bemerkung', ENU = 'Comment';
        }
    }

    keys
    {
        key(PK; "Object No.", "Line No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        "User ID" := USERID();
        Date := TODAY;
    end;

    trigger OnModify()
    begin
        "User ID" := USERID();
        Date := TODAY;
    end;

    trigger OnRename()
    begin
        "User ID" := USERID();
        Date := TODAY;
    end;

}