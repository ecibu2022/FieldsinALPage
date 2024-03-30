table 55100 Images
{
    Caption = 'Images';
    DataClassification = ToBeClassified;
    
    fields
    {
        field(1; ID; Code[20])
        {
            Caption = 'ID';
        }
        field(2; Name; Text[200])
        {
            Caption = 'Name';
        }
        field(3; Photo; Blob)
        {
            Subtype=Bitmap;
            Compressed=true;
        }
    }
    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }
}
