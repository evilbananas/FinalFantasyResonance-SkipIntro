-- Empty the splash logo list so there is nothing to display
NotifyOnNewObject("/Script/mucha.CPP_WBP_SplashLayout", function(splash)
    splash.DiplayLogDA.LogoList:Empty()
end)

-- Demo only: hide the "thank you" screen as it's created, then confirm it like pressing F
NotifyOnNewObject("/Game/UI/DemoIntroduction/WBP_DemoIntroductionLayout.WBP_DemoIntroductionLayout_C", function(screen)
    screen:SetRenderOpacity(0.0)
end)

pcall(RegisterHook, "/Script/EnhancedUI.CPP_EU_WBP_Activatable:FinishedOpen", function(ctx)
    local screen = ctx:get()
    if screen:GetClass():GetFName():ToString() ~= "WBP_DemoIntroductionLayout_C" then return end
    -- Input is ignored on the frame the screen finishes opening, so confirm shortly after
    ExecuteWithDelay(50, function()
        ExecuteInGameThread(function()
            screen:OnRequestClose()
            screen:InputDecide(0)
        end)
    end)
end)
