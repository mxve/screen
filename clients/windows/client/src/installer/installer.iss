; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppExeName "screen-sbs.exe"
#define MyAppName "screen.sbs"
#define MyAppVersion GetVersionNumbersString('..\client\client\bin\x64\Release\screen-sbs.exe')
#define MyAppPublisher "mxve"
#define MyAppURL "https://screen.sbs"


[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
VersionInfoVersion={#MyAppVersion}
AppId={{3EC7AFDE-6ECB-41CE-A236-06FEC0236AFC}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={autopf}\{#MyAppName}
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
PrivilegesRequiredOverridesAllowed=commandline
OutputBaseFilename=setup
SetupIconFile=favicon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern
UninstallDisplayIcon={app}\{#MyAppExeName}

[UninstallDelete]
Type: filesandordirs; Name: "{userappdata}\screen.sbs"

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "..\client\client\bin\x64\Release\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\client\client\bin\x64\Release\ScreenRecorderLib.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "..\client\client\bin\x64\Release\InputHelper.dll"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon
[Icons]
Name: "{usersendto}\Upload using screen.sbs"; Filename: "{app}\{#MyAppExeName}" 

[Registry]
Root: "HKCU"; Subkey: "SOFTWARE\Microsoft\Windows\CurrentVersion\Run"; ValueType: string; ValueName: "screen.sbs"; ValueData: "{app}\{#MyAppExeName}"; Flags: uninsdeletevalue
[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

