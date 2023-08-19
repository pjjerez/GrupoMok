using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ModelosMok;

namespace DatosGrupoMok
{
    public class CDLibros
    {
        string connectionString = ParametrosGrupoMok.strConexion.ToString();

        /// <summary>
        /// _ConsultaTodosLibros - Guillermo Jerez E.
        /// </summary>
        /// <param name="reader"></param>
        /// <returns></returns>
        public Collection<Libros> _ConsultaTodosLibros(IDataReader reader)
        {
            Collection<Libros> _CreaColDetalleLibros = new Collection<Libros>();

            try
            {
                Libros Detalle;
                while (reader.Read())
                {
                    Detalle = new Libros();
                    if ((!object.ReferenceEquals(reader["Id"], DBNull.Value)))
                    {
                        Detalle.Id = Convert.ToInt32(reader["Id"]);
                    }

                    if ((!object.ReferenceEquals(reader["Codigo"], DBNull.Value)))
                    {
                        Detalle.Codigo = Convert.ToString(reader["Codigo"]);
                    }

                    if ((!object.ReferenceEquals(reader["Nombre"], DBNull.Value)))
                    {
                        Detalle.Nombre = Convert.ToString(reader["Nombre"]);
                    }

                    if ((!object.ReferenceEquals(reader["IdAutores"], DBNull.Value)))
                    {
                        Detalle.IdAutores = Convert.ToInt32(reader["IdAutores"]);
                    }

                    if ((!object.ReferenceEquals(reader["IdEditoriales"], DBNull.Value)))
                    {
                        Detalle.IdEditoriales = Convert.ToInt32(reader["IdEditoriales"]);
                    }

                    if ((!object.ReferenceEquals(reader["IdPaises"], DBNull.Value)))
                    {
                        Detalle.IdPaises = Convert.ToInt32(reader["IdPaises"]);
                    }

                    if ((!object.ReferenceEquals(reader["IdUsuariosCreacion"], DBNull.Value)))
                    {
                        Detalle.IdUsuariosCreacion = Convert.ToInt32(reader["IdUsuariosCreacion"]);
                    }

                    if ((!object.ReferenceEquals(reader["IdUsuariosModificacion"], DBNull.Value)))
                    {
                        Detalle.IdUsuariosModificacion = Convert.ToInt32(reader["IdUsuariosModificacion"]);
                    }

                    if ((!object.ReferenceEquals(reader["FechaCreacion"], DBNull.Value)))
                    {
                        Detalle.FechaCreacion = Convert.ToDateTime(reader["FechaCreacion"]);
                    }

                    if ((!object.ReferenceEquals(reader["FechaActualizacion"], DBNull.Value)))
                    {
                        Detalle.FechaActualizacion= Convert.ToDateTime(reader["FechaActualizacion"]);
                    }

                    if ((!object.ReferenceEquals(reader["DireccionIPCreo"], DBNull.Value)))
                    {
                        Detalle.DireccionIPCreo= Convert.ToString(reader["DireccionIPCreo"]);
                    }

                    if ((!object.ReferenceEquals(reader["DireccionIPModificacion"], DBNull.Value)))
                    {
                        Detalle.DireccionIPModificacion= Convert.ToString(reader["DireccionIPModificacion"]);
                    }

                    if ((!object.ReferenceEquals(reader["Estado"], DBNull.Value)))
                    {
                        Detalle.Estado = Convert.ToInt32(reader["Estado"]);
                    }

                    if ((!object.ReferenceEquals(reader["Observaciones"], DBNull.Value)))
                    {
                        Detalle.Observaciones= Convert.ToString(reader["Observaciones"]);
                    }

                    _CreaColDetalleLibros.Add(Detalle);
                }
                return _CreaColDetalleLibros;
            }
            catch (Exception ex)
            {
                throw ex;
            }
        }

