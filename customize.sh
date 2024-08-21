#!/system/bin/sh
ui_print ""
ui_print "🆂🆆🅰🅿🅿🅸🅽🅴🆂 🅵🅸🆇"
ui_print ""
#script
COMPATIBILITY=$(find /dev/memcg/system/memory.swappiness | wc -l)
[[ ${COMPATIBILITY} -gt 0 ]] || abort "! ROM is not supported"

set_perm_recursive ${MODPATH} 0 0 0755 0644

ui_print "▸ Reboot your device."
ui_print ""
ui_print "☬ @ModulOStk"
ui_print ""
