<cfquery name="checkLogin" datasource="cftweety">
	SELECT *
	FROM users
	WHERE
		email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#email#" />
	AND
		password = <cfqueryparam cfsqltype="cf_sql_varchar" value="#password#" /> 
</cfquery>

<cfif checkLogin.RecordCount>
	<cfoutput>true</cfoutput>
<cfelse>
	<cfoutput>false</cfoutput>
</cfif>
