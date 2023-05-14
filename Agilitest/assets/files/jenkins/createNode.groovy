// createNode
jnlpLauncher = new JNLPLauncher();
jnlpLauncher.setWebSocket(true);
DumbSlave dumb = new DumbSlave(slaveName, slaveDirectory, jnlpLauncher);
dumb.numExecutors = 1;
dumb.labelString = atsExecutor;
dumb.mode = Mode.EXCLUSIVE;
dumb.nodeDescription = slaveDescription;
Jenkins.instance.addNode(dumb);