pageextension 50111 PageExtUserSetup extends "User Setup"
{
    layout
    {
        addafter(Email)
        {
            field("Factory Code"; "Factory Code")
            {
                ApplicationArea = All;
            }
        }
    }


}