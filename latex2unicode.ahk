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

; Algebra
:O?C:\pm::±
:O?C:\times::×
:O?C:\cdot::⋅
:O?C:\approx::≈
:O?C:\approxeq::≊
:O?C:\neq::≠
:O?C:\leq::≤
:O?C:\geq::≥
:O?C:\geqq::≦
:O?C:\geqq::≧
:O?C:\prec::≺
:O?C:\succ::≻
:O?C:\preceq::⪯
:O?C:\succeq::⪰

; Super-script
:O?C:^0::⁰
:O?C:^1::¹
:O?C:^2::²
:O?C:^3::³
:O?C:^4::⁴
:O?C:^5::⁵
:O?C:^6::⁶
:O?C:^7::⁷
:O?C:^8::⁸
:O?C:^9::⁹
:O?C:^+::⁺
:O?C:^-::⁻
:O?C:^(::⁽
:O?C:^)::⁾
:O?C:^n::ⁿ
; Sub-script
:O?C:_0::₀
:O?C:_1::₁
:O?C:_2::₂
:O?C:_3::₃
:O?C:_4::₄
:O?C:_5::₅
:O?C:_6::₆
:O?C:_7::₇
:O?C:_8::₈
:O?C:_9::₉
:O?C:_+::₊
:O?C:_-::₋
:O?C:_(::₍
:O?C:_)::₎
:O?C:_n::ₙ

; Alphanumeric Styles
:O?C:\mathbb{C}::ℂ
:O?C:\mathbb{R}::ℝ
:O?C:\mathbb{Q}::ℚ
:O?C:\mathbb{Z}::ℤ
:O?C:\mathbb{N}::ℕ
:O?C:\mathcal{B}::ℬ
:O?C:\mathcal{E}::ℰ
:O?C:\mathcal{L}::ℒ
:O?C:\mathcal{M}::ℳ
:O?C:\mathcal{N}::𝒩
:O?C:\mathcal{P}::𝒫

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
:O?C:\equiv::≡
:O?C:\nequiv::≢
:O?C:\therefore::∴

; Delimeters
:O?C:\lfloor::⌊
:O?C:\rfloor::⌋
:O?C:\lceil::⌈
:O?C:\rceil::⌉
:O?C:\langle::〈
:O?C:\rangle::〉
:O?C:\circ::∘

; Arrows
:O?C:\leftarrow::←
:O?C:\uparrow::↑
:O?C:\rightarrow::→
:O?C:\downarrow::↓
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

; Greek Letters
:O?C:\Alpha::Α
:O?C:\alpha::α
:O?C:\Beta::Β
:O?C:\beta::β
:O?C:\Gamma::Γ
:O?C:\gamma::γ
:O?C:\Delta::Δ
:O?C:\delta::δ
:O?C:\Epsilon::Ε
:O?C:\epsilon::ε
:O?C:\digamma::ϛ
:O?C:\stigma::ϛ
:O?C:\Zeta::Ζ
:O?C:\zeta::ζ
:O?C:\Eta::Η
:O?C:\eta::η
:O?C:\Theta::Θ
:O?C:\theta::θ
:O?C:\Iota::Ι
:O?C:\iota::ι
:O?C:\Kappa::Κ
:O?C:\kappa::κ
:O?C:\Lambda::Λ
:O?C:\lambda::λ
:O?C:\Mu::Μ
:O?C:\mu::μ
:O?C:\Nu::Ν
:O?C:\nu::ν
:O?C:\Xi::Ξ
:O?C:\xi::ξ
:O?C:\Omicron::Ο
:O?C:\omicron::ο
:O?C:\Pi::Π
:O?C:\pi::π
:O?C:\koppa::ϟ
:O?C:\Rho::Ρ
:O?C:\rho::ρ
:O?C:\Sigma::Σ
:O?C:\sigma::σ
:O?C:\Tau::Τ
:O?C:\tau::τ
:O?C:\Upsilon::Υ
:O?C:\upsilon::υ
:O?C:\Phi::Φ
:O?C:\phi::φ
:O?C:\Chi::Χ
:O?C:\chi::χ
:O?C:\Psi::Ψ
:O?C:\psi::ψ
:O?C:\Omega::Ω
:O?C:\omega::ω

; Miscellaneous
:O?C:\qedsymbol::∎