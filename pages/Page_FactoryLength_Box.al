page 50203 FactoryLength_Box
{
    PageType = ListPart;
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

                    CaptionML = DEU = 'Werk';
                }
                //field(Item; Item)
                //{
                //ApplicationArea = All;
                //CaptionML = DEU = 'Artikelnummer';
                //}
                field(Stock; Stock)
                {

                    CaptionML = DEU = 'Bestand';
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {


                trigger OnAction();
                begin

                end;
            }
        }
    }
}