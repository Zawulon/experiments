#Generating HTML using xstl transform built-in WebBrowser to generate html from xml file.

XML file must tell to browser what kind of transformation will be used

envy.xml:
> &lt;?xml version="1.0" encoding="utf-8"?&gt;  
> &lt;?xml-stylesheet type="text/xsl" href="enviroments.xslt"?&gt;  
> &lt;enviroments&gt;  
> &lt;.... xml content ...&gt;

enviroments.xslt
> &lt;?xml version="1.0" encoding="utf-8"?&gt;  
> &lt;xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"&gt;  	
> &lt;xsl:template match="/enviroments"&gt;  
> &lt; ... rest of transformation ...&gt;  

It easy to see correlation between xml tag &lt;enviroments&gt; and xslt match template  match="/enviroments".
	
For Firefox:
 - just drag file envy.xml to browser and you will see the result.

For other browsers:
 -  file must be placen in any http server.
For example with IIS : set folder "envy" as virtual directory and then open below link in browser.
http://localhost/envy/envy.xml






