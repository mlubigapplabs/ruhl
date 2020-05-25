table 50101 "Structure Item Set"
{
    CaptionML = DEU = 'Strukturartikel Set';
    DataClassification = CustomerContent;

    fields
    {
        field(1; "Item No."; Code[20])
        {
            CaptionML = DEU = 'Strukturartikelnummer';
            DataClassification = CustomerContent;
            TableRelation = Item;
        }
        field(2; Description1; Text[50])
        {
            CaptionML = DEU = 'Beschreibung';
            TableRelation = Item;
            FieldClass = FlowField;
            CalcFormula = lookup (Item.Description where("No." = field("Item No.")));
        }
        field(3; "Set item No."; Code[20])
        {
            CaptionML = DEU = 'Setartikelnummer';
            DataClassification = CustomerContent;
            TableRelation = Item;
        }
        field(4; Description; Text[50])
        {
            CaptionML = DEU = 'Beschreibung';
            TableRelation = Item;
            FieldClass = FlowField;
            CalcFormula = lookup (Item.Description where("No." = field("Set Item No.")));
        }

    }
    keys
    {
        key(PK; "Item No.", "Set item No.")

        {

            Clustered = true;
        }
    }

}
