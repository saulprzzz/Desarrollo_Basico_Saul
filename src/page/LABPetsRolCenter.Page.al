page 50213 "LABPets RolCenter"
{
    PageType = RoleCenter;
    Caption = 'Clínica Veterinaria';

    actions
    {
        area(Sections)
        {
            group(GestionClinica)
            {
                action(PetOwnerList)
                {
                    Caption = 'Propietarios';
                    ApplicationArea = All;
                    RunObject = page "LABPet Owner List";
                    ToolTip = 'Lista de propietarios de mascotas';
                }
                action(VeterinaryList)
                {
                    Caption = 'Veterinarios';
                    ApplicationArea = All;
                    RunObject = page "LABVeterinary List";
                    ToolTip = 'Lista de veterinarios';
                }
                action(PetList)
                {
                    Caption = 'Mascotas';
                    ApplicationArea = All;
                    RunObject = page "LABPet List";
                    ToolTip = 'Lista de mascotas';
                }
                action(VisitConceptsList)
                {
                    Caption = 'Conceptos';
                    ApplicationArea = All;
                    RunObject = page "LABVisit Concepts List";
                    ToolTip = 'Lista de conceptos de visita';
                }
                action(VisitsList)
                {
                    Caption = 'Visitas';
                    ApplicationArea = All;
                    RunObject = page "LABVisit List";
                    ToolTip = 'Lista de visitas';
                }
            }

        }
    }
}