﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated by a tool.
//     Runtime Version:4.0.30319.42000
//
//     Changes to this file may cause incorrect behavior and will be lost if
//     the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DatosGrupoMok {
    using System;
    
    
    /// <summary>
    ///   A strongly-typed resource class, for looking up localized strings, etc.
    /// </summary>
    // This class was auto-generated by the StronglyTypedResourceBuilder
    // class via a tool like ResGen or Visual Studio.
    // To add or remove a member, edit your .ResX file then rerun ResGen
    // with the /str option, or rebuild your VS project.
    [global::System.CodeDom.Compiler.GeneratedCodeAttribute("System.Resources.Tools.StronglyTypedResourceBuilder", "17.0.0.0")]
    [global::System.Diagnostics.DebuggerNonUserCodeAttribute()]
    [global::System.Runtime.CompilerServices.CompilerGeneratedAttribute()]
    internal class ParametrosGrupoMok {
        
        private static global::System.Resources.ResourceManager resourceMan;
        
        private static global::System.Globalization.CultureInfo resourceCulture;
        
        [global::System.Diagnostics.CodeAnalysis.SuppressMessageAttribute("Microsoft.Performance", "CA1811:AvoidUncalledPrivateCode")]
        internal ParametrosGrupoMok() {
        }
        
        /// <summary>
        ///   Returns the cached ResourceManager instance used by this class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Resources.ResourceManager ResourceManager {
            get {
                if (object.ReferenceEquals(resourceMan, null)) {
                    global::System.Resources.ResourceManager temp = new global::System.Resources.ResourceManager("DatosGrupoMok.ParametrosGrupoMok", typeof(ParametrosGrupoMok).Assembly);
                    resourceMan = temp;
                }
                return resourceMan;
            }
        }
        
        /// <summary>
        ///   Overrides the current thread's CurrentUICulture property for all
        ///   resource lookups using this strongly typed resource class.
        /// </summary>
        [global::System.ComponentModel.EditorBrowsableAttribute(global::System.ComponentModel.EditorBrowsableState.Advanced)]
        internal static global::System.Globalization.CultureInfo Culture {
            get {
                return resourceCulture;
            }
            set {
                resourceCulture = value;
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to server=MEMO; DataBase=GrupoMok;Integrated Security=True; TrustServerCertificate=True.
        /// </summary>
        internal static string strConexion {
            get {
                return ResourceManager.GetString("strConexion", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to [dbo].[USP_ActualizaLibros].
        /// </summary>
        internal static string USP_ActualizaLibros {
            get {
                return ResourceManager.GetString("USP_ActualizaLibros", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to [dbo].[USP_ConsultaLibros].
        /// </summary>
        internal static string USP_ConsultaLibros {
            get {
                return ResourceManager.GetString("USP_ConsultaLibros", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to [dbo].[USP_ConsultaLibrosPaginacion].
        /// </summary>
        internal static string USP_ConsultaLibrosPaginacion {
            get {
                return ResourceManager.GetString("USP_ConsultaLibrosPaginacion", resourceCulture);
            }
        }
        
        /// <summary>
        ///   Looks up a localized string similar to [dbo].[USP_InsertaLibros].
        /// </summary>
        internal static string USP_InsertaLibros {
            get {
                return ResourceManager.GetString("USP_InsertaLibros", resourceCulture);
            }
        }
    }
}
