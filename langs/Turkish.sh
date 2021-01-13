#!/bin/bash

# Write your translation instead of ##########

# Grafana can completely die after translating, so we should create backup of build folder
echo "Backup in /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

echo "Translating started..."

# TimePicker
sed -i 's/"Last 5 minutes"/"Son 5 dakika"/g' app*.js*
sed -i 's/"Last 15 minutes"/"Son 15 dakika"/g' app*.js*
sed -i 's/"Last 30 minutes"/"Son 30 dakika"/g' app*.js*
sed -i 's/"Last 1 hour"/"Son 1 saat"/g' app*.js*
sed -i 's/"Last 3 hours"/"Son 3 saat"/g' app*.js*
sed -i 's/"Last 6 hours"/"Son 6 saat"/g' app*.js*
sed -i 's/"Last 12 hours"/"Son 12 saat"/g' app*.js*
sed -i 's/"Last 24 hours"/"Son 24 saat"/g' app*.js*
sed -i 's/"Last 2 days"/"Son 2 gün"/g' app*.js*
sed -i 's/"Last 7 days"/"Son 7 gün"/g' app*.js*
sed -i 's/"Last 30 days"/"Son 30 gün"/g' app*.js*
sed -i 's/"Last 90 days"/"Son 90 gün"/g' app*.js*
sed -i 's/"Last 6 months"/"Son 6 ay"/g' app*.js*
sed -i 's/"Last 1 year"/"Son 1 yıl"/g' app*.js*
sed -i 's/"Last 2 years"/"Son 2 yıl"/g' app*.js*
sed -i 's/"Last 5 years"/"Son 5 yıl"/g' app*.js*
sed -i 's/"Yesterday"/"Dün"/g' app*.js*
sed -i 's/"Day before yesterday"/"Evvelsi gün"/g' app*.js*
sed -i 's/"This day last week"/"Geçen hafta bugün"/g' app*.js*
sed -i 's/"Previous week"/"Geçen hafta"/g' app*.js*
sed -i 's/"Previous month"/"Geçen ay"/g' app*.js*
sed -i 's/"Previous year"/"Geçen yıl"/g' app*.js*
sed -i 's/"Today"/"Bugün"/g' app*.js*
sed -i 's/"Today so far"/"Şu ana kadar bugün"/g' app*.js*
sed -i 's/"This week"/"Bu hafta"/g' app*.js*
sed -i 's/"This week so far"/"Şu ana kadar bu hafta"/g' app*.js*
sed -i 's/"This month"/"Bu ay"/g' app*.js*
sed -i 's/"This month so far"/"Şu ana kadar bu ay"/g' app*.js*
sed -i 's/"This year"/"Bu yıl"/g' app*.js*
sed -i 's/"This year so far"/"Şu ana kadar bu yıl"/g' app*.js*
sed -i 's/"Next 30 minutes"/"Sonraki 30 dakika"/g' app*.js*

sed -i 's/"Turkey"/"Türkiye"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"Tarih seçici daha önce kullanılmamış. Bir tarih aralığı seçildiğinde, son kullanılan aralıklar burada gösterilecektir"/g' app*.js*
sed -i 's/"Read the documentation"/"Belgelendirmeden"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/" tarih aralıkları hakkında daha fazla bilgi edinebilirsiniz."/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"Son kullanılan aralıklar"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"Zaman aralıkları"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"Zaman aralığı")/g' app*.js*
sed -i 's/"Apply time range"/"Zaman aralığını uygula"/g' app*.js*
sed -i 's/"Browser Time"/"Tarayıcı zamanı"/g' app*.js*
sed -i 's/"Change time zone"/"Saat dilimini değiştir"/g' app*.js*
sed -i 's/"Other quick ranges"/"Diğer zaman aralıkları"/g' app*.js*
sed -i 's/"From"/"Başlangıç zamanı"/g' app*.js*
sed -i 's/"To"/"E Bitiş zamanı"/g' app*.js*

sed -i 's/"Local browser time"/"Yerel tarayıcı zamanı"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"")/g' app*.js* # cannot find the word location

