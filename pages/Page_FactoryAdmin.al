page 50200 FactoryAdmin
{
    PageType = List;
    CaptionML = DEU = 'Werksverwaltung';
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Factory Administration";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Factory; Factory)
                {
                    ApplicationArea = All;

                }
                field("Name 1"; "Name 1")
                {
                    ApplicationArea = All;
                }
                field("Name 2"; "Name 2")
                {
                    ApplicationArea = All;
                }
                field("Name 3"; "Name 3")
                {
                    ApplicationArea = All;
                }
                field("Post Code"; "Post Code")
                {
                    ApplicationArea = All;
                }
                field(Address; Address)
                {
                    ApplicationArea = All;
                }
                field(Address2; Address2)
                {
                    ApplicationArea = All;
                }
                field(Country; Country)
                {
                    ApplicationArea = All;
                }
                field(Language; Language)
                {
                    ApplicationArea = All;
                }
                field("Dimension Factory"; "Dimension Factory")
                {
                    ApplicationArea = All;
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