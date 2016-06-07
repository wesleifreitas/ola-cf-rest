<cfcomponent rest="true" restPath="/hello">
        <cffunction name="sayHello" access="remote" returnType="String" httpMethod="GET">
                 <cfset res="Hello World">
                 <cfreturn res>
        </cffunction>

        <cffunction name="postExample" access="remote" returnType="String" httpMethod="POST">
		        <cfargument name="body" type="String">
		        <cfdump var="#body#" output="console">
		        <cfreturn body>
		</cffunction>
</cfcomponent>
