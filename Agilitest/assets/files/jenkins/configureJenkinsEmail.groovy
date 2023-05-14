// set email and jenkins url
jenkinsLocationConfiguration = JenkinsLocationConfiguration.get()
jenkinsLocationConfiguration.setUrl(jenkinsUrl)
jenkinsLocationConfiguration.setAdminAddress(emailAdmin)
jenkinsLocationConfiguration.save()