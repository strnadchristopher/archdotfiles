killall -q polybar

echo "---" | tee -a /tmp/polybar1.log /tmp/polybar2.log /tmp/polybar3.log
polybar one 2>&1 | tee -a /tmp/polybar1.log & disown
polybar two 2>&1 | tee -a /tmp/polybar2.log & disown
polybar three 2>&1 | tee -a /tmp/polybar3.log & disown
polybar four 2>&1 | tee -a /tmp/polybar4.log & disown
echo "Bars launched..."
