<cfquery name="insertTweety" datasource="cftweety">
	INSERT INTO tweetys ( tweety_msg, user_email)
		VALUES ( '#tweetyMsg#', '#userEmail#' )
</cfquery>
<cfoutput>Sent</cfoutput>
