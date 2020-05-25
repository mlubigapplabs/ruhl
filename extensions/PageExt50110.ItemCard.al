pageextension 50110 PageExt_ItemCard extends "Item Card"
{
    layout
    {
        addafter("Last Date Modified")
        {
            field("Item Property 1"; "Item Property 1")
            {
                ApplicationArea = All;
            }

            field("Item Property 2"; "Item Property 2")
            {
                ApplicationArea = All;
            }

            field("Item Property 3"; "Item Property 3")
            {
                ApplicationArea = All;
            }

            field("Item Property 4"; "Item Property 4")
            {
                ApplicationArea = All;
            }
            field("MountingType"; MountingType)
            {
                ApplicationArea = All;
            }
            field("Item Structure"; "Item Structure")
            {
                ApplicationArea = All;
            }

        }

        addafter(InventoryGrp)
        {
            group(Artikelmaße)
            {
                field("Lenght"; Length)
                {
                    ApplicationArea = All;
                }
                field("Width"; Width)
                {
                    ApplicationArea = All;
                }
                field("Heigth"; Heigth)
                {
                    ApplicationArea = All;
                }

            }
        }
        addafter("Artikelmaße")
        {
            group(Artikeleigenschaften)
            {
                field(Diameter; Diameter)
                {
                    ApplicationArea = All;
                }
                field(MaxDeliveryLength; MaxDeliveryLength)
                {
                    ApplicationArea = All;
                }
                field(BunchQty; BunchQty)
                {
                    ApplicationArea = All;
                }
                field(BoxSize; BoxSize)
                {
                    ApplicationArea = All;
                }
                field(MountingSub; MountingSub)
                {
                    ApplicationArea = All;
                }
            }
        }
        addfirst(factboxes)
        {
            part(StructureItemSet; StructureItem_Set_Box)
            {
                ApplicationArea = Suite;
                SubPageLink = "Item No." = field("No.");
            }
        }
        addafter(StructureItemSet)
        {
            part(FactoryLength; FactoryLength_Box)
            {
                ApplicationArea = Suite;
                SubPageLink = Item = field("No.");
            }
        }
    }

    actions
    {
        addlast(ItemActionGroup)
        {
            group(Artikelverwaltung)
            {
                action(Structure_ItemSet)
                {
                    ApplicationArea = All;
                    CaptionML = DEU = 'Struktur Artikel Set';
                    RunObject = Page StructureItem_Set;
                    RunPageLink = "Item No." = field("No.");
                }
            }
        }
    }
}