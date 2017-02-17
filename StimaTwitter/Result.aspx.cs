using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Tweetinvi;
using Tweetinvi.Core.Enum;
using Tweetinvi.Core.Parameters;


namespace StimaTwitter
{
    public partial class Result : System.Web.UI.Page
    {
        private static string searchkey, algo;
        private static string[][] keyword = new String[6][];
        public static IEnumerable<Tweetinvi.Core.Interfaces.ITweet> tweets { get; set; }
        public static int[] status;
        public static int[] count = new int[7];

        private void getTweet()
        {
            Auth.SetUserCredentials("HsE9x7KSWhqyb7CQhxhFWN2oF", "GlUtr9Hy7Rq0UwcKmA8MCbSD1AORoTN83LvA8oYGool1yUFG1S", "2489399222-AR5SyQDsDZ7bqc23eT8QNBDauVFDX8PWdnrWZcu", "FMAJel0Q3ivViyvGRLDWljeDKbANrRj0D8XS3shlmVGCt");
            ITweetSearchParameters searchp = new TweetSearchParameters(searchkey)
            {
                MaximumNumberOfResults = 10
            };
            System.Diagnostics.Debug.WriteLine("aaa" + searchp.SearchQuery);
            tweets = Search.SearchTweets(searchp);
        }

        private void usingKMP()
        {
            KMPTools K = new KMPTools();
            int j = 0;
            status = new int[tweets.Count()];
            int i;
            foreach (var tweet in tweets)
            {
                //int min1 = 999, min2 = 999, min3 = 999, temp = 50;
                int[] min = new int[7];
                int temp;
                for (int x=0; x<7; x++)
                {
                    min[x] = 999;
                }
                for (int k = 1; k < 6; k++)
                {
                    for (i = 0; i < keyword[k].Length; i++)
                    {
                        if (keyword[k][i] != "")
                        {
                            System.Diagnostics.Debug.WriteLine(k + keyword[k][i]);
                            K.inputString(tweet.Text, keyword[k][i]);
                            temp = K.KMP();
                            if ((temp < min[k]) && (temp != -1))
                            {
                                min[k] = temp;
                            }
                        }
                    }
                }
                /*for (i = 0; i < keyword[2].Length; i++)
                {
                    if (keyword[2][i] != "")
                    {
                        K.inputString(tweet.Text, keyword[2][i]);
                        temp = K.KMP();
                        if ((temp < min[2]) && (temp != -1))
                        {
                            min[2] = temp;
                        }
                    }
                }
                for (i = 0; i < keyword[3].Length; i++)
                {
                    if (keyword[3][i] != "")
                    {
                        K.inputString(tweet.Text, keyword[3][i]);
                        temp = K.KMP();
                        if ((temp < min[3]) && (temp != -1))
                        {
                            min[3] = temp;
                        }
                    }
                }*/
                int minres = 1;
                for (int x = 2; x < 6; x++)
                {
                    if (min[x] < min[minres])
                    {
                        minres = x;
                    }
                }
                if (min[minres] == 999)
                {
                    minres = 6;
                }
                status[j] = minres;
                count[minres]++;
                System.Diagnostics.Debug.WriteLine("status " + j + status[j]);
                j++;
            }
        }

        private void usingBM()
        {
            BMTools K = new BMTools();
            int j = 0;
            status = new int[tweets.Count()];
            int i;
            foreach (var tweet in tweets)
            {
                int[] min = new int[7];
                int temp;
                for (int x = 0; x < 7; x++)
                {
                    min[x] = 999;
                }
                for (int k = 1; k < 6; k++)
                {
                    for (i = 0; i < keyword[k].Length; i++)
                    {
                        if (keyword[k][i] != "")
                        {
                            System.Diagnostics.Debug.WriteLine(k + keyword[k][i]);
                            K.inputString(tweet.Text, keyword[k][i]);
                            temp = K.BM();
                            if ((temp < min[k]) && (temp != -1))
                            {
                                min[k] = temp;
                            }
                        }
                    }
                }
                int minres = 1;
                for (int x = 2; x < 6; x++)
                {
                    if (min[x] < min[minres])
                    {
                        minres = x;
                    }
                }
                if (min[minres] == 999)
                {
                    minres = 6;
                }
                status[j] = minres;
                count[minres]++;
                System.Diagnostics.Debug.WriteLine("status " + j + status[j]);
                j++;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            searchkey = Request.Form["searchkey"];
            System.Diagnostics.Debug.WriteLine(searchkey);
            algo = Request.Form["algo"];
            System.Diagnostics.Debug.WriteLine(algo);
            char[] delimiter = { ' ', ',' };
            System.Diagnostics.Debug.WriteLine(Request.Form["keyword1"]);
            System.Diagnostics.Debug.WriteLine(Request.Form["keyword2"]);
            System.Diagnostics.Debug.WriteLine(Request.Form["keyword3"]);
            keyword[1] = Request.Form["keyword1"].Split(delimiter);
            keyword[2] = Request.Form["keyword2"].Split(delimiter);
            keyword[3] = Request.Form["keyword3"].Split(delimiter);
            keyword[4] = Request.Form["keyword4"].Split(delimiter);
            keyword[5] = Request.Form["keyword5"].Split(delimiter);

            for (int i=0; i<7; i++)
            {
                count[i] = 0;
            }
            for (int i = 0; i < keyword[1].Length; i++)
            {
                System.Diagnostics.Debug.WriteLine(i + " " + keyword[1][i]);
            }
            for (int i = 0; i < keyword[2].Length; i++)
            {
                System.Diagnostics.Debug.WriteLine(i + " " + keyword[2][i]);
            }
            for (int i = 0; i < keyword[3].Length; i++)
            {
                System.Diagnostics.Debug.WriteLine(i + " " + keyword[3][i]);
            }

            getTweet();
            if (algo == "KMP")
            {
                usingKMP();
            }
            else
            {
                usingBM();
            }
        }
    }
}