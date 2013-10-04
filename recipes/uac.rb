## Powershell for reference
# function Disable-UserAccessControl {
#     Set-ItemProperty -Path registry::HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System -Name EnableLUA -Value 0
#     # Write-Host "User Access Control (UAC) has been disabled." -ForegroundColor Green
#     Set-ItemProperty "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System" -Name "ConsentPromptBehaviorAdmin" -Value 00000000
#     # Write-Host "User Access Control (UAC) notification has been disabled." -ForegroundColor Green
#     }
# Disable-UserAccessControl



registry_key 'HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [
    {
    :name => 'EnableLUA',
    :type => :dword,
    :data => 0
  }]
end

registry_key 'HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [{
    :name => 'ConsentPromptBehaviorAdmin',
    :type => :dword,
    :data => 00000000
  }]
end
