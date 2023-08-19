using Microsoft.AspNetCore.Mvc;
using NegocioMok;
using ModelosMok;

namespace ApiCrud.Controllers
{
    [ApiController]
    [Route("api/Libros")]
    public class LibrosController : Controller
    {
        private readonly BLLibros _libros;

        /// <summary>
        /// Constructor del Controlador
        /// </summary>
        public LibrosController()
        {
            this._libros = new BLLibros();
        }
        
        /// <summary>
        /// Listado de todos los Libros
        /// Guillermo Jerez E. 
        /// 18-Agosto de 2023
        /// </summary>
        /// <returns></returns>
        [HttpGet("/listado")]
        public async Task<ActionResult<List<Libros>>> Get()
        {
            try
            {
                return  _libros.ConsultaTodosLibros().ToList();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// Listado de todos los Libros por paginacion
        /// Paginacion - Guillermo Jerez - 18-Agosto-2023
        /// </summary>
        /// <param name="_idRegistro"></param>
        /// <param name="_registro"></param>
        /// <returns></returns>
        [HttpGet("/Pagina")] 
        public async Task<ActionResult<List<Libros>>> Paginacion([FromHeader] int _idRegistro, [FromHeader] int _registro) 
        {
            try
            {
                return _libros.ConsultaTodosLibrosPagina(_idRegistro, _registro).ToList();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// ConsultaXID
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        [HttpGet("ConsultaID")]
        public async Task<ActionResult<List<Libros>>> ConsultaXID([FromHeader] int Id) 
        {
            try
            {
                return _libros.ConsultaLibrosxid(Id).ToList();
            }
            catch (Exception ex)
            {
                return BadRequest(ex.Message);
            }
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="_objLibros"></param>
        /// <returns></returns>
        [HttpPost]
        public int Post([FromBody] Libros _objLibros)
        {
            try
            {
                var _registro = _libros.InsertarLibro(_objLibros);
                return _registro;
            }
            catch (Exception ex)
            {
                return -1;
            }
        }

        /// <summary>
        /// Actualiza un libro
        /// </summary>
        /// <param name="_libro"></param>
        /// <returns></returns>
        [HttpPut]
        public int  Put([FromBody]  Libros _libro)
        {
            try
            {
                if ((_libro.Id) > 0 && (_libros.ConsultaLibrosxid(_libro.Id).ToList().Count > 0))
                {
                    return _libros.ActualizaLibro(_libro);
                }
                return 404; //NotFound
            }
            catch (Exception ex)
            {
                return -1;
            }
        }
    }
}
