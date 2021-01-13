#!/bin/bash

# Write your translation instead of ##########

# Grafana может полностью умереть после перевода, поэтому обязательно нужно создать бэкап папки build
echo "Taisu bekapu (rezerves kopiju) mapē /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Sāku tulkošanu..."

# TimePicker
sed -i 's/"Last 5 minutes"/"Pēdējās 5 minūtes"/g' app*.js*
sed -i 's/"Last 15 minutes"/"Pēdējās 15 minūtes"/g' app*.js*
sed -i 's/"Last 30 minutes"/"Pēdējās 30 minūtes"/g' app*.js*
sed -i 's/"Last 1 hour"/"Pēdējo 1 stundu"/g' app*.js*
sed -i 's/"Last 3 hours"/"Pēdējās 3 stundas"/g' app*.js*
sed -i 's/"Last 6 hours"/"Pēdējās 6 stundas"/g' app*.js*
sed -i 's/"Last 12 hours"/"Pēdējās 12 stundas"/g' app*.js*
sed -i 's/"Last 24 hours"/"Pēdējās 24 stundas"/g' app*.js*
sed -i 's/"Last 2 days"/"Pēdējās 2 dienas"/g' app*.js*
sed -i 's/"Last 7 days"/"Pēdējās 7 dienas"/g' app*.js*
sed -i 's/"Last 30 days"/"Pēdējās 30 dienas"/g' app*.js*
sed -i 's/"Last 90 days"/"Pēdējās 90 dienas"/g' app*.js*
sed -i 's/"Last 6 months"/"Pēdējos 6 mēnešus"/g' app*.js*
sed -i 's/"Last 1 year"/"Pēdējo 1 gadu"/g' app*.js*
sed -i 's/"Last 2 years"/"Pēdējoa 2 gadus"/g' app*.js*
sed -i 's/"Last 5 years"/"Pēdējos 5 gadus"/g' app*.js*
sed -i 's/"Yesterday"/"Vakar"/g' app*.js*
sed -i 's/"Day before yesterday"/"Aizvakar"/g' app*.js*
sed -i 's/"This day last week"/"Šajā pašā dienā nedēļu atpakaļ"/g' app*.js*
sed -i 's/"Previous week"/"Iepriekšējā nedēļa"/g' app*.js*
sed -i 's/"Previous month"/"Iepriekšējais mēnesis"/g' app*.js*
sed -i 's/"Previous year"/"Iepriekšējais gads"/g' app*.js*
sed -i 's/"Today"/"Šodien"/g' app*.js*
sed -i 's/"Today so far"/"Šodien (līdz šim laikam)"/g' app*.js*
sed -i 's/"This week"/"Šonedēļ"/g' app*.js*
sed -i 's/"This week so far"/"Šonedēļ (līdz šim laikam)"/g' app*.js*
sed -i 's/"This month"/"Šomēnes"/g' app*.js*
sed -i 's/"This month so far"/"Šomēnes (līdz šim laikam)"/g' app*.js*
sed -i 's/"This year"/"Šogad"/g' app*.js*
sed -i 's/"This year so far"/"Šogad (līdz šim laikam)"/g' app*.js*
sed -i 's/"Next 30 minutes"/"Nākamās 30 minūtes"/g' app*.js*

sed -i 's/"Latvia"/"Latvija"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"Izskatās, jūs iepriekš neizmantojāt šo laika norādīšanas rīku. Tiklīdz jūs norādīsiet kādus laika intervālus, nesen izmantotie intervāli parādīsies šeit"/g' app*.js*
sed -i 's/"Read the documentation"/"Lasiet dokumentāciju"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/", lai uzzinātu vairāk par to, kā ievadīt pielāgotus laika diapazonus."/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"Nesen izmantotie laika diapazoni"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"Relatīvie laika diapazoni"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"Avsolūtie laika diapazoni")/g' app*.js*
sed -i 's/"Apply time range"/"Pielietot laika diapazonu"/g' app*.js*
sed -i 's/"Browser Time"/"Pārlūka laiks"/g' app*.js*
sed -i 's/"Change time zone"/"Nomainīt laika joslu"/g' app*.js*
sed -i 's/"Other quick ranges"/"Citi (ātrie) diapazoni"/g' app*.js*
sed -i 's/"From"/"No"/g' app*.js*
sed -i 's/"To"/"Līdz"/g' app*.js*

