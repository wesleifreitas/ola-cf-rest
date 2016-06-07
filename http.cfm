<!--- REST service --->
<cfset restDirPath = getDirectoryFromPath(getCurrentTemplatePath())>
<!--- RestInitApplication | Data & Services > REST Service --->
<cfset RestInitApplication(restDirPath, "ola-cf-rest")>

<cfhttp 
	url="http://localhost:8500/rest/ola-cf-rest/hello" 
	method="post" 
	port="8500" 
	result="res">
       <cfhttpparam type="body" value="postExample">
</cfhttp>

<cfdump var="#res#">