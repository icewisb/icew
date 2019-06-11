import edu.princeton.cs.algs4.StdOut;

public class Fibonacci{
  public static long F(int N) {
    if (N == 0) return 0;
    if (N == 1) return 1;
    return F(N-1) + F(N-2);
  }

  public static void F2(int n) {
    if (n < 0) {
      StdOut.println(-1);
    } else if (n == 0) {
      StdOut.println(0);
    } else if (n < 3) {
      StdOut.println(1);
    } else {
      long[] fibAry = new long[n + 1];
      fibAry[0] = 0;
      fibAry[1] = 1;
      for (int i = 2; i < n; i++) {
        fibAry[i] = fibAry[i - 1] + fibAry[i - 2];
        StdOut.println(i + "  " + fibAry[i]);
      }
    }
  }

  public static void main(String[] args) {
    F2(100);
  }
}
