scriptdir = CreateObject("Scripting.FileSystemObject").GetParentFolderName(WScript.ScriptFullName) & "\"

Set objShell = CreateObject("Wscript.Shell")
objShell.CurrentDirectory = scriptdir

objShell.Run "FindDevEnv.cmd " & WScript.Arguments(0), 0, False

Set objShell = Nothing
