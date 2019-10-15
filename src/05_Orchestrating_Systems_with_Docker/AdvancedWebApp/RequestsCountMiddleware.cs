using Microsoft.AspNetCore.Http;
using System.Threading.Tasks;
using Prometheus;

namespace AdvancedWebApp
{
    public class RequestsCountMiddleware
    {
        private static readonly Counter RequestsCount = Metrics.CreateCounter("advancedwebapp_requests_count", "Count of requests.");

        private readonly RequestDelegate _next;

        public RequestsCountMiddleware(RequestDelegate next)
        {
            _next = next;
        }

        public async Task InvokeAsync(HttpContext context)
        {
            await _next(context);

            var path = context.Request.Path.Value;
            if (path != "/metrics")
            {
                RequestsCount.Inc();
            }
        }
    }
}