codeunit 70100 "Video Player Event Sub."
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnAfterCompanyOpen', '', true, true)]
    local procedure OnAfterCompanyOpenSub()
    begin
    end;


    [EventSubscriber(ObjectType::Codeunit, Codeunit::LogInManagement, 'OnBeforeLogInStart', '', true, true)]
    local procedure OnBeforeLogInStartSub()
    var
        CompanyInfoL: Record "Company Information";
        VideoPlayerL: Page "Video Player Demo";
    begin
        Clear(CompanyInfoL);
        CompanyInfoL.Get();
        if CompanyInfoL."Home Page" = '' then
            exit;

        Clear(VideoPlayerL);
        VideoPlayerL.RunModal();
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"System Initialization", 'OnAfterInitialization', '', true, true)]
    local procedure OnAfterInitializationSystemSub()
    begin
    end;
}
