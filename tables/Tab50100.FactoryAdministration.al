table 50100 "Factory Administration"
{

    CaptionML = DEU = 'Werksverwaltung';
    DataClassification = CustomerContent;
    DataPerCompany = true;

    fields
    {
        field(1; Factory; Code[10])
        {
            CaptionML = DEU = 'Werk';
            DataClassification = CustomerContent;
        }
        field(2; "Name 1"; Text[50])
        {
            CaptionML = DEU = 'Name 1';
            DataClassification = CustomerContent;
        }
        field(3; "Name 2"; Text[50])
        {
            CaptionML = DEU = 'Name 2';
            DataClassification = CustomerContent;
        }
        field(4; "Name 3"; Text[50])
        {
            CaptionML = DEU = 'Name 3';
            DataClassification = CustomerContent;
        }
        field(5; "Post Code"; Code[20])
        {
            CaptionML = DEU = 'PLZ';
            DataClassification = CustomerContent;
            TableRelation = "Post Code";
        }
        field(6; Address; Text[50])
        {
            CaptionML = DEU = 'Addresse';
            DataClassification = CustomerContent;
        }
        field(7; Address2; Text[50])
        {
            CaptionML = DEU = 'Addresse2';
            DataClassification = CustomerContent;
        }
        field(8; Country; Code[20])
        {
            CaptionML = DEU = 'Länder/Regionscode';
            DataClassification = CustomerContent;
            TableRelation = "Country/Region";
        }
        field(9; Language; Code[20])
        {
            CaptionML = DEU = 'Sprache';
            DataClassification = CustomerContent;
            TableRelation = "Language";
        }
        field(10; "Dimension Factory"; Code[20])
        {
            CaptionML = DEU = 'Dimensionswert';
            DataClassification = CustomerContent;
            trigger onvalidate()
            var
                DimensionValue: Record "Dimension Value";
                SalesSetup: Record "Sales & Receivables Setup";
            begin
                SalesSetup.get();
                DimensionValue.SetRange("Dimension Code", SalesSetup."Factory Dimension Code");
                DimensionValue.SetRange(code, "Dimension Factory");
                if DimensionValue.IsEmpty then
                    error('');
            end;

            trigger onlookup()
            var
                DimensionValue: Record "Dimension Value";
                SalesSetup: Record "Sales & Receivables Setup";
            begin
                SalesSetup.get();
                DimensionValue.SetRange("Dimension Code", SalesSetup."Factory Dimension Code");
                if page.RunModal(page::"Dimension Value list", DimensionValue) = action::LookupOK then
                    "Dimension Factory" := DimensionValue.Code;
            end;
        }
    }
    keys
    {
        key(PK; Factory)
        {
            Clustered = true;
        }
    }

}
