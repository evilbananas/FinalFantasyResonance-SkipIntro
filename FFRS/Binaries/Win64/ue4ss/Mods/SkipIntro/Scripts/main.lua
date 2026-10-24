-- Empty the splash logo list so there is nothing to display
NotifyOnNewObject("/Script/mucha.CPP_WBP_SplashLayout", function(w)
    pcall(function() w.DiplayLogDA.LogoList:Empty() end)
end)

-- Demo build only: hide the "thank you" screen and confirm it like pressing F
local DEMO_SCREEN = "WBP_DemoIntroductionLayout_C"

local function isDemoScreen(w)
    local ok, name = pcall(function() return w:GetClass():GetFName():ToString() end)
    return ok and name == DEMO_SCREEN
end

pcall(RegisterHook, "/Script/EnhancedUI.CPP_EU_WBP_Activatable:OnRequestOpen", function(ctx)
    local w = ctx:get()
    if isDemoScreen(w) then pcall(function() w:SetRenderOpacity(0.0) end) end
end)

pcall(RegisterHook, "/Script/EnhancedUI.CPP_EU_WBP_Activatable:FinishedOpen", function(ctx)
    local w = ctx:get()
    if not isDemoScreen(w) then return end
    ExecuteWithDelay(50, function()
        ExecuteInGameThread(function()
            pcall(function()
                w:OnRequestClose()
                w:InputDecide(0)
            end)
        end)
    end)
end)
