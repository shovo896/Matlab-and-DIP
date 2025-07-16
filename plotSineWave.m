function plotSineWave()
      x = linspace(0, 2*pi,100);
      y=sin(x);
      plot(x,y);
      title ('sine Wave');
      xlabel('x');
      ylabel('sin(x)');