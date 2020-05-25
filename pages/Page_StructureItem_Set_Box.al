page 50117 StructureItem_Set_Box
{
    PageType = ListPart;
    CaptionML = DEU = 'Strukturartikel Set';
    SourceTable = "Structure Item Set";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                //field(Name; "Item No.")
                //{


                //}
                //field(Description1; Description1)
                //{


                //}
                field("Set item No."; "Set item No.")
                {


                }
                field(Description; Description)
                {

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
                ApplicationArea = All;

                trigger OnAction();
                begin


                end;
            }
        }
    }
}