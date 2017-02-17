<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Result.aspx.cs" Inherits="StimaTwitter.Result" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style>
        a
        {
            text-decoration: none;
            color: inherit;
        }

            a:hover
            {
                text-decoration: underline;
            }

        img
        {
            border: 0px;
            vertical-align: top;
        }

        .tweet
        {
            margin: 10px;
            border-bottom:1px solid #808080;
        }

            .tweet div.picture
            {
                float: left;
            }

            .tweet div.info
            {
                float: left;
                margin-left: 5px;
            }
                .tweet div.info a.text
                {
                    color:#f64fd4;
                }
            .tweet div.action a
            {
                color:#00a5ff;
            }
            .tweet div.clear
            {
               clear:both;
            }
    </style>
</head>
<body>
    <% for (int j = 1; j <= 6; j++) { %>
        <h3> Search <%=j %> </h3>
        <p> Jumlah : <%=count[j] %> </p>
        <%  int i = 0;
            foreach (var tweet in tweets)

            { if (status[i] != j) { i++; continue; }
                System.Diagnostics.Debug.WriteLine("page status " + i + status[i]);
            %>
 
        <div class="tweet">
            <div class="picture">
                <img src="<%=tweet.CreatedBy.ProfileImageUrl%>" alt="<%=tweet.CreatedBy.ScreenName%>"title="<%=tweet.CreatedBy.ScreenName%>" />
            </div>
            <div class="info">
                <span><%=tweet.CreatedBy.Name%> - <%=tweet.CreatedBy.Location%> </span>
                <br />
                <a href="https://twitter.com/statuses/<%=tweet.Id%>" class="text">
                    <%=tweet.Text%>
                </a>
                <div class="action">
                    <%=tweet.CreatedAt.ToString("d/M/yyyy HH:mm:ss") %>
                    <a href="https://twitter.com/intent/tweet?in_reply_to=<%=tweet.Id%>"  target="_blank">Reply</a> | 
                    <a href="https://twitter.com/intent/retweet?tweet_id=<%=tweet.Id%>"  target="_blank">Retweet</a> | 
                    <a href="https://twitter.com/intent/favorite?tweet_id=<%=tweet.Id%>" target="_blank">Favorite</a>
                </div>
            </div>
            <div class="clear">

            </div>

        </div>
        <%i++; } %>
    <% } %>
</body>
</html>

