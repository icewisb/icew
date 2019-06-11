https://algs4.cs.princeton.edu/code/algs4-data.zip

- java.lang 不用import

- java.swt; java.net; java.io;


sys:

  Math;
    double abs(double a)
    double max(double a, double b)
    double min(double a, double b)
    double sin(double theta)
    double cos(double theta)
    double tan(double theta)
    double exp(double a)
    double log(double a)
    double pow(double a)
    double random()
    double sqrt(double a)
    double E
    double PI
  Integer;
    int parseInt(String s)
    String toString(int i)
  Double;
    double parseDouble(String s)
    String toString(double x)
  String;
  StringBuiler;
  System;

lib:

  java.util.Arrays;
    void sort(int[] a)

standard:
  StdIn;
    boolean isEmpty()
    int readInt()
    double readDouble()
    float readFloat()
    long readLong()
    boolean readBoolean()
    char readChar()
    byte readByte()
    String readString()
    boolean hasNextLine()
    String readLine()
    String readAll()
  StdOut;
    void print(String s)
    void println(String s)
    void println()
    void printf(String f, ....)
  StdDraw;
  StdRandow;
  StdStats;
    double max(double[] a)
    double min(double[] a)
    double mean(double[] a)
    double var(double[] a)
    double stddev(double[] a)
    double median(double[] a)
  In;
    int[] readInts(String name)
    double[] readDoubles(String name)
    String[] readStrings(String name)
  Out;
    void write(int[] a, String name)
    void write(double[] a, String name)
    void write(String[] a, String name)

StdRandom;
  void setSeed(long seed);
  double random();
  int uniform(int N);
  int uniform(int lo, int hi);
  double uniform(double lo, double hi);
  boolean bernoulli(double p);
  double gaussian();
  double gaussian(double m, double s);
  int discrete(double[] a);
  void shuffle(double[] a);

StdDraw
  void line(double x0, double y0, double x1, double y1)
  void point(double x, double y)
  void text(double x, double y, String s)
  void circle(double x, double y, double r)
  void filledCircle(double x, double y, double r)
  void ellipse(double x, double y, double rw, double th)
  void filledEllipse(double x, double y, double rw, double rh)
  void square(double x, double y, double r)
  void filledSquare(double x, double y, double r)
  void rectangle(double x, double y, double rw, double rh)
  void filledRectange(double x, double y, double rw, double rh)
  void polygon(double[] x, double[] y)
  void filledPolgon(double[] x, double[] y)
  RED

  void setXscale(double x0, double x1)
  void setYscale(double y0, double y1)
  void setPenRadius(double r)
  void setPenColor(Color c)
  void setFont(Font f)
  void setCanvasSize(int w, int h)
  void clear(Color c)
  void show(int dt)
