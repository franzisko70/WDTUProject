table 50200 "Radio Show"
{
    DataClassification = ToBeClassified;
    fields
    {
        field(1; "No."; Code[20])
        {
            trigger OnValidate()
            begin

            end;

            trigger OnLookup()
            begin

            end;
        }
        field(10; "Radio Show Type"; Code[10])
        {
            TableRelation = "Radio Show Type";
        }
        field(20; "Name"; Text[50]) { }
        field(40; "Run Time"; Duration) { }
        field(50; "Host Code"; Code[20]) { }
        field(60; "Host Name"; Code[50]) { }
        field(100; "Average Listeners"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average ("Listenership Entry"."Listener Count"
            where("Radio Show No." = field("No."), Date = field("Data Filter")));
        }
        field(110; "Audience Share"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = average ("Listenership Entry"."Audience Share"
            where("Radio Show No." = field("No."), Date = field("Data Filter")));
        }
        field(120; "Advertising Revenue"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum ("Radio Show Entry"."Fee Amount"
            where("Radio Show No." = field("No."),
            "Data Format" = filter(Advertisement)));
        }
        field(130; "Royalty Cost"; Decimal)
        {
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = sum ("Radio Show Entry"."Fee Amount"
            where(Date = field("Data Filter"),
            "Data Format" = filter(Advertisement)));
        }
        field(1000; Frequency; Option)
        {
            OptionMembers = ,"Hourly","Daily","Weekly","Monthly";
        }
        field(1010; "PSA Planned Quantity"; Integer) { }
        field(1020; "Ads Planned Quantity"; Integer) { }
        field(1030; "News Required"; Boolean)
        {
            InitValue = true;
        }
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean)
        {
            InitValue = true;
        }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean)
        {
            InitValue = true;
        }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Data Filter"; Date)
        {
            FieldClass = FlowFilter;
        }

    }
    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
        key(Name; Name) { }
        key(HostName; "Host Name") { }

    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Audience Share") { }
    }

}