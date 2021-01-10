#!/bin/bash

# Write your translation instead of ##########

# Grafana can completely die after translating, so we should create backup of build folder
echo "Backup in /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Translating started..."

# TimePicker
sed -i 's/"Last 5 minutes"/"##########"/g' app*.js*
sed -i 's/"Last 15 minutes"/"##########"/g' app*.js*
sed -i 's/"Last 30 minutes"/"##########"/g' app*.js*
sed -i 's/"Last 1 hour"/"##########"/g' app*.js*
sed -i 's/"Last 3 hours"/"##########"/g' app*.js*
sed -i 's/"Last 6 hours"/"##########"/g' app*.js*
sed -i 's/"Last 12 hours"/"##########"/g' app*.js*
sed -i 's/"Last 24 hours"/"##########"/g' app*.js*
sed -i 's/"Last 2 days"/"##########"/g' app*.js*
sed -i 's/"Last 7 days"/"##########"/g' app*.js*
sed -i 's/"Last 30 days"/"##########"/g' app*.js*
sed -i 's/"Last 90 days"/"##########"/g' app*.js*
sed -i 's/"Last 6 months"/"##########"/g' app*.js*
sed -i 's/"Last 1 year"/"##########"/g' app*.js*
sed -i 's/"Last 2 years"/"##########"/g' app*.js*
sed -i 's/"Last 5 years"/"##########"/g' app*.js*
sed -i 's/"Yesterday"/"##########"/g' app*.js*
sed -i 's/"Day before yesterday"/"##########"/g' app*.js*
sed -i 's/"This day last week"/"##########"/g' app*.js*
sed -i 's/"Previous week"/"##########"/g' app*.js*
sed -i 's/"Previous month"/"##########"/g' app*.js*
sed -i 's/"Previous year"/"##########"/g' app*.js*
sed -i 's/"Today"/"##########"/g' app*.js*
sed -i 's/"Today so far"/"##########"/g' app*.js*
sed -i 's/"This week"/"##########"/g' app*.js*
sed -i 's/"This week so far"/"##########"/g' app*.js*
sed -i 's/"This month"/"##########"/g' app*.js*
sed -i 's/"This month so far"/"##########"/g' app*.js*
sed -i 's/"This year"/"##########"/g' app*.js*
sed -i 's/"This year so far"/"##########"/g' app*.js*
sed -i 's/"Next 30 minutes"/"##########"/g' app*.js*

sed -i 's/"Russian Federation"/"##########"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"##########"/g' app*.js*
sed -i 's/"Read the documentation"/"##########"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/"##########"/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"##########"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"##########"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"##########")/g' app*.js*
sed -i 's/"Apply time range"/"##########"/g' app*.js*
sed -i 's/"Browser Time"/"##########"/g' app*.js*
sed -i 's/"Change time zone"/"##########"/g' app*.js*
sed -i 's/"Other quick ranges"/"##########"/g' app*.js*
sed -i 's/"From"/"##########"/g' app*.js*
sed -i 's/"To"/"##########"/g' app*.js*

sed -i 's/"Local browser time"/"##########"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"##########")/g' app*.js*

# Login page
sed -i 's/"Welcome to Grafana"/"##########"/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"########## | Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"########## | Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"########## | Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"########## | Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"##########"/g' app*.js*
sed -i 's/"Password"/"##########"/g' app*.js*
sed -i 's/"Forgot your password?"/"##########"/g' app*.js*
sed -i 's/"Log in"/"##########"/g' app*.js*
sed -i 's/"Logged in"/"##########"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="##########"/g' app*.js* # Not working yet, idk why 
sed -i 's/placeholder="password"/placeholder="##########"/g' app*.js* # Not working yet, idk why 
sed -i 's/"Logging in..."/"##########"/g' app*.js*
sed -i 's/"Email or username is required"/"##########"/g' app*.js*
sed -i 's/"Password is required"/"##########"/g' app*.js*

# Other (not sorted yet)
sed -i 's/title:"Dashboards"/title:"##########"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"##########"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"##########"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"##########"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"##########"/g' app*.js*
sed -i 's/"Time range zoom out "/"########## "/g' app*.js*
sed -i 's/"Mark as favorite"/"##########"/g' app*.js*
sed -i 's/"Share dashboard"/"##########"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"##########"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"##########"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"##########"/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"##########"/g' app*.js*
sed -i 's/"Save"/"##########"/g' app*.js*
sed -i 's/"Cancel"/"##########"/g' app*.js*
sed -i 's/" ago"/" ##########"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"##########"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"##########"/g' app*.js*

sed -i 's/"Jan"/"##########"/g' app*.js*
sed -i 's/"Feb"/"##########"/g' app*.js*
sed -i 's/"Mar"/"##########"/g' app*.js*
sed -i 's/"Apr"/"##########"/g' app*.js*
sed -i 's/"May"/"##########"/g' app*.js*
sed -i 's/"Jun"/"##########"/g' app*.js*
sed -i 's/"Jul"/"##########"/g' app*.js*
sed -i 's/"Aug"/"##########"/g' app*.js*
sed -i 's/"Sep"/"##########"/g' app*.js*
sed -i 's/"Oct"/"##########"/g' app*.js*
sed -i 's/"Nov"/"##########"/g' app*.js*
sed -i 's/"Dec"/"##########"/g' app*.js*

sed -i 's/"Mon"/"##########"/g' app*.js*
sed -i 's/"Tue"/"##########"/g' app*.js*
sed -i 's/"Wed"/"##########"/g' app*.js*
sed -i 's/"Thu"/"##########"/g' app*.js*
sed -i 's/"Fri"/"##########"/g' app*.js*
sed -i 's/"Sat"/"##########"/g' app*.js*
sed -i 's/"Sun"/"##########"/g' app*.js*

sleep 5
sudo service grafana-server restart
echo "Translating done! Clear browser cache to see changes! (CTRL+F5)"
