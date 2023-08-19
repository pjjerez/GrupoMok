using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DatosGrupoMok;
using ModelosMok;


namespace NegocioMok
{
    public class BLLibros
    {
        private readonly CDLibros _libros;

        /// <summary>
        /// 
        /// </summary>
        public BLLibros()
        {
            _libros = new CDLibros();
        }

        // <summary>
        /// Listado de todos los Libros
        /// Guillermo Jerez E. 
        /// 18-Agosto de 2023
        /// </summary>
        /// <returns></returns>
        public Collection<Libros> ConsultaTodosLibros()
        {
            return _libros.ConsultaTodosLibros();
        }


        /// <summary>
        /// 
        /// </summary>
        /// <param name="_idRegsitro"></param>
        /// <param name="_numeroRegistro"></param>
        /// <returns></returns>
        public Collection<Libros> ConsultaTodosLibrosPagina(int _idRegsitro,int _numeroRegistro)
        {
            return _libros.ConsultaTodosLibrosPaginacion(_idRegsitro,_numeroRegistro);
        }

        /// <summary>
        /// 
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public Collection<Libros> ConsultaLibrosxid(int Id)
        {
            return _libros.ConsultaLibrosXID(Id);
        }

        /// <summary>
        /// Inserta Un libro
        /// </summary>
        /// <param name="_objLibros"></param>
        /// <returns></returns>
        public int InsertarLibro(Libros _objLibros)
        {
            return _libros.InsertarLibro(_objLibros); 
        }

        /// <summary>
        /// Actualiza un Libro
        /// Guillermo Jerez E. 19-Ago-2023
        /// </summary>
        /// <param name="_objLibros"></param>
        /// <returns></returns>
        public int ActualizaLibro(Libros _objLibros)
        {
            return _libros.ActualizaLibro(_objLibros);
        }
    }
}
