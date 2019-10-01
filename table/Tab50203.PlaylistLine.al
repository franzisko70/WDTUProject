table 50203 "Playlist Line"
{
    Caption = 'Playlist Line';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Documento No."; Code[20])
        {
            Caption = 'Documento No.';
            DataClassification = ToBeClassified;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line No.';
            DataClassification = ToBeClassified;
        }
        field(10; Type; Option)
        {
            Caption = 'Type';
            OptionMembers = ,Resource,Show,Item;
            DataClassification = ToBeClassified;
        }
        field(20; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = ToBeClassified;
            TableRelation = if (Type = const(Resource)) Resource."No."
            else
            if (Type = const(Show)) "Radio Show"."No."
            else
            if (Type = const(Item)) Item."No.";
        }
        field(30; "Data Format"; Option)
        {
            Caption = 'Data Format';
            OptionMembers = ,Vinyl,CD,Mp3,PSA,Advertisement;
            DataClassification = ToBeClassified;
        }
        field(40; Publisher; Code[10])
        {
            Caption = 'Publisher';
            DataClassification = ToBeClassified;
            //TODO: Controllare se serve
            TableRelation = Publisher;
        }
        field(50; Description; Text[50])
        {
            Caption = 'Description';
            DataClassification = ToBeClassified;
        }
        field(60; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(70; "Start Time"; Time)
        {
            Caption = 'Start Time';
            DataClassification = ToBeClassified;
        }
        field(80; "End Time"; Time)
        {
            Caption = 'End Time';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Documento No.", "Line No.")
        {
            Clustered = true;
        }
    }

}
