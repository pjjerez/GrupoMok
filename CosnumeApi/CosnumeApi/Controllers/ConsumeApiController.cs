using CosnumeApi.Modelo;
using Microsoft.AspNetCore.Mvc;
using System.Net.Http.Headers;
using Newtonsoft.Json;
using System.Collections.ObjectModel;

namespace CosnumeApi.Controllers
{
    public class ConsumeApiController : Controller
    {
        private static string _baseUrl;
      
        /// <summary>
        /// Constructor
        /// </summary>
        public ConsumeApiController()
        {
            var builder = new ConfigurationBuilder().SetBasePath(Directory.GetCurrentDirectory()).AddJsonFile("appsettings.json").Build();
            _baseUrl = builder.GetSection("ApiSetting:baseUrl").Value;
        }

        /// <summary>
        /// Listado de Libros
        /// Guillermo Jerz E. 19-Ago-2023
        /// </summary>
        /// <returns></returns>
        [HttpGet("/listado")]
        public async Task<ActionResult<List<Libros>>> Get()
        {
            try
            {
                List<Libros> lista = new List<Libros>();

                var cliente = new HttpClient();
                cliente.BaseAddress = new Uri(_baseUrl);

                var response = await cliente.GetAsync("/listado");

                if (response.IsSuccessStatusCode)
                {
                    var json_respuesta = await response.Content.ReadAsStringAsync();
                    var resultado = JsonConvert.DeserializeObject<List<Libros>>(json_respuesta);
                    lista = resultado.ToList();
                }
                return lista;
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }
    }
}
