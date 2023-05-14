import subprocess, os

#-------------------------------------------------------------------------------------------
# Agilitest Editor constants
#-------------------------------------------------------------------------------------------

editorListenerClass = "com.agilitest.editor.listener.EditorListener"

#-------------------------------------------------------------------------------------------

def closeProc(pid):
	subprocess.call(['taskkill', '/F', '/T', '/PID', pid], stderr=subprocess.DEVNULL, stdout=subprocess.DEVNULL)

def closeDriver(name):
	proc = subprocess.run("wmic process where \"commandline like '%" + name + "%' and not commandline like '%wmic process%'\" get processid", shell=True, capture_output=True, text=True, check=True )
	for line in proc.stdout.splitlines():
		if line != '' and not 'ProcessId' in line :
			closeProc(line.replace('\"', ''))

def closeDrivers(folder):
	files = os.listdir(folder)
	for f in files:
		if f.endswith(".exe"):
			closeDriver(f)

def run():
	proc = subprocess.run("wmic process where \"commandline like '%" + editorListenerClass + "%' and not commandline like '%wmic process%'\" get processid", shell=True, capture_output=True, text=True, check=True )
	for line in proc.stdout.splitlines():
		if line != '' and not 'ProcessId' in line :
			closeProc(line.replace('\"', ''))

if __name__ == '__main__':
    run()
    #TODO send drivers folder to process
    #closeDrivers('D:\\ats libs\\drivers')