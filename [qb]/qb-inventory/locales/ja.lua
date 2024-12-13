local Translations = {
    progress = {
        ['snowballs'] = '雪玉を集めています',
    },
    notify = {
        ['failed'] = '失敗しました',
        ['canceled'] = 'キャンセルされました',
        ['vlocked'] = '車両がロックされています',
        ['notowned'] = 'このアイテムを所有していません',
        ['missitem'] = 'このアイテムを持っていません',
        ['nonb'] = '近くに誰もいません',
        ['noaccess'] = 'アクセスできません',
        ['nosell'] = 'このアイテムを売ることはできません..',
        ['itemexist'] = 'アイテムが存在しません',
        ['notencash'] = '十分な現金がありません..',
        ['noitem'] = '適切なアイテムを持っていません..',
        ['gsitem'] = '自分自身にアイテムを与えることはできません？',
        ['tftgitem'] = 'アイテムを渡すには遠すぎます',
        ['infound'] = '渡そうとしたアイテムが見つかりません',
        ['iifound'] = '不正なアイテムが見つかりました　もう一度試してください',
        ['gitemrec'] = '受け取ったアイテム: ',
        ['gitemfrom'] = ' 受け取り元: ',
        ['gitemyg'] = '渡したアイテム: ',
        ['gitinvfull'] = '相手のインベントリがいっぱいです',
        ['giymif'] = 'あなたのインベントリがいっぱいです',
        ['gitydhei'] = 'アイテムが十分ではありません',
        ['gitydhitt'] = '転送するアイテムが十分ではありません',
        ['navt'] = '無効なタイプです',
        ['anfoc'] = '引数が正しく入力されていません',
        ['yhg'] = 'アイテムを渡しました',
        ['cgitem'] = 'アイテムを渡すことができません',
        ['idne'] = 'アイテムが存在しません',
        ['pdne'] = 'プレイヤーがオンラインではありません',
    },
    inf_mapping = {
        ['opn_inv'] = 'インベントリを開く',
        ['tog_slots'] = 'キーバインドスロットを切り替える',
        ['use_item'] = 'スロットのアイテムを使用する: ',
    },
    menu = {
        ['vending'] = '自動販売機',
        ['bin'] = 'ゴミ箱を開く',
        ['craft'] = 'クラフト',
        ['o_bag'] = 'バッグを開く',
    },
    interaction = {
        ['craft'] = '~g~E~w~ - クラフト',
    },
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