# Login page
sed -i 's/"Welcome to Grafana"/"Grafana'\''a Hoşgeldiniz "/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"Verinin yolundan çekilin | Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"Tek pencereniz | Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"Birlikte daha iyiye | Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"Veri yaygınlaştırılmalı | Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"E-posta adresi veya kullanıcı adı"/g' app*.js*
sed -i 's/"Password"/"Şifre"/g' app*.js*
sed -i 's/"Forgot your password?"/"Şifremi unuttum!"/g' app*.js*
sed -i 's/"Log in"/"Giriş yap"/g' app*.js*
sed -i 's/"Logged in"/"Giriş yapıldı"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="e-posta adresi veya kullanıcı adı"/g' app*.js* # Not working yet, idk why 
sed -i 's/placeholder="password"/placeholder="şifre"/g' app*.js* # Not working yet, idk why 
sed -i 's/"Logging in..."/"Giriş yapılıyor..."/g' app*.js*
sed -i 's/"Email or username is required"/"E-posta adresi veya kullanıcı adı gerekli"/g' app*.js*
sed -i 's/"Password is required"/"Şifre gerekli"/g' app*.js*

# Other (not sorted yet)
sed -i 's/title:"Dashboards"/title:"Panolar"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"Panoyu kaydet"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"Pano ayarları"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"Panel ekle"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"Görüntü modunu değiştir"/g' app*.js*
sed -i 's/"Time range zoom out "/"Zaman aralığını uzaklaştır "/g' app*.js*
sed -i 's/"Mark as favorite"/"Favorilere ekle"/g' app*.js*
sed -i 's/"Share dashboard"/"Panoyu paylaş"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"Mevcut değişkenleri pano varsayılanı olarak kaydet"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"Mevcut zaman aralığını pano varsayılanı olarak kaydet"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"Değişiklikleriniz için not ekleyin..."/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"Panoyu kaydet"/g' app*.js*
sed -i 's/"Save"/"Kaydet"/g' app*.js*
sed -i 's/"Cancel"/"Vazgeçi"/g' app*.js*
sed -i 's/" ago"/" önce"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"Kiosk modunu kapatmak ESC'\''e basın"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"Panoyu yenile"/g' app*.js*

sed -i 's/"Jan"/"Oca"/g' app*.js*
sed -i 's/"Feb"/"Şub"/g' app*.js*
sed -i 's/"Mar"/"Mar"/g' app*.js*
sed -i 's/"Apr"/"Nis"/g' app*.js*
sed -i 's/"May"/"May"/g' app*.js*
sed -i 's/"Jun"/"Haz"/g' app*.js*
sed -i 's/"Jul"/"Tem"/g' app*.js*
sed -i 's/"Aug"/"Ağu"/g' app*.js*
sed -i 's/"Sep"/"Eyl"/g' app*.js*
sed -i 's/"Oct"/"Eki"/g' app*.js*
sed -i 's/"Nov"/"Kas"/g' app*.js*
sed -i 's/"Dec"/"Ara"/g' app*.js*

sed -i 's/"Mon"/"Pzt"/g' app*.js*
sed -i 's/"Tue"/"Sal"/g' app*.js*
sed -i 's/"Wed"/"Çar"/g' app*.js*
sed -i 's/"Thu"/"Per"/g' app*.js*
sed -i 's/"Fri"/"Cum"/g' app*.js*
sed -i 's/"Sat"/"Cmt"/g' app*.js*
sed -i 's/"Sun"/"Paz"/g' app*.js*

sed -i 's/"Selected (",n.length,")"/"Seçili (",n.length,")"/g' app*.js* # in variables list (multiple selection)
sed -i 's/"Type to search (country, city, abbreviation)"/"Aramak için yazın (ülke, şehir, kısaltma)"/g' app*.js*
sed -i 's/"Default"/"Varsayılan"/g' app*.js*

sleep 5
sudo service grafana-server restart
echo "Translating done! Clear browser cache to see changes! (CTRL+F5)"
