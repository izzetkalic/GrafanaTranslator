#!/bin/bash

# Grafana может полностью умереть после перевода, поэтому обязательно нужно создать бэкап папки build
echo "Делаю бэкап в 'C:\Program Files\GrafanaLabs\grafana\public\backup\'"
cp -r "C:\\Program Files\\GrafanaLabs\\grafana\\public\\build\\" "C:\\Program Files\\GrafanaLabs\\grafana\\public\\backup\\"

cd "C:\Program Files\GrafanaLabs\grafana\public\build"
pwd
echo "Начинаю перевод..."

# TimePicker
sed -i 's/"Last 5 minutes"/"Последние 5 минут"/g' app*.js*
sed -i 's/"Last 15 minutes"/"Последние 15 минут"/g' app*.js*
sed -i 's/"Last 30 minutes"/"Последние 30 минут"/g' app*.js*
sed -i 's/"Last 1 hour"/"Последний 1 час"/g' app*.js*
sed -i 's/"Last 3 hours"/"Последние 3 часа"/g' app*.js*
sed -i 's/"Last 6 hours"/"Последние 6 часов"/g' app*.js*
sed -i 's/"Last 12 hours"/"Последние 12 часов"/g' app*.js*
sed -i 's/"Last 24 hours"/"Последние 24 часа"/g' app*.js*
sed -i 's/"Last 2 days"/"Последние 2 дня"/g' app*.js*
sed -i 's/"Last 7 days"/"Последние 7 дней"/g' app*.js*
sed -i 's/"Last 30 days"/"Последние 30 дней"/g' app*.js*
sed -i 's/"Last 90 days"/"Последние 90 дней"/g' app*.js*
sed -i 's/"Last 6 months"/"Последние 6 месяцев"/g' app*.js*
sed -i 's/"Last 1 year"/"Последние 1 год"/g' app*.js*
sed -i 's/"Last 2 years"/"Последние 2 года"/g' app*.js*
sed -i 's/"Last 5 years"/"Последние 5 лет"/g' app*.js*
sed -i 's/"Yesterday"/"Вчера"/g' app*.js*
sed -i 's/"Day before yesterday"/"Позавчера"/g' app*.js*
sed -i 's/"This day last week"/"В этот день неделю назад"/g' app*.js*
sed -i 's/"Previous week"/"Прошлая неделя"/g' app*.js*
sed -i 's/"Previous month"/"Прошлый месяц"/g' app*.js*
sed -i 's/"Previous year"/"Прошлый год"/g' app*.js*
sed -i 's/"Today"/"Сегодня"/g' app*.js*
sed -i 's/"Today so far"/"Сегодня (до текущего времени)"/g' app*.js*
sed -i 's/"This week"/"Эта неделя"/g' app*.js*
sed -i 's/"This week so far"/"Эта неделя (до текущего времени)"/g' app*.js*
sed -i 's/"This month"/"Этот месяц"/g' app*.js*
sed -i 's/"This month so far"/"Этот месяц (до текущего времени)"/g' app*.js*
sed -i 's/"This year"/"Этот год"/g' app*.js*
sed -i 's/"This year so far"/"Этот год (до текущего времени)"/g' app*.js*
sed -i 's/"Next 30 minutes"/"Следующие 30 минут"/g' app*.js*

sed -i 's/"Russian Federation"/"Российская Федерация"/g' app*.js*

sed -i 's/"It looks like you haven'\''t used this timer picker before. As soon as you enter some time intervals, recently used intervals will appear here."/"Похоже, вы раньше не пользовались этим средством выбора времени."/g' app*.js*
sed -i 's/"Read the documentation"/"Прочтите документацию"/g' app*.js*
sed -i 's/" to find out more about how to enter custom time ranges."/", чтобы узнать больше о том, как вводить пользовательские временные диапазоны."/g' app*.js*

sed -i 's/title:"Recently used absolute ranges"/title:"Недавно использованные временные интервалы"/g' app*.js*
sed -i 's/title:"Relative time ranges"/title:"Относительные временные интервалы"/g' app*.js*
sed -i 's/(d,null,"Absolute time range")/(d,null,"Абсолютный временной интервал")/g' app*.js*
sed -i 's/"Apply time range"/"Применить временной интервал"/g' app*.js*
sed -i 's/"Browser Time"/"Браузерное время"/g' app*.js*
sed -i 's/"Change time zone"/"Сменить часовой пояс"/g' app*.js*
sed -i 's/"Other quick ranges"/"Другие диапазоны"/g' app*.js*
sed -i 's/"From"/"От"/g' app*.js*
sed -i 's/"To"/"До"/g' app*.js*

