function bt -a action device -d "Connect/disconnect bluetooth devices"
    switch $device
        case headphones
            set mac $BT_HEADPHONES_MAC
        case speaker
            set mac $BT_SPEAKER_MAC
        case '*'
            echo "Usage: bt connect|disconnect headphones|speaker" >&2
            return 1
    end

    switch $action
        case connect disconnect
            bluetoothctl $action $mac
        case '*'
            echo "Usage: bt connect|disconnect headphones|speaker" >&2
            return 1
    end
end
