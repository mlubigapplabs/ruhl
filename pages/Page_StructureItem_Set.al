page 50108 StructureItem_Set
{
    PageType = List;
    CaptionML = DEU = 'Strukturartikel Set';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Structure Item Set";


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Name; "Item No.")
                {
                    ApplicationArea = All;

                }
                field(Description1; Description1)
                {
                    ApplicationArea = All;

                }
                field("Set item No."; "Set item No.")
                {
                    ApplicationArea = All;

                }
                field(Description; Description)
                {
                    ApplicationArea = All;
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