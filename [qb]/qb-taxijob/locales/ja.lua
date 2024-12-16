local Translations = {
    error = {
        ['already_mission'] = 'あなたはすでに心なきのミッションに参加している',
        ['not_in_taxi'] = 'あなたはタクシーに乗っていない',
        ['missing_meter'] = 'この車両にはタクシーメーターがありません',
        ['no_vehicle'] = "あなたは車に乗っていない",
        ['not_active_meter'] = 'タクシーメーターが作動していない',
        ['ride_canceled'] = '[客] 何度も事故っているようなら、もう降りる！',
        ['broken_taxi'] = '仕事を再開する前に、タクシーを修理する必要がある！',
        ['crash_warning'] = '[客] あと%d %s事故ったら支払わないぞ！',
        ['time'] = '回',
        ['times'] = '回',
    },
    success = {
        ['mission_cancelled'] = 'ミッション中止',
    },
    info = {
        ['person_was_dropped_off'] = 'お客さんが車を降りた',
        ['npc_on_gps'] = 'お客さんがGPSに表示されます',
        ['go_to_location'] = 'お客さんを指定された場所に連れて行きましょう',
        ['vehicle_parking'] = '[E] 駐車場',
        ['job_vehicles'] = '[E] 仕事用車両',
        ['drop_off_npc'] = '[E] お客さんを降ろす',
        ['call_npc'] = '[E] お客さんを呼ぶ',
        ['blip_name'] = 'ダウンタウン・キャブ',
        ['taxi_label_1'] = 'スタンダード・キャブ',
        ['no_spawn_point'] = 'タクシーを持ち込む場所が見つからない',
        ['taxi_returned'] = 'タクシーの駐車',
        ['on_duty'] = '[E] 出勤する',
        ['off_duty'] = '[E] 退勤する',
        ['tip_received'] = '安全運転だったので ¥%d チップを受け取った',
        ['tip_not_received'] = '今後チップを受け取りたい場合は、事故らないように',
    },
    menu = {
        ['taxi_menu_header'] = 'タクシー車両',
        ['close_menu'] = '⬅ メニューを閉じる',
        ['boss_menu'] = 'ボスメニュー'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end