table 50205 "Radio Show Entry"
{
    Caption = 'Radio Show Entry';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Entry No."; Integer)
        {
            Caption = 'Entry No.';
            DataClassification = ToBeClassified;
        }
        field(10; "Radio Show No."; Code[20])
        {
            Caption = 'Radio Show No.';
            DataClassification = ToBeClassified;
            //TODO: Controllare se serve
            TableRelation = "Radio Show";
        }
        field(20; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = ,Resource,Show,Item;
            DataClassification = ToBeClassified;
        }
        field(30; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "Radio Show"."No."
            else
            if (Type = const(Item)) Item."No.";
        }
        field(40; "Data Format"; Option)
        {
            Caption = 'Data Format';
            OptionMembers = ,Vinyl,CD,Mp3,PSA,Advertisement;
            DataClassification = ToBeClassified;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(60; Date; Date)
        {
            Caption = 'Date';
            DataClassification = ToBeClassified;
        }
        field(70; Time; Time)
        {
            Caption = 'Time';
            DataClassification = ToBeClassified;
        }
        field(80; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(90; "Fee Amount"; Decimal)
        {
            Caption = 'Fee Amount';
            DataClassification = ToBeClassified;
        }
        field(100; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = ToBeClassified;
        }
        field(110; "Publisher Code"; Code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
            //TODO: Controllare se serve
            TableRelation = Publisher;

        }
    }
    keys
    {
        key(PK; "Entry No.")
        {
            Clustered = true;
        }
        key(Reporting; "Radio Show No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
        key(Reporting2; "No.", Date)
        {
            SumIndexFields = "Fee Amount";
        }
    }

}
