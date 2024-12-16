local Translations = {
    error = {
        already_driving_bus = '既にバスを運転しています',
        not_in_bus = 'バスに乗っていません',
        one_bus_active = 'バスは1台しか使用できません',
        drop_off_passengers = '仕事を終える前に乗客を降ろしてください',
        exploit = "不正行為の試み"
    },
    success = {
        dropped_off = '乗客を降ろしました',
    },
    info = {
        bus = '標準バス',
        goto_busstop = 'バス停に向かう',
        busstop_text = '[E] バスを止める',
        bus_plate = 'BUS', -- 3または4文字の長さ（ランダムな4桁の数字を使用）
        bus_depot = 'バス車庫',
        bus_stop_work = '[E] 仕事を終える',
        bus_job_vehicles = '[E] 仕事用車両'
    },
    menu = {
        bus_header = 'バス車両',
        bus_close = '⬅ メニューを閉じる'
    }
}


if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
