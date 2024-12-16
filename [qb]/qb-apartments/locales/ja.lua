local Translations = {
    error = {
        to_far_from_door = 'ドアベルから遠すぎます',
        nobody_home = '家に誰もいません..',
        nobody_at_door = 'ドアに誰もいません...'
    },
    success = {
        receive_apart = 'あなたはアパートを取得しました',
        changed_apart = 'あなたはアパートを移動しました',
    },
    info = {
        at_the_door = '誰かがドアの前にいます！',
    },
    text = {
        options = '[E] アパートのオプション',
        enter = 'アパートに入る',
        ring_doorbell = 'ドアベルを鳴らす',
        logout = 'キャラクターをログアウト',
        change_outfit = '衣装を変更',
        open_stash = '隠し場所を開く',
        move_here = 'ここに移動',
        open_door = 'ドアを開ける',
        leave = 'アパートを出る',
        close_menu = '⬅ メニューを閉じる',
        tennants = 'テナント',
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
