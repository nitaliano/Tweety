<cfquery name="getSourceIdTweetys" datasource="cftweety">
	SELECT target_id
	FROM following
	WHERE
		source_id = '#sourceId#'
</cfquery>

<cfloop query="getSourceIdTweetys">

	<cfquery name="getTweetyMsg" datasource="cftweety">
		SELECT user_email,tweety_msg, tweety_id
		FROM tweetys
		WHERE
			user_email = '#getSourceIdTweetys.target_id#'
		ORDER BY tweety_id DESC LIMIT 5
	</cfquery>
	
	<cfoutput>
		<li class="span2">#getTweetyMsg.user_email#</li>
		<li class="span5">&nbsp;#getTweetyMsg.tweety_msg#</li>
	</cfoutput>
	
	<cfset start = 2>

	<cfloop query="getTweetyMsg" startRow=#start#>
		<cfoutput>
			<li class="span5">&nbsp;&nbsp;&nbsp;#getTweetyMsg.tweety_msg#</li>
			<br/>
		</cfoutput>
	</cfloop>

	<cfoutput><br/><br/><br/></cfoutput>

</cfloop>