        /// <summary>
        /// ConsultaTodosLibros - Guillermo Jerez 
        /// </summary>
        /// <returns></returns>
        public Collection<Libros> ConsultaTodosLibros()
        {
            string storedProcedureName = ParametrosGrupoMok.USP_ConsultaLibros.ToString();

            Collection<Libros> ConsultaUsuarios = new Collection<Libros>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        ConsultaUsuarios =  _ConsultaTodosLibros(reader);
                    }
                    command.Dispose();
                }
            }
            return ConsultaUsuarios;
        }


        public Collection<Libros> ConsultaTodosLibrosPaginacion(int IdRegsitro, int numeroRegistros)
        {
            string storedProcedureName = ParametrosGrupoMok.USP_ConsultaLibrosPaginacion.ToString();

            Collection<Libros> ConsultaUsuarios = new Collection<Libros>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@IdRegistro", IdRegsitro);
                    command.Parameters.AddWithValue("@NumeroRegistros", numeroRegistros);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        ConsultaUsuarios =  _ConsultaTodosLibros(reader);
                    }
                    command.Dispose();
                }
            }
            return ConsultaUsuarios;
        }

        /// <summary>
        /// ConsultaLibrosXID - Guillermo Jerez E.
        /// </summary>
        /// <param name="Id"></param>
        /// <returns></returns>
        public Collection<Libros> ConsultaLibrosXID(int Id)
        {
            string storedProcedureName = ParametrosGrupoMok.USP_ConsultaLibros.ToString();

            Collection<Libros> ConsultaUsuarios = new Collection<Libros>();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Id", Id);
                    connection.Open();

                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        ConsultaUsuarios =  _ConsultaTodosLibros(reader);
                    }
                    command.Dispose();
                }
            }
            return ConsultaUsuarios;
        }

        /// <summary>
        /// InsertarLibro - Guillermo Jerez E.
        /// </summary>
        /// <param name="_libros"></param>
        /// <returns></returns>
        public int InsertarLibro(Libros _libros)
        {
            int _respuesta = 0;
            
            string storedProcedureName = ParametrosGrupoMok.USP_InsertaLibros.ToString();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Codigo", _libros.Codigo);
                    command.Parameters.AddWithValue("@Nombre", _libros.Nombre);
                    command.Parameters.AddWithValue("@IdAutores", _libros.IdAutores);
                    command.Parameters.AddWithValue("@IdPaises", _libros.IdPaises);
                    command.Parameters.AddWithValue("@IdEditoriales", _libros.IdEditoriales);
                    command.Parameters.AddWithValue("@IdUsuariosCreacion", _libros.IdUsuariosCreacion);
                    command.Parameters.AddWithValue("@IdUsuariosModificacion", _libros.IdUsuariosModificacion);
                    connection.Open();

                    _respuesta = Convert.ToInt32(command.ExecuteScalar());
                    command.Dispose();
                }
            }
            return _respuesta;
        }

        /// <summary>
        /// Actualiza un Libro
        /// </summary>
        /// <param name="_libros"></param>
        /// <returns></returns>
        public int ActualizaLibro(Libros _libros)
        {
            int _respuesta = 0;

            string storedProcedureName = ParametrosGrupoMok.USP_ActualizaLibros.ToString();
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                using (SqlCommand command = new SqlCommand(storedProcedureName, connection))
                {
                    command.CommandType = CommandType.StoredProcedure;
                    command.Parameters.AddWithValue("@Id ", _libros.Id);
                    command.Parameters.AddWithValue("@Codigo", _libros.Codigo);
                    command.Parameters.AddWithValue("@Nombre", _libros.Nombre);
                    command.Parameters.AddWithValue("@IdAutores", _libros.IdAutores);
                    command.Parameters.AddWithValue("@IdEditoriales", _libros.IdEditoriales);
                    command.Parameters.AddWithValue("@IdPaises", _libros.IdPaises);
                    command.Parameters.AddWithValue("@IdUsuariosModificacion", _libros.IdUsuariosModificacion);
                    command.Parameters.AddWithValue("@DireccionIPModificacion", _libros.DireccionIPModificacion);
                    command.Parameters.AddWithValue("@Estado", _libros.Estado);
                    command.Parameters.AddWithValue("@Observaciones", _libros.Observaciones);
                    connection.Open();

                    _respuesta = Convert.ToInt32(command.ExecuteScalar());
                    command.Dispose();
                }
            }
            return _respuesta;
        }
    }
}
