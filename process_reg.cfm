<cfquery name="checkIfUserExists" datasource="cftweety">
	SELECT *
	FROM users
	WHERE
		email = <cfqueryparam cfsqltype="cf_sql_varchar" value="#email#" />
</cfquery>

<cfif checkIfUserExists.RecordCount>
	<cfoutput>taken</cfoutput>
<cfelse>
	<cfquery name="insertUser" datasource="cftweety">
		INSERT INTO users (email, password, name)
		  VALUES ('#email#', '#password#', '#username#')
	</cfquery>
	<cfoutput><a href="index.cfm?name=#email#"></a></cfoutput>
</cfif>
