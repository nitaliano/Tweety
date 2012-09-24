<cfquery name="selectFollower" datasource="cftweety">
	SELECT *
	FROM following
	WHERE
		source_id = '#sourceId#'
	AND
		target_id = '#targetId#'
</cfquery>


<cfif selectFollower.RecordCount>
	<cfoutput>exists</cfoutput>
<cfelse>
	<cfquery name="insertFollower" datasource="cftweety">
		INSERT INTO following (source_id,target_id)
			VALUES ('#sourceId#','#targetId#')
	</cfquery>
	<cfoutput>insert</cfoutput>
</cfif>
