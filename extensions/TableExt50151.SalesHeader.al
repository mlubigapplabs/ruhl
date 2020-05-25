tableextension 50151 TableExtSalesHeader extends "Sales Header"
{
    fields
    {
        field(50100; "Factory Code"; code[10])
        {
            CaptionML = DEU = 'Werk';
            DataClassification = ToBeClassified;
            trigger Onlookup()
            var
                UserSetup: Record "User Setup";
            begin
                if page.RunModal(Page::"User Setup", UserSetup) = Action::LookupOK then
                    "Factory Code" := UserSetup."Factory Code";
            end;
        }
    }
}