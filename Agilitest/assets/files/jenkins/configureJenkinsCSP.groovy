//update CSP
csp = System.getProperty("hudson.model.DirectoryBrowserSupport.CSP");
cspConfig = "style-src 'self' 'unsafe-inline'";
if(csp != null && csp.contains("style-src")) {
    cspSplitted = csp.split(";");
    for (i = 0; i <cspSplitted.length; i++) {
        if(cspSplitted[i].contains("style-src")) {
            csp = csp.replace(cspSplitted[i], cspConfig)
        }
    }
    System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", csp);
} else {
    System.setProperty("hudson.model.DirectoryBrowserSupport.CSP", csp + " " + cspConfig + ";");
}