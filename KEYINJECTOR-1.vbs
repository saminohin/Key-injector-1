Rem Author: Hacker01

Dim enter, delay,GUI, counter  
Dim pow_shell_1, pow_shell_2 

Set key_press = CreateObject("wscript.shell")

pow_shell_1="$shell = New-Object -ComObject ""Shell.Application"""
pow_shell_2 = "$shell.minimizeall"+"{(}"+"{)}"

delay = 100
counter = 0 
enter = "{Enter}"
GUI = "^{ESCAPE}"


Public Sub Openpowershell() 
       key_press.run "powershell.exe"
       wscript.sleep delay 
       key_press.sendkeys pow_shell_1
       wscript.sleep delay
       key_press.sendkeys enter 
       wscript.sleep delay 
       key_press.sendkeys pow_shell_2
       wscript.sleep delay 
       key_press.sendkeys enter
    
End Sub 

Public Sub Sendpayload()
       Do While counter < 3
          key_press.sendkeys "echo hello" 
          wscript.sleep delay
          key_press.sendkeys enter 
          counter = counter + 1

        Loop  
        Msgbox "Script has ended"

End Sub



call Openpowershell()
call Sendpayload()