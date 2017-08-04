if which ssh-agent 1>/dev/null 2>&1 && [ -n "$SSH_AGENT_PID" ]; then
    ssh-agent -k
fi

# if which ssh-agent 1>/dev/null 2>&1 && [ -n "$SSH_AGENT_PID" ]; then
#     TTNUM=`ps | awk '{if (NR != 1) print $2}' | sort | uniq | wc -l`
#     if [ $TTNUM -eq 1 ]; then
#         eval $(/usr/bin/ssh-agent -qk 2>/dev/null)
#     fi
# fi
