page 70100 "Video Player Demo"
{

    Caption = 'Video Player';
    ShowFilter = false;
    PageType = Card;
    layout
    {
        area(content)
        {
            usercontrol(Player; "Microsoft.Dynamics.Nav.Client.VideoPlayer")
            {
                trigger AddInReady()
                var
                    CompanyInfoL: Record "Company Information";
                begin
                    CompanyInfoL.Get();
                    CurrPage.Player.SetHeight(800);
                    CurrPage.Player.SetWidth(600);
                    CurrPage.Player.SetFrameAttribute('src', CompanyInfoL."Home Page");
                end;
            }
        }
    }

}
