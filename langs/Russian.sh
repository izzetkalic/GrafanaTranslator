#!/bin/bash

# Grafana может полностью умереть после перевода, поэтому обязательно нужно создать бэкап папки build
echo "Делаю бэкап в /usr/share/grafana/public/backup"
sudo cp -r /usr/share/grafana/public/build/ /usr/share/grafana/public/backup/
cd /usr/share/grafana/public/build

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

# Прочее (еще не отсортировано)
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

sleep 5
sudo service grafana-server restart
echo "Перевод завершен! Очистите кэш браузера, чтобы увидеть изменения! (CTRL+F5)"
