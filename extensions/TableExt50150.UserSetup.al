tableextension 50150 TableExtUserSetup extends "User Setup"
{
    fields
    {
        field(50100; "Factory Code"; code[10])
        {
            CaptionML = DEU = 'Werk';
            DataClassification = CustomerContent;
            TableRelation = "Factory Administration";
        }
    }
}