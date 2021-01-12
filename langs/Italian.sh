#!/bin/bash

# Write your translation instead of ##########

# Grafana can completely die after translating, so we should create backup of build folder
echo "Backup in /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Translating started..."

# TimePicker
sed -i 's/"Last 5 minutes"/"Ultimi 5 minuti"/g' app*.js*
sed -i 's/"Last 15 minutes"/"Ultimi 15 minuti"/g' app*.js*
sed -i 's/"Last 30 minutes"/"Ultimi 30 minuti"/g' app*.js*
sed -i 's/"Last 1 hour"/"Ultima ora"/g' app*.js*
sed -i 's/"Last 3 hours"/"Ultime 3 ore"/g' app*.js*
sed -i 's/"Last 6 hours"/"Ultime 6 ore"/g' app*.js*
sed -i 's/"Last 12 hours"/"Ultime 12 ore"/g' app*.js*
sed -i 's/"Last 24 hours"/"Ultime 24 ore"/g' app*.js*
sed -i 's/"Last 2 days"/"Ultimi 2 giorni"/g' app*.js*
sed -i 's/"Last 7 days"/"Ultimi 7 giorni"/g' app*.js*
sed -i 's/"Last 30 days"/"Ultimi 30 giorni"/g' app*.js*
sed -i 's/"Last 90 days"/"Ultimi 90 giorni"/g' app*.js*
sed -i 's/"Last 6 months"/"Ultimi 6 mesi"/g' app*.js*
sed -i 's/"Last 1 year"/"Ultimo anno"/g' app*.js*
sed -i 's/"Last 2 years"/"Ultimi 2 anni"/g' app*.js*
sed -i 's/"Last 5 years"/"Ultimi 5 anni"/g' app*.js*
sed -i 's/"Yesterday"/"Ieri"/g' app*.js*
sed -i 's/"Day before yesterday"/"Altroieri"/g' app*.js*
sed -i 's/"This day last week"/"Questo giorno nella scorsa settimana"/g' app*.js*
sed -i 's/"Previous week"/"Settimana precedente"/g' app*.js*
sed -i 's/"Previous month"/"Mese precedente"/g' app*.js*
sed -i 's/"Previous year"/"Anno precedente"/g' app*.js*
sed -i 's/"Today"/"Oggi"/g' app*.js*
sed -i 's/"Today so far"/"Oggi fino all'\''ora corrente"/g' app*.js*
sed -i 's/"This week"/"Questa settimana"/g' app*.js*
sed -i 's/"This week so far"/"Questa settimana fino all'\''ora corrente"/g' app*.js*
sed -i 's/"This month"/"Questo mese"/g' app*.js*
sed -i 's/"This month so far"/"Questo mese fino all'\''ora corrente"/g' app*.js*
sed -i 's/"This year"/"Quest'\''anno"/g' app*.js*
sed -i 's/"This year so far"/"Quest'\''anno fino all'\''ora corrente"/g' app*.js*
sed -i 's/"Next 30 minutes"/"Prossimi 30 minuti"/g' app*.js*

sed -i 's/"Russian Federation"/"Federazione russa"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"Sembra che il timepicker non sia stato mai usato prima. Quando gli intervalli temporali saranno inseriti appariranno tra gli intervalli temporali utilizzati di recente."/g' app*.js*
sed -i 's/"Read the documentation"/"Leggi la documentazione"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/"per sapere di più sull'\''inserimento di intervalli temporali personalizzati."/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"Intervalli assoluti usati di recente"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"Intervalli relativi usati di recente"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"Intervallo assoluto")/g' app*.js*
sed -i 's/"Apply time range"/"Applica intervallo temporale"/g' app*.js*
sed -i 's/"Browser Time"/"Ora Browser"/g' app*.js*
sed -i 's/"Change time zone"/"Cambia fuso orario"/g' app*.js*
sed -i 's/"Other quick ranges"/"Altri intervalli"/g' app*.js*
sed -i 's/"From"/"Da"/g' app*.js*
sed -i 's/"To"/"A"/g' app*.js*

sed -i 's/"Local browser time"/"Fuso orario browser locale"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"a")/g' app*.js*

# Login page
sed -i 's/"Welcome to Grafana"/"Benvenuti in Grafana"/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"Non perderti tra i dati | Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"Il tuo pannello di controllo | Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"Costruito meglio insieme | Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"Dati accessibili a tutti | Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"Email o username"/g' app*.js*
sed -i 's/"Password"/"Password"/g' app*.js*
sed -i 's/"Forgot your password?"/"Password dimenticata?"/g' app*.js*
sed -i 's/"Log in"/"Accedi"/g' app*.js*
sed -i 's/"Logged in"/"Connesso"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="email o username"/g' app*.js* # Not working yet, idk why 
sed -i 's/placeholder="password"/placeholder="password"/g' app*.js* # Not working yet, idk why 
sed -i 's/"Logging in..."/"Accesso in corso..."/g' app*.js*
sed -i 's/"Email or username is required"/"Email o username obbligatori"/g' app*.js*
sed -i 's/"Password is required"/"Password obbligatoria"/g' app*.js*

# Other (not sorted yet)
sed -i 's/title:"Dashboards"/title:"Dashboards"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"Salva dashboard"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"Impostazioni dashboard"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"Aggiungi pannello"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"Modalità rotazione"/g' app*.js*
sed -i 's/"Time range zoom out "/"Zoom intervallo indietro "/g' app*.js*
sed -i 's/"Mark as favorite"/"Aggiungi ai preferiti"/g' app*.js*
sed -i 's/"Share dashboard"/"Condividi dashboard"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"Salva valori variabili correnti come predefiniti per la dashboard"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"Salva intervallo temporale corrente come predefinito per la dashboard"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"Aggiungi nota descrittiva..."/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"Salva dashboard"/g' app*.js*
sed -i 's/"Save"/"Salva"/g' app*.js*
sed -i 's/"Cancel"/"Annulla"/g' app*.js*
sed -i 's/" ago"/" fa"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"Premi ESC per uscire dalla modalità Kiosk"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"Aggiorna dashboard"/g' app*.js*

sed -i 's/"Jan"/"Gen"/g' app*.js*
sed -i 's/"Feb"/"Feb"/g' app*.js*
sed -i 's/"Mar"/"Mar"/g' app*.js*
sed -i 's/"Apr"/"Apr"/g' app*.js*
sed -i 's/"May"/"Mag"/g' app*.js*
sed -i 's/"Jun"/"Giu"/g' app*.js*
sed -i 's/"Jul"/"Lug"/g' app*.js*
sed -i 's/"Aug"/"Ago"/g' app*.js*
sed -i 's/"Sep"/"Set"/g' app*.js*
sed -i 's/"Oct"/"Ott"/g' app*.js*
sed -i 's/"Nov"/"Nov"/g' app*.js*
sed -i 's/"Dec"/"Dic"/g' app*.js*

sed -i 's/"Mon"/"Lun"/g' app*.js*
sed -i 's/"Tue"/"Mar"/g' app*.js*
sed -i 's/"Wed"/"Mer"/g' app*.js*
sed -i 's/"Thu"/"Gio"/g' app*.js*
sed -i 's/"Fri"/"Ven"/g' app*.js*
sed -i 's/"Sat"/"Sab"/g' app*.js*
sed -i 's/"Sun"/"Dom"/g' app*.js*

sleep 5
sudo service grafana-server restart
echo "Translating done! Clear browser cache to see changes! (CTRL+F5)"
