local Translations = {
    error = {
        not_in_range = '市役所から遠すぎます'
    },
    success = {
        recived_license = 'あなたは%{value}を$50で受け取りました'
    },
    info = {
        new_job_app = 'あなたの申請書は(%{job})のボスに送信されました',
        bilp_text = '市のサービス',
        city_services_menu = '~g~E~w~ - 市のサービスメニュー',
        id_card = 'IDカード',
        driver_license = '運転免許証',
        weaponlicense = '銃器所持許可証',
        new_job = '新しい仕事が決まりました！おめでとうございます (%{job})',
    },
    email = {
        jobAppSender = "%{job}",
        jobAppSub = "%{job} へのご応募ありがとうございます。",
        jobAppMsg = "こんにちは %{gender} %{lastname}<br /><br />%{job} はあなたの応募書類を受け取りました。<br /><br />ボスがあなたのリクエストを確認し、できるだけ早く面接のために連絡をします。<br /><br />改めて、ご応募ありがとうございます。",
        mr = '様',
        mrs = '様',
        sender = 'タウンシップ',
        subject = '運転レッスンのリクエスト',
        message = 'こんにちは %{gender} %{lastname}<br /><br />誰かが運転レッスンを受けたいとのメッセージを受け取りました<br />教える意思がある場合は、以下の方にご連絡ください:<br />名前: <strong>%{firstname} %{lastname}</strong><br />電話番号: <strong>%{phone}</strong><br/><br/>よろしくお願いいたします,<br />ロスサントス タウンシップ'
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end