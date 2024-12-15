local Translations = {
    error = {
        ['already_mission'] = 'あなたはすでにNPCのミッションに参加している',
        ['not_in_taxi'] = 'あなたはタクシーに乗っていない',
        ['missing_meter'] = 'この車両にはタクシーメーターがありません',
        ['no_vehicle'] = "あなたは車に乗っていない",
        ['not_active_meter'] = 'タクシーメーターが作動していない',
        ['ride_canceled'] = '何度もクラッシュしているようなら、乗車はキャンセルだ！',
        ['broken_taxi'] = '仕事を再開する前に、タクシーを修理する必要がある！',
        ['crash_warning'] = 'If you crash %d more %s the customer will stop the ride and you will not be paid! さらに%d%sクラッシュした場合、顧客は乗車を中止し、あなたには報酬が支払われません！',
        ['time'] = '時間',
        ['times'] = '回',
    },
    success = {
        ['mission_cancelled'] = 'ミッション中止',
    },
    info = {
        ['person_was_dropped_off'] = '降車された',
        ['npc_on_gps'] = 'NPCはGPSに表示されます',
        ['go_to_location'] = 'NPCを指定された場所に連れて行く',
        ['vehicle_parking'] = '[E] 駐車場',
        ['job_vehicles'] = '[E] 仕事用車両',
        ['drop_off_npc'] = '[E] NPCを降ろす',
        ['call_npc'] = '[E] NPCを呼ぶ',
        ['blip_name'] = 'ダウンタウン・キャブ',
        ['taxi_label_1'] = 'スタンダード・キャブ',
        ['no_spawn_point'] = 'タクシーを持ち込む場所が見つからない',
        ['taxi_returned'] = 'タクシーの駐車',
        ['on_duty'] = '[E] 勤務に就く',
        ['off_duty'] = '[E] 退勤する',
        ['tip_received'] = 'You have been tipped $%d for your safe driving 安全運転でチップを受け取った',
        ['tip_not_received'] = '今後チップを受け取りたい場合は、タクシーを衝突させないように',
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