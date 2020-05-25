table 50102 "Factory Length"
{
    CaptionML = DEU = 'Werkslängen';
    DataClassification = CustomerContent;

    fields
    {
        field(1; Factory; Code[10])
        {
            CaptionML = DEU = 'Werk';
            DataClassification = CustomerContent;
            TableRelation = "Factory Administration";
        }
        field(2; Item; Code[30])
        {
            CaptionML = DEU = 'Artikelnummer';
            DataClassification = CustomerContent;
            TableRelation = Item;
        }
        field(3; Stock; Decimal)
        {
            CaptionML = DEU = 'Bestand';
            TableRelation = "Item Ledger Entry";
            FieldClass = FlowField;
            CalcFormula = Sum ("Item Ledger Entry".Quantity WHERE("Item No." = FIELD(Item)));

        }
    }
    keys
    {
        key(PK; Factory, Item)
        {
            Clustered = true;
        }
    }

}
