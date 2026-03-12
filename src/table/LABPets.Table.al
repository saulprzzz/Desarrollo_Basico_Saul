table 50202 LABPets

{
    Caption = 'Mascotas';
    DataClassification = CustomerContent;
    DataCaptionFields = "No.", Name; //Page identificator field

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Número';
            DataClassification = CustomerContent;

        }
        field(2; Name; Text[50])
        {
            Caption = 'Nombre';
            DataClassification = CustomerContent;
        }
        field(3; "Date of birth"; Date)
        {
            Caption = 'Fecha de nacimiento';
            DataClassification = CustomerContent;
            trigger OnValidate()
            begin
                Age := (WorkDate() - "Date of birth") / 365;
            end;
        }
        field(4; Age; Decimal)
        {
            Caption = 'Edad';
            DataClassification = CustomerContent;
        }
        field(5; Sex; Option)
        {
            Caption = 'Sexo';
            DataClassification = CustomerContent;
            OptionMembers = " ",H,M;
            OptionCaption = ' ,H,M';
        }
        field(6; Microchip; Text[50])
        {
            Caption = 'Microchip';
            DataClassification = CustomerContent;
        }
        field(7; "Owner No."; Code[20])
        {
            Caption = 'Número de propietario';
            DataClassification = CustomerContent;
            TableRelation = LABPetOwners;
            trigger OnValidate()
            var
                PetOwner: Record LABPetOwners;
            begin
                if PetOwner.Get("Owner No.") then begin
                    "Owner Name" := PetOwner.Name;
                    "Owner address" := PetOwner.Address;
                    "Owner Phone No." := PetOwner."Phone No.";
                    "Owner E-Mail" := PetOwner."E-mail";
                end;

            end;
        }
        field(8; "Owner Name"; Text[100])
        {
            Caption = 'Nombre del propietario';
            DataClassification = CustomerContent;
        }
        field(9; "Owner address"; Text[100])
        {
            Caption = 'Dirección del propietario';
            DataClassification = CustomerContent;
        }
        field(10; "Owner Phone No."; Text[30])
        {
            Caption = 'Número de teléfono del propietario';
            DataClassification = CustomerContent;
        }
        field(11; "Owner E-Mail"; Text[80])
        {
            Caption = 'Correo electrónico del propietario';
            DataClassification = CustomerContent;
        }
        field(12; "Preferred Veterinary"; Code[20])
        {
            Caption = 'Veterinaria preferida';
            DataClassification = CustomerContent;
            TableRelation = LABVeterinary;
        }
        field(13; "Veterinary Name"; Text[100])
        {
            Caption = 'Nombre de la veterinaria';
            FieldClass = FlowField;
            CalcFormula = lookup(LABVeterinary.Name where("No." = field("Preferred Veterinary")));
            Editable = false;
        }
        field(14; Species; Enum Species)
        {
            Caption = 'Especie';
            DataClassification = CustomerContent;
        }
        field(15; Breed; Text[100])
        {
            Caption = 'Raza';
            DataClassification = CustomerContent;
        }
        field(16; Deceased; Boolean)
        {
            Caption = '¿Fallecido?';
            DataClassification = CustomerContent;
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