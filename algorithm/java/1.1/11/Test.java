import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.StdRandom;
public class Test{
  public static void main(String[] args) {
    boolean[][] a = new boolean[10][10];
    a = RandomInitial(a);
    TestPrint(a);
  }

  public static boolean[][] RandomInitial(boolean[][] a) {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[0].length; j++) {
        if (StdRandom.bernoulli(0.1)) a[i][j] = true;
        else a[i][j] = false;
      }
    }
    return a;
  }

  public static void TestPrint(boolean[][] a) {
    for (int x = 0; x < a.length; x++) {
      StdOut.print(" " + x + " ");
      for (int y = 0; y < a[0].length; y++) {
        StdOut.print(y);
          if (a[x][y]) StdOut.print("* ");
          else StdOut.print("  ");
      };
      StdOut.println("");
    }
  }
}
