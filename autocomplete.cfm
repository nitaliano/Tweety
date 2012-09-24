<cfquery name="AutoCompleteFriends" datasource="cftweety">
	SELECT DISTINCT email 
	FROM users 
	WHERE 
		email LIKE '#autoCompleteString#%'
  AND
		email != "#userEmail#"
</cfquery>


<cfloop query = "AutoCompleteFriends">

	<cfquery name="ifAlreadyFollowing" datasource="cftweety">
		SELECT *
		FROM following
		WHERE
			source_id = '#userEmail#'
		AND
			target_id = '#AutoCompleteFriends.email#'
	</cfquery>

	<cfif ifAlreadyFollowing.RecordCount>
		<!--- do nothing --->
	<cfelse>
		<cfoutput>
			<li>
				<p class="span3">#AutoCompleteFriends.email#</p>
				<button id="#AutoCompleteFriends.email#" class="span2 btn">Follow</button>
			</li></br><br/><br/>
		</cfoutput>
	</cfif>

</cfloop>
