table 50204 "LABVisits Header"
{
    DataClassification = CustomerContent;
    Caption = 'Cabecera de visitas';
    DataCaptionFields = "No.", "Pet Name";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'Número';
            DataClassification = CustomerContent;
        }
        field(2; "Pet No."; Code[20])
        {
            Caption = 'Número mascota';
            DataClassification = CustomerContent;
            TableRelation = LABPets;
            trigger OnValidate()
            begin
                CopyDataFromPet("Pet No.");
            end;
        }
        field(3; "Pet Name"; Text[50])
        {
            Caption = 'Nombre mascota';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(4; "Pet Owner"; Code[20])
        {
            Caption = 'Propietario mascota';
            DataClassification = CustomerContent;
            Editable = false;
        }
        field(5; "Pet Address"; Text[100])
        {
            Caption = 'Dirección mascota';
            DataClassification = CustomerContent;
        }
        field(6; "Pet Phone No"; Text[30])
        {
            Caption = 'Teléfono mascota';
            DataClassification = CustomerContent;
        }
        field(7; Veterinary; Code[20])
        {
            Caption = 'Veterinario';
            DataClassification = CustomerContent;
        }
        field(8; "Visit Date"; Date)
        {
            Caption = 'Fecha visita';
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

    // Funtion CopyDataFromPet, used to copy the data from the pet table to the visit header table when the user selects a pet for the visit.
    local procedure CopyDataFromPet(PetNo: Code[20])
    var
        v: Record LABPets;

    begin
        if v.Get(PetNo) then begin
            "Pet Name" := v.Name;
            "Pet Owner" := v."Owner No.";
            "Pet Address" := v."Owner address";
            "Pet Phone No" := v."Owner Phone No.";
            Veterinary := v."Preferred Veterinary";
        end;
    end;

    //Funtion InitRecord, used to initialize the record with workdate().
    local procedure InitRecord()
    begin
        "Visit Date" := WorkDate();
    end;

    //Trigger OnInsert, used to initialize the record with workdate() when the user creates a new visit.
    trigger OnInsert()
    begin
        InitRecord();
    end;


}