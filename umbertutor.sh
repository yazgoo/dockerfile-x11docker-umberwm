wait_for_action() {
  while true
  do
    if cat action_log | grep "$1" >/dev/null
    then
      return 0
    fi
    sleep 1
  done
}
step() {
echo > action_log
echo "$@" 
}
echo "welcome to umbertutor"
step "to start, let's open a terminal (alt + shift + enter)"
wait_for_action SetupWindow
step "let's run the command launcher (alt + r)"
wait_for_action SetupWindow
step "input 'xeyes' in the command launcher to start xeyes app"
wait_for_action SetupWindow
step "change focus of windows (alt + space)"
wait_for_action SwitchWindow
step "change layout to monocle (alt + f)"
wait_for_action "ChangeLayout monocle"
step "change layout to horizontal (alt + f)"
wait_for_action "ChangeLayout bsph"
step "toggle the window gap (alt + g)"
wait_for_action ToggleGap
step "move to workspace b (alt + b)"
wait_for_action ChangeWorkspace
step "open a terminal (alt + shift + enter)"
wait_for_action SetupWindow
echo "well done ! you can quit umberwm (ctrl + alt + q)"
while true
do
  sleep 1
done

