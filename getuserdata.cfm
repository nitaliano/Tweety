<cfquery name="getUserName" datasource="cftweety">
	SELECT name
	FROM users
	WHERE
		email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#email#" />
</cfquery>
<cfoutput query="getUserName">
	#getUserName.name#
</cfoutput>
