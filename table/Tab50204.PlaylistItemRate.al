table 50204 "Playlist Item Rate"
{
    Caption = 'Playlist Item Rate';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Source Type"; Option)
        {
            Caption = 'Source Type';
            OptionMembers = Vendor,Customer;
            DataClassification = ToBeClassified;
        }
        field(2; "Source No."; Code[20])
        {
            Caption = 'Source No.';
            DataClassification = ToBeClassified;
            TableRelation = if ("Source Type" = const(Vendor)) Vendor."No."
            else
            if ("Source Type" = const(Customer)) Customer."No.";

        }
        field(10; "Item No."; Code[20])
        {
            Caption = 'Item No.';
            DataClassification = ToBeClassified;
        }
        field(20; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(30; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
        field(40; "Rate Amount"; Decimal)
        {
            Caption = 'Rate Amount';
            DataClassification = ToBeClassified;
        }
        field(50; "Publisher Code"; Code[20])
        {
            Caption = 'Publiher Code';
            DataClassification = ToBeClassified;
            //TODO: Controllare se serve
            TableRelation = Publisher;

        }
    }
    keys
    {
        key(PK; "Source Type")
        {
            Clustered = true;
        }
    }

}
