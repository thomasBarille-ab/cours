// configure maven
mavenPlugin = Jenkins.instance.getExtensionList(hudson.tasks.Maven.DescriptorImpl.class)[0]
maven3Install = mavenPlugin.installations.length > 0
if(!maven3Install) {
    newMavenInstall = new hudson.tasks.Maven.MavenInstallation('MAVEN_HOME', null,
            [new hudson.tools.InstallSourceProperty([new hudson.tasks.Maven.MavenInstaller("3.6.3")])]
    )

    mavenPlugin.installations = newMavenInstall
    mavenPlugin.save()
}
// configure JDK
desc = Jenkins.instance.getDescriptor("hudson.model.JDK")
desc.setInstallations(new JDK("JAVA_HOME", jdkHome, []))
desc.save()