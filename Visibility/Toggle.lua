-- [ By Just A Script https://discord.com/invite/pkc2ASf9Kb it dead though, https://discord.com/invite/nwc7QByURx Alwi Server ]] --
function notify(...)
    local varg = {...}
    game:GetService("StarterGui"):SetCore("SendNotification", {
        Title = varg[1],
        Text = varg[2],
        Icon = varg[3],
        Duration = varg[4]
    })
end

if identifyexecutor() == "Fluxus" then
    notify(
        "Fluxus",
        "To Hide [" .. prefixes.hide .. "]\n To Show [" .. prefixes.show .. "]",
        tostring(game.CoreGui:FindFirstChild("FluxusAndroidUI").LeftBarFrame:FindFirstChild("Logo").Image),
        10
    )
else
    notify(
        "Unsupported",
        "Your " .. identifyexecutor() .. " isn't recognized as Fluxus.",
        "",
        10
    )
end

game:GetService("Players").LocalPlayer.Chatted:Connect(function(msg)
    local fluxusUI = game.CoreGui:FindFirstChild("FluxusAndroidUI")
    if fluxusUI then
        if msg == prefixes.hide then
            fluxusUI.Enabled = false
        elseif msg == prefixes.show then
            fluxusUI.Enabled = true
        end
    end
end)
