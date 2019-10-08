table 50240 "Date Formula"
{
    Caption = 'Date Formula';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Primary Key"; Code[10])
        {
            Caption = 'Primary Key';
            DataClassification = ToBeClassified;
        }
        field(10; "Reference for Date Calculation"; Date)
        {
            Caption = 'Reference for Date Calculation';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(20; "Date Formula to Test"; DateFormula)
        {
            Caption = 'Date Formula to Test';
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                CalculateNewDate();
            end;
        }
        field(30; "Date Result"; Date)
        {
            Caption = 'Date Result';
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(PK; "Primary Key")
        {
            Clustered = true;
        }
    }
    local procedure CalculateNewDate()
    begin
        "Date Result" := CalcDate("Date Formula to Test", "Reference for Date Calculation");
    end;
}
