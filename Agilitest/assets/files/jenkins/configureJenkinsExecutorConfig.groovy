// executor settings
Jenkins.instance.computers.each { computer ->
    nodeName = ""
    if(computer instanceof jenkins.model.Jenkins.MasterComputer) {
        for(item in computer.assignedLabels){
            if(!item.equals("ats-executor")) {
                nodeName = item.toString();
            }
        }
    } else {
        nodeName = computer.node.selfLabel.name
    }

    if(nodeName == envVarKey) {
        computer.node.setMode(hudson.model.Node.Mode.EXCLUSIVE)
        computer.node.setLabelString("ats-executor")
        computer.node.setNumExecutors(1)
    }
}
Jenkins.instance.save()
