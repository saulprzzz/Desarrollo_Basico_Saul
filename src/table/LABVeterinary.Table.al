table 50201 LABVeterinary
{
    DataClassification = CustomerContent;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Número';
            DataClassification = ToBeClassified;

        }
        field(2; Name; Text[100])
        {
            Caption = 'Nombre';
            DataClassification = ToBeClassified;
        }
        field(3; "Phone No."; Text[30])
        {
            Caption = 'Número de teléfono';
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}