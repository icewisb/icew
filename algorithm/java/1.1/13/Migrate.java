import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.StdRandom;

public class Migrate {
  public static void main(String[] args) {
    int m = 5;
    int n = 8;
    int[][] a = new int[m][n];
    int[][] b = new int[n][m];
    StdOut.println();
    a = RandomInitial(a, n);
    b = MigrateArrays(a, b);
    StdOut.println("a:");
    MigratePrint(a);
    StdOut.println();
    StdOut.println("b:");
    MigratePrint(b);
    StdOut.println();
  }

  public static int[][] RandomInitial(int[][] a, int n) {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[0].length; j++) {
        a[i][j] = StdRandom.uniform(n);
      }
    }
    return a;
  }

  public static int[][] MigrateArrays(int[][] a, int[][] b) {
    for (int i = 0; i < a.length; i++) {
      for (int j = 0; j < a[0].length; j++) {
        b[j][i] = a[i][j];
      }
    }
    return b;
  }

  public static void MigratePrint(int[][] b) {
    for (int i = 0; i < b.length; i++) {
      StdOut.println();
      for (int j = 0; j < b[0].length; j++) {
        StdOut.print(b[i][j] + " ");
      }
    }
  }
}