sed -i 's/"Local browser time"/"Браузерное время"/g' app*.js*
sed -i 's/{className:"text-center"},"to")/{className:"text-center"},"до")/g' app*.js*

# Страница входа
sed -i 's/"Welcome to Grafana"/"Добро пожаловать в Grafana"/g' app*.js*
sed -i 's/"Don'\''t get in the way of the data"/"Powered by Grafana"/g' app*.js*
sed -i 's/"Your single pane of glass"/"Powered by Grafana"/g' app*.js*
sed -i 's/"Built better together"/"Powered by Grafana"/g' app*.js*
sed -i 's/"Democratising data"/"Powered by Grafana"/g' app*.js*

sed -i 's/"Email or username"/"Email или логин"/g' app*.js*
sed -i 's/"Password"/"Пароль"/g' app*.js*
sed -i 's/"Forgot your password?"/"Забыли пароль?"/g' app*.js*
sed -i 's/"Log in"/"Войти"/g' app*.js*
sed -i 's/"Logged in"/"Вход в систему"/g' app*.js*
sed -i 's/placeholder="email or username"/placeholder="email или логин"/g' app*.js*
sed -i 's/placeholder="password"/placeholder="пароль"/g' app*.js*
sed -i 's/"Logging in..."/"Вход..."/g' app*.js*
sed -i 's/"Email or username is required"/"Введите Email или логин"/g' app*.js*
sed -i 's/"Password is required"/"Введите пароль"/g' app*.js*

## Прочее (еще не отсортировано)
sed -i 's/title:"Dashboards"/title:"Дашборды"/g' app*.js*
sed -i 's/tooltip:"Save dashboard"/tooltip:"Сохранить изменения"/g' app*.js*
sed -i 's/tooltip:"Dashboard settings"/tooltip:"Настройки дашборда"/g' app*.js*
sed -i 's/tooltip:"Add panel"/tooltip:"Добавить панель"/g' app*.js*
sed -i 's/tooltip:"Cycle view mode"/tooltip:"Переключить режим просмотра"/g' app*.js*
sed -i 's/"Time range zoom out "/"Уменьшить масштаб временного интервала "/g' app*.js*
sed -i 's/"Mark as favorite"/"Добавить в избранное"/g' app*.js*
sed -i 's/"Share dashboard"/"Поделиться дашбордом"/g' app*.js*
sed -i 's/label:"Save current variable values as dashboard default"/label:"Сохранить текущие переменные по умолчанию для дашборда"/g' app*.js*
sed -i 's/label:"Save current time range as dashboard default"/label:"Сохранить текущий временной интервал по умолчанию для дашборда"/g' app*.js*
sed -i 's/placeholder:"Add a note to describe your changes..."/placeholder:"Добавьте отметки, описывающие изменения..."/g' app*.js*
sed -i 's/title:"Save dashboard"/title:"Сохранение дашборда"/g' app*.js*
sed -i 's/"Save"/"Сохранить"/g' app*.js*
sed -i 's/"Cancel"/"Отменить"/g' app*.js*
sed -i 's/" ago"/" назад"/g' app*.js*
sed -i 's/"Press ESC to exit Kiosk mode"/"Нажмите ESC, чтобы вернуть стандартный режим просмотра"/g' app*.js*
sed -i 's/tooltip:"Refresh dashboard"/tooltip:"Обновить дашборд"/g' app*.js*

sed -i 's/"Jan"/"Янв"/g' app*.js*
sed -i 's/"Feb"/"Фев"/g' app*.js*
sed -i 's/"Mar"/"Мар"/g' app*.js*
sed -i 's/"Apr"/"Апр"/g' app*.js*
sed -i 's/"May"/"Май"/g' app*.js*
sed -i 's/"Jun"/"Июн"/g' app*.js*
sed -i 's/"Jul"/"Июл"/g' app*.js*
sed -i 's/"Aug"/"Авг"/g' app*.js*
sed -i 's/"Sep"/"Сен"/g' app*.js*
sed -i 's/"Oct"/"Окт"/g' app*.js*
sed -i 's/"Nov"/"Ноя"/g' app*.js*
sed -i 's/"Dec"/"Дек"/g' app*.js*

