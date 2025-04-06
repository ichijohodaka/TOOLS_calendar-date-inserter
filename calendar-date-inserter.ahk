; Ctrl+Shift+Dでカレンダー表示
^+d::
    Gui, Add, MonthCal, vMyDate
    Gui, Add, Button, Default gSubmitDate, OK
    Gui, Show,, 日付を選択
return

SubmitDate:
    Gui, Submit
    FormatTime, formattedDate, %MyDate%, yyyy-MM-dd  ; 形式変更可能
    SendInput %formattedDate%
    Gui, Destroy
return
