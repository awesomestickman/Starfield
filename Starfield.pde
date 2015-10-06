
Particle[] a = new Particle[20];


//your code here
void setup()
{
	size(300,300);
	background(0);
	for(int i =1;i<a.length;i++){


		a[i]=new NormalParticle();
	}
	a[0]=new OddballParticle();
}
void draw()
{
	background(0);
	for(int i =0;i<a.length;i++){

		a[i].move();
		a[i].show();
	}
	//your code here
}
class NormalParticle implements Particle
{
	double x,y,angle,speed;
	int theColor;

 NormalParticle(){
theColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
x=150;
y=150;
speed=1;
angle=(Math.random()*359)+1;
 }
 public void move(){
x=x+Math.cos(angle)*speed;
y=y+Math.sin(angle)*speed;


 }
 public void show(){
fill(theColor);
ellipse((float)x,(float)y, 4, 4);

 }
	


}

interface Particle
{
	public void show();
	public void move();
}
class OddballParticle implements Particle //uses an interface
{
	double x,y,angle,speed;
	int theColor;
	OddballParticle(){
	theColor=color((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
x=150;
y=150;
speed=1;
angle=(Math.random()*359)+1;
 }
 public void move(){
x=x-Math.cos(angle)*speed;
y=y-Math.sin(angle)*speed;


 }
 public void show(){
fill(theColor);
ellipse((float)x,(float)y, 20, 20);

 }
}
class JumboParticle extends NormalParticle //uses inheritance
{
	//your code here
}

