table 50201 "Radio Show Type"
{
    DataClassification = ToBeClassified;
    LookupPageId = "Radio Show Type";
    DrillDownPageId = "Radio Show Type";
    fields
    {
        field(1; Code; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; Description; Text[50])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; Code)
        {
            Clustered = true;
        }
    }

}