sed -i 's/"Local browser time"/"Pārlūka vietējais laiks"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"līdz")/g' app*.js*

# Страница входа
sed -i 's/"Welcome to Grafana"/"Laipni gaidīti Grafanā"/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"Nestājies ceļā datiem | Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"Jūsu vienīgā stikla rūts | Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"Labāks - izveidots kopā | Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"Visiem pieejami dati | Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"Epasts vai logins"/g' app*.js*
sed -i 's/"Password"/"Parole"/g' app*.js*
sed -i 's/"Forgot your password?"/"Aizmirsāt paroli?"/g' app*.js*
sed -i 's/"Log in"/"Ielogoties"/g' app*.js*
sed -i 's/"Logged in"/"Ielogojies"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="epasts vai logins"/g' app*.js*
sed -i 's/placeholder="password"/placeholder="parole"/g' app*.js*
sed -i 's/"Logging in..."/"Notiek ielogošanās..."/g' app*.js*
sed -i 's/"Email or username is required"/"Ievadiet epastu vai loginu"/g' app*.js*
sed -i 's/"Password is required"/"Ievadiet paroli"/g' app*.js*

# Прочее (еще не отсортировано)
sed -i 's/title:"Dashboards"/title:"InfoPaneļi"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"Saglabāt izmaiņas"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"InfoPaneļa iestatījumi"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"Pievienot paneli"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"Pārslēgt skata režīmu"/g' app*.js*
sed -i 's/"Time range zoom out "/"Samazināt laika intervāla mēgogu "/g' app*.js*
sed -i 's/"Mark as favorite"/"Pievienot favorītiem"/g' app*.js*
sed -i 's/"Share dashboard"/"Dalīties ar InfoPaneli"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"Saglabāt pašreizējās vērtības kā InfoPaneļa noklusējumu"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"Saglabājiet pašreizējo laika diapazonu kā InfoPaneļa noklusējumu"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"Pievienot piezīmes, kas apraksta izmaiņas..."/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"Saglabāt InfoPaneli"/g' app*.js*
sed -i 's/"Save"/"Saglabāt"/g' app*.js*
sed -i 's/"Cancel"/"Atcelt"/g' app*.js*
sed -i 's/" ago"/" atpakaļ"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"Nospiest ESC, lai izietu no Kioska režīma (atgrieztos standarta režīmā)"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"Aktualizēt InfoPaneli"/g' app*.js*

sed -i 's/"Jan"/"Jan"/g' app*.js*
sed -i 's/"Feb"/"Feb"/g' app*.js*
sed -i 's/"Mar"/"Mar"/g' app*.js*
sed -i 's/"Apr"/"Apr"/g' app*.js*
sed -i 's/"May"/"Mai"/g' app*.js*
sed -i 's/"Jun"/"Jun"/g' app*.js*
sed -i 's/"Jul"/"Jūl"/g' app*.js*
sed -i 's/"Aug"/"Aug"/g' app*.js*
sed -i 's/"Sep"/"Sep"/g' app*.js*
sed -i 's/"Oct"/"Okt"/g' app*.js*
sed -i 's/"Nov"/"Nov"/g' app*.js*
sed -i 's/"Dec"/"Dec"/g' app*.js*

sed -i 's/"Mon"/"Pr"/g' app*.js*
sed -i 's/"Tue"/"Ot"/g' app*.js*
sed -i 's/"Wed"/"Tr"/g' app*.js*
sed -i 's/"Thu"/"Ce"/g' app*.js*
sed -i 's/"Fri"/"Pk"/g' app*.js*
sed -i 's/"Sat"/"Se"/g' app*.js*
sed -i 's/"Sun"/"Sv"/g' app*.js*

sleep 5
sudo service grafana-server restart
echo "Tulkojums pabegts! Iztīriet pārlūka kešatmiņu, lai redzētu izmaiņas! (CTRL+F5)"