sed -i 's/"Mon"/"Пн"/g' app*.js*
sed -i 's/"Tue"/"Вт"/g' app*.js*
sed -i 's/"Wed"/"Ср"/g' app*.js*
sed -i 's/"Thu"/"Чт"/g' app*.js*
sed -i 's/"Fri"/"Пт"/g' app*.js*
sed -i 's/"Sat"/"Сб"/g' app*.js*
sed -i 's/"Sun"/"Вс"/g' app*.js*

sed -i 's/"Selected (",n.length,")"/"Выбрано (",n.length,")"/g' app*.js* # in variables list (multiple selection)
sed -i 's/"Type to search (country, city, abbreviation)"/"Введите для поиска (страна, город, аббревиатура)"/g' app*.js*
sed -i 's/"Default"/"По умолчанию"/g' app*.js*

## ДОБАВЛЕНО 05.07.2021
echo "Перевожу в прочих js-файлах..."
sed -i 's/"Absolute time range"/"Абсолютный временной интервал"/g' app*.js*
sed -i 's/"Share dashboard or panel"/"Поделиться дашбордом или панелью"/g' app*.js*
sed -i 's/"Save"/"Сохранить"/g' app*.js*
sed -i 's/"Search dashboards by name"/"Найти дашборды по имени"/g' app*.js*

echo "Перевожу в Dashboards..."
sed -i 's/"New Dashboard"/"Новый дашборд"/g' *Dashboard*.js*
sed -i 's/"New Folder"/"Новая папка"/g' *Dashboard*.js*
sed -i 's/"Import"/"Импортировать"/g' *Dashboard*.js*
sed -i 's/"Go to folder"/"Открыть папку"/g' *Dashboard*.js*
sed -i 's/"Sort (A-Z)"/"Сортировать (А-Я)"/g' *Dashboard*.js*
sed -i 's/"Alphabetically (A-Z)"/"По алфавиту (А-Я)"/g' *Dashboard*.js*

sed -i 's/"Add annotation"/"Добавить аннотацию"/g' *Dashboard*.js*
sed -i 's/"Description"/"Описание"/g' *Dashboard*.js*
sed -i 's/"Tags"/"Теги"/g' *Dashboard*.js*
sed -i 's/"Save"/"Сохранить"/g' *Dashboard*.js*
sed -i 's/"Cancel"/"Отменить"/g' *Dashboard*.js*
sed -i 's/"Filter by starred"/"Отмеченные звёздочкой"/g' *Dashboard*.js*

sed -i 's/"Filter by tag"/"Фильтр по тегу"/g' *Dashboard*.js*

echo "Перевожу в Alert..."
sed -i 's/"Search alerts"/"Найти предупреждения"/g' *Alert*.js*
sed -i 's/"How to add an alert"/"Как добавить предупреждение"/g' *Alert*.js*
sed -i 's/"States"/"Состояния"/g' *Alert*.js*

echo "Перевожу в Notifications..."
sed -i 's/"Notifications"/"Уведомления"/g' *Notifications*.js*
sed -i 's/"Add channel"/"Добавить канал"/g' *Notifications*.js*

echo "Перевожу в Playlists..."
sed -i 's/"Create Playlist"/"Создать плейлист"/g' *Playlist*.js*

echo "Перевожу в Configuration - Organization..."
sed -i 's/"New org"/"Новая организация"/g' *Org*.js*
sed -i 's/"Update organization name"/"Обновить имя организации"/g' *Org*.js*
sed -i 's/"Organization profile"/"Профиль организации"/g' *Org*.js*
sed -i 's/"Organization name"/"Название организации"/g' *Org*.js*
sed -i 's/"Update organization name"/"Обновить название организации"/g' *Org*.js*
sed -i 's/"Preferences"/"Настройки"/g' *Org*.js*
sed -i 's/"UI Theme"/"Тема графического интерфейса"/g' *Org*.js*
sed -i 's/"Home Dashboard"/"Основной дашборд"/g' *Org*.js*
sed -i 's/"Timezone"/"Временная зона"/g' *Org*.js*
sed -i 's/"Save"/"Сохранить"/g' *Org*.js*

echo "Перевожу в Configuration - Data sources..."
sed -i 's/"Add data source"/"Добавить источник данных"/g' *DataSource*.js*
sed -i 's/"Search by name or type"/"Найти по имени или типу"/g' *DataSource*.js*

