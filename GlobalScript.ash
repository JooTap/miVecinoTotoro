// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.

// Metodo para imprimir el dialogo
function mostrarDialogo(String texto) {
  
  gDialogos.Visible = true;
    
  lblTexto.BringToFront();
    
  int total = texto.Length;
  int i = 0;
  
  sHablando.Play();
  
  while (i < total) {
     
    i++; // aumenta la longitud del texto a mostrar
    lblTexto.Text = texto.Substring(0, i);
    Wait(1); // controla la velocidad del texto
  }
  
  sHablando.Stop();
  Wait(1); // Tiempo entre dialogo y dialogo
}
