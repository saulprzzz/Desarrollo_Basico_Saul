table 50205 "LABVisits Line"
{
    DataClassification = CustomerContent;
    Caption = 'Líneas de visita';

    fields
    {
        field(1; "Visit No."; Code[20])
        {
            Caption = 'Número visita';
            DataClassification = CustomerContent;
        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Número línea';
            DataClassification = CustomerContent;
        }
        field(3; "No."; Code[20])
        {
            Caption = 'Número';
            DataClassification = CustomerContent;
            TableRelation = LABVisitConcepts;

            trigger OnValidate()
            var
                v: Record LABVisitConcepts;
            begin
                if v.Get("No.") then begin
                    Description := v.Description;
                    if v."Unit Price" <> 0 then
                        "Unit Price" := v."Unit Price";
                    Validate(Quantity, 1);
                end;
            end;
        }
        field(4; Description; Text[100])
        {
            Caption = 'Descripción';
            DataClassification = CustomerContent;
        }
        field(5; Quantity; Decimal)
        {
            Caption = 'Cantidad';
            DataClassification = CustomerContent;

            trigger OnValidate()
            begin
                Amount := Round(Quantity * "Unit Price", 0.01);
            end;

        }
        field(6; "Unit Price"; Decimal)
        {
            Caption = 'Precio unitario';
            DataClassification = CustomerContent;
        }
        field(7; Amount; Decimal)
        {
            Caption = 'Importe';
            DataClassification = CustomerContent;
        }
    }

    keys
    {
        key(PK; "Visit No.", "Line No.")
        {
            Clustered = true;
        }
    }
}