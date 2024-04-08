local notify = false

function SendNotify(text, time)
    notify = true
    SendNUIMessage({
        action = 'SendNotify',
        text = text,
        time = time or Config.Time
    })
end

exports('Notify', SendNotify)

RegisterNUICallback('NotifyEnd', function(data, cb)
    notify = false
end)

if Config.Command then
    RegisterCommand('test_notify', function()
        exports['vs-notify']:Notify('System notify by VoiceStudio')
    end)
end
