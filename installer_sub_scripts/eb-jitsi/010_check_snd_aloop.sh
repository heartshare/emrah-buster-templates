# -----------------------------------------------------------------------------
# CHECK_SND_ALOOP.SH
# -----------------------------------------------------------------------------
set -e
source $INSTALLER/000_source

# -----------------------------------------------------------------------------
# INIT
# -----------------------------------------------------------------------------
[ "$DONT_RUN_JIBRI" = true ] && exit

echo
echo "----------------- SND_ALOOP SUPPORT CHECK -----------------"

if ! modprobe -n snd_aloop; then
    cat <<EOF

This kernel ($(uname -r)) does not support snd_aloop module.
Please install the standard Linux kernel and reboot it.
EOF

    false
fi
