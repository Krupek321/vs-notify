window.addEventListener("message", (event) => {
    switch (event.data.action) {
        case 'SendNotify':
            var $Notify = $('<div class="Notify">' + event.data.text + '</div>')
            $('.Notifys').append($Notify)
            setTimeout(() => {
                $Notify.remove()
                $.post('http://vs-notify/NotifyEnd', JSON.stringify({}))
            }, event.data.time);
            break
    }
})