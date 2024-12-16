local Translations = {
    success = {
        withdraw = '出金成功',
        deposit = '入金成功',
        transfer = '振込成功',
        account = 'アカウント作成',
        rename = 'アカウント名変更',
        delete = 'アカウント削除',
        userAdd = 'ユーザー追加',
        userRemove = 'ユーザー削除',
        card = 'カード作成',
        give = '%s円を渡しました',
        receive = '%s円を受け取りました',
    },
    error = {
        error = 'エラーが発生しました',
        access = '権限がありません',
        account = 'アカウントが見つかりません',
        accounts = '最大数のアカウントが作成されています',
        user = 'ユーザーはすでに追加されています',
        noUser = 'ユーザーが見つかりません',
        money = 'お金が足りません',
        pin = '無効なPIN',
        card = '銀行カードが見つかりません',
        amount = '無効な金額',
        toofar = '遠すぎます',
    },
    progress = {
        atm = 'ATMにアクセス中...',
    }
}



if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end