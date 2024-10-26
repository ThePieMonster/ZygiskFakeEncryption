MODPATH="${0%/*}"

# Conditional sensitive properties

# Storage Encryption
resetprop ro.crypto.state encrypted
resetprop ro.crypto.type block



# Conditional late sensitive properties

until [ "$(getprop sys.boot_completed)" = "1" ]; do
    sleep 1
done