echo "Перевожу в Configuration - Users..."
sed -i 's/"New user"/"Новый пользователь"/g' *UsersList*.js*
sed -i 's/"New user"/"Новый пользователь"/g' *Admin*.js*
sed -i 's/"Invite"/"Пригласить"/g' *UsersList*.js*
sed -i 's/"New user"/"Новый пользователь"/g' *UsersList*.js*
sed -i 's/"New user"/"Новый пользователь"/g' *Admin*.js*
sed -i 's/"Invite"/"Пригласить"/g' *UsersList*.js*
sed -i 's/"Login"/"Логин"/g' *UsersList*.js*
sed -i 's/"Login"/"Логин"/g' *Admin*.js*
sed -i 's/"Email"/"Электронная почта"/g' *UsersList*.js*
sed -i 's/"Email"/"Электронная почта"/g' *Admin*.js*
sed -i 's/"Name"/"Имя"/g' *UsersList*.js*
sed -i 's/"Name"/"Имя"/g' *Admin*.js*
sed -i 's/"Seen"/"Замечен"/g' *UsersList*.js*
sed -i 's/"Seen"/"Замечен"/g' *Admin*.js*
sed -i 's/"Role"/"Роль"/g' *UsersList*.js*
sed -i 's/"Role"/"Роль"/g' *Admin*.js*
sed -i 's/"Search user by login, email or name"/"Найти пользователя по логину, почте или имени"/g' *UsersList*.js*
sed -i 's/"Search user by login, email, or name."/"Найти пользователя по логину, почте или имени"/g' *Admin*.js*

echo "Перевожу в Teams..."
sed -i 's/"New team"/"Новая команда"/g' *Team*.js*

echo "Перевожу в Configuration - API keys..."
sed -i 's/"Add API Key"/"Добавить API ключ"/g' *ApiKeysPage*.js*
sed -i 's/"Key name"/"Имя ключа"/g' *ApiKeysPage*.js*
sed -i 's/"Role"/"Роль"/g' *ApiKeysPage*.js*
sed -i 's/"Time to live"/"Время жизни"/g' *ApiKeysPage*.js*
sed -i 's/"Add"/"Добавить"/g' *ApiKeysPage*.js*
sed -i 's/"New API key"/"Новый API ключ"/g' *ApiKeysPage*.js*

echo "Перевожу в Configuration - Plugins..."
sed -i 's/"Search by name, author, description or type"/"Найти по имени, автору, описанию или типу"/g' *Plugin*.js*
sed -i 's/"Find more plugins on Grafana.com"/"Скачайте больше плагинов с Grafana.com"/g' *Plugin*.js*

echo "Перевожу в Configuration - Teams..."
sed -i 's/"New team"/"Новая команда"/g' *Team*.js*
sed -i 's/"ProTip: Assign folder and dashboard permissions to teams instead of users to ease administration."/"Подсказка: назначьте папку и доступы к дашбордам команде, а не отдельным пользователям, чтобы упростить администрирование"/g' *Team*.js*


#echo "Перевожу Главное меню..."
# NO RESULT, main menu files seem to be somewhere outside of grafana folder
##cd "C:\Program Files\GrafanaLabs\grafana\public\app\features\dashboard\components\PanelEditor"
#pwd
#sed -i 's/"Manage"/"Управление"/g' app*.js*
#sed -i 's/"Playlists"/"Плейлисты"/g' app*.js*
#sed -i 's/"Snapshots"/"Снимки"/g' app*.js*
#sed -i 's/"Library panels"/"Панели библиотеки"/g' app*.js*
#sed -i 's/"Dashboards"/"Дашборды"/g' app*.js*
#sed -i 's/"Configuration"/"Конфигурация"/g' app*.js*
#sed -i 's/"Server Admin"/"Администрирование"/g' app*.js*
#sed -i 's/"Data sources"/"Источники данных"/g' app*.js*
#sed -i 's/"Users"/"Пользователи"/g' app*.js*
#sed -i 's/"Teams"/"Команды"/g' app*.js*
#sed -i 's/"Plugins"/"Плагины"/g' app*.js*
#sed -i 's/"Preferences"/"Настройки"/g' app*.js*
#sed -i 's/"API keys"/"API ключи"/g' app*.js*

# Работает, но не надо - исчезает поле ввода SQL-запроса в редакторе
#sed -i 's/"default"/"по умолчанию"/g' app*.js*


sleep 5
service grafana-server restart
echo "Перевод завершен! Очистите кэш браузера, чтобы увидеть изменения! (CTRL+F5)"