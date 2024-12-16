local Translations = {
    success = {
        success_message = "成功しました",
        fuses_are_blown = "ヒューズが飛びました",
        door_has_opened = "ドアが開きました"
    },
    error = {
        cancel_message = "キャンセルされました",
        safe_too_strong = "金庫のロックが強すぎるようです...",
        missing_item = "アイテムが足りません...",
        bank_already_open = "銀行は既に開いています...",
        minimum_police_required = "最低 %{police} 人の警察が必要です",
        security_lock_active = "セキュリティロックがアクティブです。ドアの開放は現在不可能です",
        wrong_type = "%{receiver} が引数 '%{argument}' に対して正しいタイプを受け取りませんでした\n受け取ったタイプ: %{receivedType}\n受け取った値: %{receivedValue}\n期待されたタイプ: %{expected}",
        fuses_already_blown = "ヒューズは既に飛んでいます...",
        event_trigger_wrong = "いくつかの条件が満たされなかったため、%{event}%{extraInfo} がトリガーされました。ソース: %{source}",
        missing_ignition_source = "火元がありません"
    },
    general = {
        breaking_open_safe = "金庫をこじ開けています...",
        connecting_hacking_device = "ハッキングデバイスを接続中...",
        fleeca_robbery_alert = "Fleeca銀行強盗の試み",
        paleto_robbery_alert = "Blain County Savings銀行強盗の試み",
        pacific_robbery_alert = "Pacific Standard銀行強盗の試み",
        break_safe_open_option_target = "金庫をこじ開ける",
        break_safe_open_option_drawtext = "[E] 金庫をこじ開ける",
        validating_bankcard = "カードを認証中...",
        thermite_detonating_in_seconds = "テルミットが%{time}秒後に起爆します",
        bank_robbery_police_call = "10-90: 銀行強盗"
    }
}


if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
