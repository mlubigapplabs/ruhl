tableextension 50149 extt27item extends Item
{
    fields
    {
        field(50000; Diameter; Decimal)
        {
            CaptionML = DEU = 'Durchmesser (mm)';
            DataClassification = CustomerContent;
        }
        field(50001; MaxDeliveryLength; Decimal)
        {
            CaptionML = DEU = 'Max. Lieferlänge (m)';
            DataClassification = CustomerContent;
        }
        field(50002; BunchQty; Decimal)
        {
            CaptionML = DEU = 'Bundgröße (to)';
            DataClassification = CustomerContent;
        }
        field(50003; BoxSize; Decimal)
        {
            CaptionML = DEU = 'Max. Boxen Größe (in Stück)';
            DataClassification = CustomerContent;
        }
        field(50004; MountingSub; Decimal)
        {
            CaptionML = DEU = 'Einschraubtiefe (cm)';
            DataClassification = CustomerContent;
        }
        field(50005; MountingType; Option)
        {
            CaptionML = DEU = 'Verbindungstyp';
            OptionMembers = "Gewinde","Muffe","kein";
        }
        field(50100; "Item Property 1"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warengruppe', ENU = 'Item Property 1';
            TableRelation = "Item Property 1";
            ValidateTableRelation = true;
            trigger OnValidate()
            begin
                if "Item Property 1" <> xrec."Item Property 1" then
                    Clear("Item Property 2");
                clear("Item Property 3");
                clear("Item Property 4");
            end;
        }
        field(50101; "Item Property 2"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'SubWarenGruppe', ENU = 'Item Property 2';
            TableRelation = "Item Property 2"."Item Property 2" where("Item Property 1" = field("Item Property 1"));
            ValidateTableRelation = true;
            trigger OnValidate()
            begin
                if "Item Property 2" <> xrec."Item Property 2" then
                    clear("Item Property 3");
            end;
        }
        field(50102; "Item Property 3"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Warendetails', ENU = 'Item Property 3';
            TableRelation = "Item Property 3"."Item Property 3" where("Item Property 1" = field("Item Property 1"), "Item Property 2" = field("Item Property 2"));
            ValidateTableRelation = true;
        }
        field(50103; "Item Property 4"; code[50])
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Stahlgüte', ENU = 'Item Property 4';
            TableRelation = "Item Property 4".Code where("Item Property 1" = field("Item Property 1"));
            ValidateTableRelation = true;
        }
        field(50104; "Length"; decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Länge (cm)', ENU = 'Length';
        }
        field(50105; "Width"; decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Breite (cm)', ENU = 'Width';
        }
        field(50106; "Heigth"; Decimal)
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Höhe (cm)', ENU = 'Heigth';
        }
        field(50107; "Item Structure"; Boolean)
        {
            DataClassification = ToBeClassified;
            CaptionML = DEU = 'Strukturartikel';
            trigger Onvalidate()
            var
                StructureItemSet: Record "Structure Item Set";
                StructureItemErr: Label 'Setartikel kann nicht abgewählt werden da noch Artikel zugeordnet sind';
            begin
                if (xrec."Item Structure" <> "Item Structure") and xRec."Item Structure" then begin
                    StructureItemSet.reset;
                    StructureItemSet.SetRange("Item No.", "No.");
                    if not StructureItemSet.IsEmpty then
                        Error(StructureItemErr);
                end;
            end;
        }
    }
    var
        myInt: Integer;
}