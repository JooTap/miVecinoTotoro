// Main header script - this will be included into every script in
// the game (local and global). Do not place functions here; rather,
// place import definitions and #define names here to be used by all
// scripts.

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
  
}

//Dialogo vuelta a la room 1
function dialogoVueltaRoom1(){
  
  imgDialogo.BackgroundGraphic = 148;// Satsuki
    
  mostrarDialogo("¡Ya llegué! Qué hambre tengo… ");
  mostrarDialogo("¡Hola Mei!");
    
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("¡Satsuki no vas a creer lo que he visto! He salido al jardín a explorar mientras papá trabajaba.");
  mostrarDialogo("He encontrado a unos Totoros pequeñitos, como los del cuento de la abuela.");
    
  // Se sienta al lado de Mei
  cSatsuki.Walk(253, 304, eBlock, eWalkableAreas);
  cSatsuki.Walk(34, 338, eBlock, eWalkableAreas);
  cSatsuki.ChangeView(6);
    
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¿Unos Totoros pequeños? ¿Cómo los has encontrado?");
    
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("He seguido un rastro de bellotas.");
    
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("No puedo creer que me los haya perdido. Prométeme que la próxima vez que los encuentres me llevarás contigo.");
    
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("No estés triste Satsuki. Te prometo que la próxima vez los verás tú también.");
}

//Dialogo de inicio de la room 3
function dialogoRoom3(){
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("Vamos Mei, tenemos que llevarle este paraguas a papá antes de que su bus llegue a la parada.");
  
  imgDialogo.BackgroundGraphic = 150; //Mei
  mostrarDialogo("¡Si, está lloviendo mucho! ");
  
}

function dialogo2Room3(){
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("Mei, ¿Tienes sueño?");
  
  imgDialogo.BackgroundGraphic = 150; // Mei
  mostrarDialogo("No, no mucho");
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("Papá tiene que estar ya a punto de llegar, aguanta un poco.");
  mostrarDialogo("¿Por qué estará tardando tanto? ¿Habrá pasado algo?");
  
}

function dialogo3Room3(){
  
  imgDialogo.BackgroundGraphic = 150; // Mei
  mostrarDialogo("Papá no estaba ahí.");
  
  imgDialogo.BackgroundGraphic = 148; // Satsuki
  mostrarDialogo("No te preocupes, llegará pronto.");
  
  gBusHaPasado = 1;
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
  gTengoCuerda = 1;
  
  imgDialogo.BackgroundGraphic = 148;
  mostrarDialogo("¡Bien! ¡Muchas gracias, Mei!");
  
}

