import os, sys, platform, json, subprocess, winreg

sys.path.append(os.getcwd())
import close_ats

#-------------------------------------------------------------------------------------------
# Agilitest Editor constants
#-------------------------------------------------------------------------------------------

atsProtocols = ["ats", "atsv"]
editorExecFilePath = sys.argv[1]

#-------------------------------------------------------------------------------------------
# Functions
#-------------------------------------------------------------------------------------------

def getWmicValue(command):
	value = subprocess.check_output("wmic " + command + " /format:list").decode()
	return value.replace('\r', '').replace('\n', '').split('=')[1]

def getIpAddresses():
	list = []
	proc = subprocess.run("wmic nicconfig where IPEnabled=true get IPAddress /format:table", shell=True, capture_output=True, text=True, check=True )
	for line in proc.stdout.splitlines():
		line = line.replace('\r', '').replace('\n', '').strip()
		if line != '' and line != 'IPAddress':
			list.append(line.replace('\"', ''))
	return list
	
def set_reg(REG_PATH, name, value):
    try:
        winreg.CreateKey(winreg.HKEY_CURRENT_USER, REG_PATH)
        registry_key = winreg.OpenKey(winreg.HKEY_CURRENT_USER, REG_PATH, 0, winreg.KEY_WRITE)
        winreg.SetValueEx(registry_key, name, 0, winreg.REG_SZ, value)
        winreg.CloseKey(registry_key)
        return True
    except WindowsError:
        return False
		
def createProtocoleRegistry(extension, application):

	path = "SOFTWARE\\Classes\\" + extension
	subPath = path + "\\shell\\open\\command"

	set_reg(path, "URL Protocol", extension)
	set_reg(subPath, "", "\"" + application + "\" \"%1\"")
	
def createLink(path, link):
	if os.path.exists(path):
		try:
			os.unlink(link)
		except:
			pass
			
		try:
			os.symlink(path, link)
		except:
			pass

#-------------------------------------------------------------------------------------------
# Retrieve System data
#-------------------------------------------------------------------------------------------

build = platform.version().split('.')[2]
winVersion = platform.release();
if winVersion == '10':
	if int(build) > 20000:winVersion = '11'

system = {
	"name":platform.system(), 
	"build":build,
	"version":winVersion,
	"ipaddresses":getIpAddresses()
}

names = {
	"computer":os.environ.get('COMPUTERNAME'),
	"user":os.environ.get('USERNAME')
}

folders = {
	"public":os.environ.get('PUBLIC'),
	"ats":os.environ.get('ATS_HOME'),
	"agilitest":os.environ.get('AGILITEST_HOME'),
	"system":os.environ.get('WINDIR'),
	"commonapp":os.environ.get('ALLUSERSPROFILE'),
	"localapp":os.environ.get('LOCALAPPDATA')
}

serials = {
	"processor":getWmicValue("cpu get ProcessorID"),
	"baseboard":getWmicValue("baseboard get SerialNumber"),
	"disk":getWmicValue("diskdrive where DeviceID='\\\\\\\\.\\\\PHYSICALDRIVE0' get SerialNumber"),
	"csprod":getWmicValue("csproduct get uuid")
}

status = {
	"system":system,
	"names":names,
	"folders":folders,
	"serials":serials,
	"agilitestpath":editorExecFilePath
}

print(json.dumps(status))

#-------------------------------------------------------------------------------------------
# Register protocols
#-------------------------------------------------------------------------------------------

for protocol in atsProtocols:
	createProtocoleRegistry(protocol, editorExecFilePath)
	
#-------------------------------------------------------------------------------------------
# Create links
#-------------------------------------------------------------------------------------------

createLink(
	editorExecFilePath,
	os.path.join(os.environ['USERPROFILE'], 'Desktop', "Agilitest-Editor.lnk")
)

#createLink(
#	"D:\\GitLab\\AgilitestEditorGui\\release\\agilitest\\agilitest.exe",
#	os.path.join(os.environ["USERPROFILE"], "Start Menu", "Programs", "Agilitest-Editor.lnk")
#)

#-------------------------------------------------------------------------------------------
# Close all ATS running processes
#-------------------------------------------------------------------------------------------

close_ats.run()

