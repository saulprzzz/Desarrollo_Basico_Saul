page 50204 "LABPet Owner List"
{
    Caption = 'Propietarios';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = LABPetOwners;
    Editable = false;
    CardPageId = "LABPet Owner List";

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field("No."; Rec."No.")
                {
                    Caption = 'Número';
                    ApplicationArea = All;
                    ToolTip = 'Número del propietario';
                }
                field(Name; Rec.Name)
                {
                    Caption = 'Nombre';
                    ApplicationArea = All;
                    ToolTip = 'Nombre del propietario';
                }
                field("Phone No."; Rec."Phone No.")
                {
                    Caption = 'Número de teléfono';
                    ApplicationArea = All;
                    ToolTip = 'Número de teléfono del propietario';
                }
                field("How Many Pets"; Rec."How Many Pets")
                {
                    Caption = '¿Cuantas mascotas?';
                    ApplicationArea = All;
                    ToolTip = '¿Cuantas mascotas vivas tiene el propietario?';
                }
            }
        }

    }
    actions
    {
        area(Processing)
        {
            action(Mascotas)
            {
                Caption = 'Mascotas';
                ToolTip = 'Ver las mascotas del propietario';
                Image = Customer;
                trigger OnAction()
                var
                    v: REcord LABPets;
                begin
                    v.SetRange("Owner No.", Rec."No.");
                    Page.Run(Page::"LABPet List", v);
                end;
            }
        }
    }
}