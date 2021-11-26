WinWait, Adobe Digital Editions
; extremely unreliable, sleeping 1000ms fails often
Sleep, 10000 ; wait to render
Send, ^+U ; open auth dialog
Sleep, 10000 ; wait to render
Send, {Tab} ; go from email to password
Sleep, 10000
Send, {Tab} ; go from password to create
Sleep, 10000
Send, {Tab} ; go from create to forgot
Sleep, 10000
Send, {Tab} ; go from forgot to checkbox
Sleep, 10000
Send, {Space} ; set checkbox
Sleep, 10000
Send, {Tab} ; go from checkbox to no
Sleep, 10000
Send, {Tab} ; go from no to yes
Sleep, 10000
Send, {Enter} ; authorize
Sleep, 10000
Send, {Enter} ; confirm local authorize
Sleep, 10000 ; wait for OK/fail
; take screenshot here
Send, {Enter} ; close information box
Sleep, 10000
Send, ^q ; close ADE
