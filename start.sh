echo "Starting"
pipi() {
    REQ_FILE=requirements.txt
    TMP_FILE=/tmp/tmp_req.txt
    pip install "$@"

    if [ $? -eq 0 ] && [ -f "${REQ_FILE}" ]
    then
        FREEZE="$(pip freeze)"
        for arg in "$@"
        do
            if [[ $arg != -* ]]; then
                # sed -i "/^$arg[=<>]/dI" $REQ_FILE  # Should work on newer sed versions
                grep -vi "$arg[=<>]" $REQ_FILE > $TMP_FILE  
		        mv $TMP_FILE $REQ_FILE
                echo "$FREEZE" | grep -i "^$arg[=<>]" >> $REQ_FILE
            fi
        done
    fi
}
git clone https://github.com/TeamExtremePro/ExtremeProUserbot

