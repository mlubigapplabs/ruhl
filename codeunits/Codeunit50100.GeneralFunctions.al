codeunit 50100 "General Functions"
{
    trigger OnRun()
    begin

    end;

    [EventSubscriber(ObjectType::Table, 36, 'OnAfterInsertEvent', '', false, false)]
    local procedure SalesHeaderOnAfterInsert(var Rec: Record "Sales Header"; RunTrigger: Boolean)
    var
        UserSetup: Record "User Setup";
    begin
        WITH Rec DO BEGIN
            IF ISTEMPORARY THEN
                EXIT;
            if UserSetup.get(UserId) and (UserSetup."Factory Code" <> '') then begin
                rec."Factory Code" := UserSetup."Factory Code";
                rec.Modify(false);
            end;
        END;

    end;

    var
        myInt: Integer;
}