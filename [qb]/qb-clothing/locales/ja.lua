local Translations = {
    store = {
        barber = "理容店",
        surgeon = "美容整形外科",
        clothing = "服屋",
        outfitchanger = "衣装チェンジャー"
    },

    outfits = {
        roomOutfits = "プリセット",
        myOutfits = "私の衣装",
        character = "服装",
        accessoires = "アクセサリー"
    },

    menu = {
        hair = "髪型",
        character = "服装",
        accessoires = "アクセサリー",
        features = "特徴"
    },

    ui = {
        select = "選択",
        delete = "削除",
        select_outfit = "衣装を選択",
        player_model = "プレイヤーモデル",
        model = "モデル",
        mother = "母親",
        father = "父親",
        texture = "テクスチャ",
        type = "タイプ",
        item = "アイテム",
        skin_color = "肌の色",
        parent_mixer = "親のミックス",
        shape_mix = "形のミックス",
        skin_mix = "肌のミックス",
        arms = "腕",
        undershirt = "シャツ/ベルト",
        color = "色",
        jacket = "ジャケット/トップス",
        vests = "ベスト",
        decals = "デカール",
        acessory = "首のアクセサリー",
        bags = "バッグ",
        pants = "ズボン",
        shoes = "靴",
        eye_color = "目の色",
        moles = "ほくろ/そばかす",
        opacity = "不透明度",
        nose_width = "鼻の幅",
        width = "幅",
        nose_peak_height = "鼻先の高さ",
        height = "高さ",
        nose_peak_length = "鼻先の長さ",
        length = "長さ",
        nose_bone_height = "鼻の骨の高さ",
        nose_peak_lowering = "鼻先の低さ",
        lowering = "低さ",
        nose_bone_twist = "鼻の骨のねじれ",
        twist = "ねじれ",
        eyebrow_height = "眉毛の高さ",
        eyebrow_depth = "眉毛の深さ",
        depth = "深さ",
        cheeks_height = "頬の高さ",
        cheeks_width = "頬の幅",
        cheeks_depth = "頬の深さ",
        eyes_opening = "目の開き具合",
        opening = "開き具合",
        lips_thickness = "唇の厚さ",
        thickness = "厚さ",
        jaw_bone_width = "顎の骨の幅",
        jaw_bone_length = "顎の骨の長さ",
        chin_height = "顎の高さ",
        chin_width = "顎の幅",
        butt_chin = "割れ顎",
        size = "サイズ",
        neck_thickness = "首の太さ",
        ageing = "老化",
        hair = "髪型",
        eyebrow = "眉毛",
        facial_hair = "ひげ",
        lipstick = "口紅",
        blush = "頬紅",
        makeup = "メイク",
        mask = "マスク",
        hat = "帽子",
        glasses = "眼鏡",
        ear_accessories = "耳のアクセサリー",
        watch = "時計",
        bracelet = "ブレスレット",
        btn_confirm = "確定",
        btn_cancel = "キャンセル",
        btn_saveOutfit = "衣装を保存",
        outfit_name = "衣装名"
    },

    notify = {
        error_bracelet = "足首のブレスレットを外すことはできません...",
        info_deleteOutfit = "衣装「%{outfit}」を削除しました！"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end