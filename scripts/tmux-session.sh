#! /bin/bash

WORK_DIR="~/projects"
SESSION="work"

tmux kill-session -t $SESSION
tmux new-session -d -s $SESSION
tmux split-window -h -t $SESSION:1.1
tmux split-window -v -t $SESSION:1.2
# tmux send-keys -t $SESSION:1.1 "cd $WORK_DIR && vim notes" Enter
# tmux send-keys -t $SESSION:1.1 "G" Enter
# tmux send-keys -t $SESSION:1.3 "cd $WORK_DIR && ll" Enter
tmux attach-session -t $SESSION
