#SingleInstance, Force
#KeyHistory, 0
SetBatchLines, -1
ListLines, Off
SendMode Input ; Forces Send and SendRaw to use SendInput buffering for speed.
SetTitleMatchMode, 3 ; A window's title must exactly match WinTitle to be a match.
SetWorkingDir, %A_ScriptDir%
SplitPath, A_ScriptName, , , , thisscriptname
#MaxThreadsPerHotkey, 1 ; no re-entrant hotkey handling
; DetectHiddenWindows, On
; SetWinDelay, -1 ; Remove short delay done automatically after every windowing command except IfWinActive and IfWinExist
; SetKeyDelay, -1, -1 ; Remove short delay done automatically after every keystroke sent by Send or ControlSend
; SetMouseDelay, -1 ; Remove short delay done automatically after Click and MouseMove/Click/Drag

#Hotstring EndChars `n

/*
O ← EndChars are not printed
? ← hotstring is triggered even if preceded by other letters
C ← hotstring is case-sensitive
*/

; Logic and Set notation
:O?C:\neg::¬
:O?C:\land::∧
:O?C:\wedge::∧
:O?C:\lor::∨
:O?C:\vee::∨
:O?C:\oplus::⊕
:O?C:\forall::∀
:O?C:\exists::∃
:O?C:\nexists::∄
:O?C:\varnothing::∅
:O?C:\in::∈
:O?C:\notin::∉
:O?C:\ni::∋
:O?C:\nni::∌
:O?C:\subset::⊂
:O?C:\nsubset::⊄
:O?C:\supset::⊃
:O?C:\nsupset::⊅
:O?C:\subseteq::⊆
:O?C:\supseteq::⊇
:O?C:\cap::∩
:O?C:\cup::∪
:O?C:\neq::≠
:O?C:\equiv::≡
:O?C:\nequiv::≢

; Arrows
:O?C:\leftarrow::←
:O?C:\uparrow::↑
:O?C:\rightarrow::→
:O?C:\leftrightarrow::↓
:O?C:\leftrightarrow::↔
:O?C:\updownarrow::↕
:O?C:\mapsto::↦
:O?C:\mapsfrom::↤
:O?C:\mapsup::↥
:O?C:\mapsdown::↧
:O?C:\leftarrowtail::↢
:O?C:\rightarrowtail::↣
:O?C:\nleftarrow::↚
:O?C:\nrightarrow::↛
:O?C:\Leftarrow::⇐
:O?C:\Rightarrow::⇒
:O?C:\Uparrow::⇑
:O?C:\Downarrow::⇓
:O?C:\Leftrightarrow::⇔
:O?C:\Updownarrow::⇕
:O?C:\longleftarrow::⟵
:O?C:\longrightarrow::⟶
:O?C:\longleftrightarrow::⟷
:O?C:\Longleftarrow::⟸
:O?C:\Longrightarrow::⟹
:O?C:\Longleftrightarrow::⟺
