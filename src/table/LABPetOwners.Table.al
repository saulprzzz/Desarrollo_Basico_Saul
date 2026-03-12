table 50200 "LABPetOwners"
{
    DataClassification = CustomerContent;
    DataCaptionFields = "No.", Name;    //Identificador de la pagina (subrayado en rojo en la foto, punto 2.2.4)

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Número';
            DataClassification = CustomerContent;

        }
        field(2; Name; Text[100])
        {
            Caption = 'Nombre';
            DataClassification = CustomerContent;
        }
        field(3; Address; Text[100])
        {
            Caption = 'Dirección';
            DataClassification = CustomerContent;
        }
        field(4; "Phone No."; Text[30])
        {
            Caption = 'Número de teléfono';
            DataClassification = CustomerContent;
        }
        field(5; "E-mail"; Text[80])
        {
            Caption = 'Correo electrónico';
            DataClassification = CustomerContent;
        }
        field(6; "How Many Pets"; Integer)
        {
            Caption = 'Número de mascotas';
            FieldClass = FlowField;
            CalcFormula = count(LABPets where(Deceased = filter(false)));
            Editable = false; // Calculated field, cant be editable by the user.
        }
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }
}