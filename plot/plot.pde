import grafica.*;

int N = 100;

void setup()
{
  
  float[] x, y;
  int i;
  int px, py;
  
  x = new float[N];
  y = new float[N];
 
 
  size(500, 500);
  
  for(i = 0; i < N; i++)
  {
    x[i] = i * 0.1;
    y[i] = sin(x[i]);
  }
  
  px = 25;
  py = 25;
  draw_with_grafica(x, y, px, py);
    
    
}

 
void draw_with_grafica(float x[], float y[], int px, int py){
  //size(500, 350);
  //background(150);
 
  // Prepare the points for the plot
  int nPoints = x.length;
  GPointsArray points = new GPointsArray(nPoints);
   
  for(int i = 0; i < (nPoints); i++){
    points.add(x[i], y[i]);
  }
   
  print(points);
  // Create a new plot and set its position on the screen
  GPlot plot = new GPlot(this);
  plot.setPos(px, py);
   
  // Set the plot title and the axis labels
  plot.setPoints(points);
  plot.getXAxis().setAxisLabelText("x axis");
  plot.getYAxis().setAxisLabelText("y axis");
  plot.setTitleText("A very simple example");
 
  // Draw it!
  plot.defaultDraw();
}
