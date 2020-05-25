page 50202 FactoryLength
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Factory Length";
    CaptionML = DEU = 'Werkslängen';

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Factory; Factory)
                {
                    ApplicationArea = All;
                    CaptionML = DEU = 'Werk';
                }
                field(Item; Item)
                {
                    ApplicationArea = All;
                    CaptionML = DEU = 'Artikelnummer';
                }
                field(Stock; Stock)
                {
                    ApplicationArea = All;
                    CaptionML = DEU = 'Bestand';
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}