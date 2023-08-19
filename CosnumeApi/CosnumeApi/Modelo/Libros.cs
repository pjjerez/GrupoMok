namespace CosnumeApi.Modelo
{
    public class Libros : ModeloBase
    {
        public int Id { get; set; }
        public string Codigo { get; set; }
        public string Nombre { get; set; }
        public int IdAutores { get; set; }
        public int IdEditoriales { get; set; }
        public int IdPaises { get; set; }
    }
}
