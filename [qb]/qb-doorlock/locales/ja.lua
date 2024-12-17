local Translations = {
    error = {
        lockpick_fail = "失敗",
        door_not_found = "モデルハッシュを受け取れませんでした。ドアが透明な場合は、ドアの枠を狙ってください。",
        same_entity = "両方のドアが同じエンティティであってはいけません。",
        door_registered = "このドアは既に登録されています。",
        door_identifier_exists = "この識別子を持つドアは既に構成に存在します。（%s）",
    },
    success = {
        lockpick_success = "成功"
    },
    general = {
        locked = "施錠済み",
        unlocked = "解錠済み",
        locked_button = "[E] - 施錠",
        unlocked_button = "[E] - 解錠",
        keymapping_description = "ドアの鍵と操作する",
        keymapping_remotetriggerdoor = "ドアを遠隔操作で開閉する",
        locked_menu = "施錠済み",
        pickable_menu = "ピッキング可能",
        cantunlock_menu = "解錠不可",
        hidelabel_menu = "ドアラベルを非表示",
        distance_menu = "最大距離",
        item_authorisation_menu = "アイテム認証",
        citizenid_authorisation_menu = "CitizenID認証",
        gang_authorisation_menu = "ギャング認証",
        job_authorisation_menu = "ジョブ認証",
        doortype_title = "ドアタイプ",
        doortype_door = "シングルドア",
        doortype_double = "ダブルドア",
        doortype_sliding = "シングルスライドドア",
        doortype_doublesliding = "ダブルスライドドア",
        doortype_garage = "ガレージ",
        dooridentifier_title = "ユニーク識別子",
        doorlabel_title = "ドアラベル",
        configfile_title = "構成ファイル名",
        submit_text = "送信",
        newdoor_menu_title = "新しいドアを追加",
        newdoor_command_description = "ドアロックシステムに新しいドアを追加",
        doordebug_command_description = "デバッグモードを切り替える",
        warning = "警告",
        created_by = "作成者",
        warn_no_permission_newdoor = "%{player}（%{license}）が許可なく新しいドアを追加しようとしました（ソース：%{source}）",
        warn_no_authorisation = "%{player}（%{license}）が認証なしでドアを開けようとしました（送信: %{doorID}）",
        warn_wrong_doorid = "%{player}（%{license}）が無効なドアを更新しようとしました（送信: %{doorID}）",
        warn_wrong_state = "%{player}（%{license}）が無効な状態に更新しようとしました（送信: %{state}）",
        warn_wrong_doorid_type = "%{player}（%{license}）が適切なドアIDを送信しませんでした（送信: %{doorID}）",
        warn_admin_privilege_used = "%{player}（%{license}）が管理者特権を使用してドアを開けました"
    }
}

if GetConvar('qb_locale', 'en') == 'ja' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end