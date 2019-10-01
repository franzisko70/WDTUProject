tableextension 50200 "Playlist Item" extends Item //MyTargetTableId
{
    fields
    {
        field(50100; "Publisher Code"; code[10])
        {
            Caption = 'Publisher Code';
            DataClassification = ToBeClassified;
        }
        field(50101; "ACSAP ID"; Integer)
        {
            Caption = 'ACSAP ID';
            DataClassification = ToBeClassified;
        }
        field(50102; Duration; Duration)
        {
            Caption = 'Duration';
            DataClassification = ToBeClassified;
        }
        field(50103; "Data Format"; Option)
        {
            Caption = 'Data Format';
            DataClassification = ToBeClassified;
            OptionMembers = ,Vinyl,CD,Mp3,PSA,Advertisement;
        }
        field(50104; "Mp3 Location"; Text[250])
        {
            Caption = 'Mp3 Location';
            DataClassification = ToBeClassified;
        }
    }

}