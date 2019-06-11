java.lang.Math;
java.lang.Integer;
java.lang.Double;
java.lang.String;
java.lang.StringBuilder;
java.util.Arrays;

double[] a;
a = new double[5];
for (int i = 0; i < N; i++)
  a[i] = 0.0

double max = a[0];
for (int i = 0; i < a.length; i++)
  if (a[i] > max) max = a[i]

int N = a.length;
double sum = 0.0;
for (int i =0; i < N; i++)
  sum += a[i]
double average = sum / N;

int N = a.length;
double[] b = new double[N];
for (int i = 0; i < N; i++)
  b[i] = a[i];

int N = a.length;
for (int i = 0; i < N/2; i++) {
  double temp = a[i];
  a[i] = a[N-i-1];
  a[N-i-1] = temp;
}

int N = a.length;
double[][] c = new double[N][N];
for (int i = 0; i < N; i++)
  for (int j = 0; j < N; j++)
    for (int k = 0; k < N; k++) {
      c[i][j] += a[i][k]*a[k][j];
    }

public static double sqrt(double c) {
  if (c < 0) return Double.NaN;
  double err = 1e-15;
  double t = c;
  while (Math.abs(t - c/t) > err * t) {
    t = (c/t + t) / 2.0;
  }
  return t;
}

public static boolean isPrime(int N) {
  if (N < 2) return false;
  for (int i = 2; i*i < N; i++)
    if (N % i) == 0 return false;
  return true;
}

public static int rank(int key, int[] a, int lo, int hi){
  if (lo > hi) return -1;
  int mid = (lo + hi) / 2;
  if (key < mid) return rank(key, a, lo, mid - 1);
  else if (key > mid) return rank(key, a, mid +_1, hi);
  else return mid;
}
