int pagina = 0;
int tiempoPantalla = 0;

PImage img1, img2, img3, img4, img5;


int x1 = 0;
int y2 = 0;
float tam3 = 16;
int alpha5 = 0;

void setup() {
  size(640, 480);
  textAlign(CENTER, CENTER);
  textSize(18);

  
  img1 = loadImage("martin fierro 1.png");
  img2 = loadImage("martin fierro 2.png");
  img3 = loadImage("martin fierro 3.png");
  img4 = loadImage("martin fierro 4.png");
  img5 = loadImage("martin fierro 5.png");

 
  img1.resize(width, height);
  img2.resize(width, height);
  img3.resize(width, height);
  img4.resize(width, height);
  img5.resize(width, height);
}

void draw() {
  background(255);
  fill(0);


  if (pagina == 0) {
    image(img1, 0, 0);
    fill(0);
    text("Martín Fierro vive tranquilo en las pampas argentinas.", x1, 50);
    text("Pero un día es reclutado a la fuerzapor el gobierno.", x1, 70);
    text("para servir en la frontera contra los indígenas, algo común en la época.", x1, 90);
    text("Esta experiencia lo marca profundamente.", x1, 110);
    x1 += 1;
    if (x1 > width) x1 = 0;

    tiempoPantalla++;
    if (tiempoPantalla > 600) {
      tiempoPantalla = 0;
      pagina = 1;
    }
  }

 else if (pagina == 1) {
  image(img2, 0, 0);
  fill(250,231,30);
  textSize(18);

  String texto = "En la frontera, Fierro sufre abusos, maltratos y hambre. No le pagan ni le permiten volver con su familia. Cansado de la injusticia, se rebela, mata a un superior y escapa. Cuando regresa a su hogar, lo encuentra destruido: su rancho en ruinas y su familia desaparecida.";
  text(texto, width/2 - 200, y2, 400, 200); 

  y2 += 1;
  if (y2 > height) y2 = 0;

  tiempoPantalla++;
  if (tiempoPantalla > 300) {
    tiempoPantalla = 0;
    pagina = 2;
  }
}


  else if (pagina == 2) {
    image(img3, 0, 0);
    textSize(tam3);
    String texto = "Convertido en un gaucho matrero, es decir, fuera de la ley, Fierro vaga por la pampa. Se enfrenta a varios enemigos en duelos y canta sobre la corrupción, la injusticia social y la vida difícil del gaucho. Conoce a otro gaucho rebelde, el Sargento Cruz, quien lo ayuda en una pelea y se convierte en su amigo.";
    text(texto, width/2 - 200, 100, 400, 200);
    tam3 += 0.1;
    if (tam3 > 48) tam3 = 16;
    textSize(24);

    tiempoPantalla++;
    if (tiempoPantalla > 300) {
      tiempoPantalla = 0;
      pagina = 3;
    }
  }

else if (pagina == 3) {
  image(img4, 0, 0, width, height);
  fill(250,231,30); 
  textSize(18);

  String texto = "Fierro y Cruz huyen juntos y se internan en territorio indígena. Allí viven un tiempo, enfrentando nuevos desafíos. Cruz muere y Fierro termina regresando solo, más viejo y reflexivo. En esta etapa aparece el tono filosófico y moralizante del personaje.";
  int numLetras = tiempoPantalla / 3;
  if (numLetras > texto.length()) {
    numLetras = texto.length();
  }

  text(texto.substring(0, numLetras), width/2, height/2);

  tiempoPantalla++;

  if (tiempoPantalla > 600) {
    tiempoPantalla = 0;
    pagina = 4;
  }
}
 
  else if (pagina == 4) {
    image(img5, 0, 0);
    fill(225,0,17);
    textSize(17);
    text("Ya más sabio, Fierro reaparece en un pueblo donde relata su vida y aconseja a los jóvenes.", width/2, 100);
    text("Habla sobre la importancia de la educación, el respeto y la sabiduría.", width/2, 130);
    text("Busca dejar atrás la violencia y promueve la justicia y la libertad.", width/2, 160);
    text("El libro termina con un tono más reconciliador", width/2, 180);
    alpha5 += 1;
    if (alpha5 > 255) alpha5 = 255;

   
    fill(0);
    rect(width/2 - 60, height - 70, 120, 40);
    fill(255);
    textSize(18);
    text("Reiniciar", width/2, height - 50);
  }
}

void mousePressed() {
  if (pagina == 4 &&
      mouseX > width/2 - 60 && mouseX < width/2 + 60 &&
      mouseY > height - 70 && mouseY < height - 30) {
    reiniciar();
  }
}

void reiniciar() {
  pagina = 0;
  tiempoPantalla = 0;
  x1 = 0;
  y2 = 0;
  tam3 = 16;
  alpha5 = 0;
}
