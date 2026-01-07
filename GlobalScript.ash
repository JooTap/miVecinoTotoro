// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.

// He visto que aqui se ponen los metodos propios que si que pueden ser invocados desde los scripts de las rooms

// Metodo para imprimir el dialogo
function mostrarDialogo(String texto) {
  
  gDialogos.Visible = true;
  imgDialogo.Visible = true;
    
  lblTexto.BringToFront();
    
  int total = texto.Length;
  int i = 0;
  
  sHablando.Play();
  
  while (i < total) {
     
    i++; // Aumenta la longitud del texto a mostrar
    lblTexto.Text = texto.Substring(0, i);
    Wait(1); // Controla la velocidad del textos
  }
  
  sHablando.Stop();
  WaitKey(); // Pulsa cualquier tecla para pasar el dialogo
  
  gDialogos.Visible = false;
  imgDialogo.Visible = false;
}

// Funcion del dialogo de la room 1
function dialogoRoom1(){
  
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("¡Hala! Pues yo no quería que se fueran. Ni siquiera he podido atrapar uno cuando los he tenido enfrente, se me ha escapado…");
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¿Hay algún otro bichito mágico que pueda vivir aquí?");
  
  imgDialogo.BackgroundGraphic = 149;
  mostrarDialogo("Existen unos seres llamados Totoros, a los que les gusta corretear por el campo y robar BELLOTAS. Se dice que viven en el interior de los bosques porque no les gusta ser vistos.");
  mostrarDialogo("Son muy precavidos y cuidadosos. hay pocas personas que los llegan a ver… Solo los podrás conocer si ellos consideran que eres una BUENA PERSONA.");
  
  imgDialogo.BackgroundGraphic = 150;
  mostrarDialogo("¿Y cómo son? ¿Son igual que los bichitos de polvo?");
  
  imgDialogo.BackgroundGraphic = 149;
  mostrarDialogo("Hay totoros de todos los tamaños. Sin embargo, todos tienen un pelaje suave, unos ojos grandes y brillantes, y unas orejas largas.");
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("Y los totoros… ¿viven solos?");
  
  imgDialogo.BackgroundGraphic = 149;
  mostrarDialogo("No, les gusta vivir con otros como ellos, para poder protegerse y jugar entre ellos. Cuando los árboles susurran y los vientos cantan, los Totoros saltan y entre las hojas bailan.");
  
  imgDialogo.BackgroundGraphic = 150;
  mostrarDialogo("¡Yo quiero ver uno! ¡Satsuki, salgamos al jardín!");
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("Lo siento, Mei, pero yo me tengo que ir al colegio. Te prometo que cuando vuelva, buscaremos a los Totoros.");
  
  imgDialogo.BackgroundGraphic = 150;
  mostrarDialogo("Vale… ¡Adiós, Satsuki!");
  
  imgDialogo.BackgroundGraphic = 149;
  mostrarDialogo("Hasta luego, Satsuki. Yo seguiré aquí cuando vuelvas.");
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¡Adiós!");
  
  cSatsuki.ChangeView(1);
  
  imgDialogo.Visible = false;
  gDialogos.Visible = false;
  
}

function dialogoRoom3(){
  
  imgDialogo.Visible = true;
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("Vamos Mei, tenemos que llevarle este paraguas a papá antes de que su bus llegue a la parada.");
  
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("¡Si, está lloviendo mucho! ");
  
  imgDialogo.Visible = false;
  gDialogos.Visible = false;
  
}

function dialogo2Room3(){
  
  imgDialogo.Visible = true;
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  
  mostrarDialogo("Mei, ¿Tienes sueño?");
  
  imgDialogo.BackgroundGraphic = 150; // Mei
  mostrarDialogo("No, no mucho");
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("Papá tiene que estar ya a punto de llegar, aguanta un poco.");
  mostrarDialogo("¿Por qué estará tardando tanto? ¿Habrá pasado algo?");
  
  
  imgDialogo.Visible = false;
  gDialogos.Visible = false;
}

function dialogo3Room3(){
  
  imgDialogo.Visible = true;
  imgDialogo.BackgroundGraphic = 150; // Mei
  mostrarDialogo("Papá no estaba ahí.");
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("No te preocupes, llegará pronto.");
  
  imgDialogo.Visible = false;
  gDialogos.Visible = false;
  
}

function dialogoMeiSinCuerda(){
  
  cSatsuki.Walk(cMei.x, cMei.y, eBlock, eWalkableAreas);
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¿Qué haces, Mei?");
  
  imgDialogo.BackgroundGraphic = 150;
  mostrarDialogo("Estoy jugando al hilo con está cuerda que he encontrado.");
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¿Me la puedes dar? La necesito para una cosa.");
  
  imgDialogo.BackgroundGraphic = 150;
  mostrarDialogo("¿¡Eeeeh!? Bueno vale, Satsuki…");
  
  //Le da la cuerda
  cSatsuki.AddInventory(iCuerda);
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¡Bien! ¡Muchas gracias, Mei!");
  
}

