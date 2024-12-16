local Translations = {
    error = {
        no_people_nearby = "近くにプレイヤーがいません",
        no_vehicle_found = "車両が見つかりません",
        extra_deactivated = "エクストラ %{extra} が無効になりました",
        extra_not_present = "この車両にはエクストラ %{extra} がありません",
        not_driver = "あなたはこの車両の運転手ではありません",
        vehicle_driving_fast = "この車両は速すぎます",
        seat_occupied = "この席は占有されています",
        race_harness_on = "レースハーネスを装着しているため、切り替えできません",
        obj_not_found = "リクエストされたオブジェクトを作成できませんでした",
        not_near_ambulance = "救急車の近くにいません",
        far_away = "遠すぎます",
        stretcher_in_use = "この担架は既に使用中です",
        not_kidnapped = "この人物を誘拐していません",
        trunk_closed = "トランクは閉じています",
        cant_enter_trunk = "このトランクに入れません",
        already_in_trunk = "既にトランクにいます",
        someone_in_trunk = "トランクに誰かがいます"
    },
    progress = {
        flipping_car = "車両をひっくり返し中.."
    },
    success = {
        extra_activated = "エクストラ %{extra} が有効になりました",
        entered_trunk = "トランクに入りました"
    },
    info = {
        no_variants = "これにはバリアントがないようです",
        wrong_ped = "このペッドモデルではこのオプションは使用できません",
        nothing_to_remove = "削除するものがないようです",
        already_wearing = "既に着用しています",
        switched_seats = "現在 %{seat} にいます"
    },
    general = {
        command_description = "ラジアルメニューを開く",
        push_stretcher_button = "[E] - 担架を押す",
        stop_pushing_stretcher_button = "~g~E~w~ - 押すのを停止",
        lay_stretcher_button = "[G] - 担架に寝る",
        push_position_drawtext = "ここを押す",
        get_off_stretcher_button = "[G] - 担架から降りる",
        get_out_trunk_button = "[E] トランクから出る",
        close_trunk_button = "[G] トランクを閉じる",
        open_trunk_button = "[G] トランクを開ける",
        getintrunk_command_desc = "トランクに入る",
        putintrunk_command_desc = "プレイヤーをトランクに入れる"
    },
    options = {
        emergency_button = "緊急ボタン",
        driver_seat = "運転席",
        passenger_seat = "助手席",
        other_seats = "他の席",
        rear_left_seat = "後部左席",
        rear_right_seat = "後部右席"
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
