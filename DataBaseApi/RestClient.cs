using System;
using System.Threading.Tasks;
using System.Net.Http;
using System.Net.Http.Handlers;

namespace DataBaseApi
{
    //https://www.youtube.com/watch?v=i1HSG7ttDtM
    public class RestClient
    {
        public RestClient()
        {
            RunAsync().Wait();
        }

        private async Task RunAsync()
        {
            using (var client = new HttpClient())
            {
                client.BaseAddress = new Uri("http://sadika.site/graphql");
                client.DefaultRequestHeaders.Accept.Clear();
                client.DefaultRequestHeaders.Accept.Add(new System.Net.Http.Headers.MediaTypeWithQualityHeaderValue("application/json"));
                HttpResponseMessage response = await client.GetAsync("");
                if (response.IsSuccessStatusCode)
                {
                   // Person person = await response.Content.ReadAsAsync<Person>();
                }

            }
        }
    }
}
