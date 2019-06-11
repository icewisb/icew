import edu.princeton.cs.algs4.StdIn;
import edu.princeton.cs.algs4.StdOut;

public class TestUqual {
  public static void main(String[] args) {
    // int a = Integer.parseInt(args[0]);
    // int b = Integer.parseInt(args[1]);
    // int c = Integer.parseInt(args[2]);
    // if (a == b && b == c) {
    //   StdOut.println("equal");
    // } else {
    //   StdOut.println("not equal");
    // }
    int a, b, c;
    a = StdIn.readInt();
    b = StdIn.readInt();
    c = StdIn.readInt();
    if (equals(a, b, c) == 1) {
      StdOut.println("equal");
    } else {
      StdOut.println("not equal");
    }
  }

  public static int equals(int a, int b, int c) {
    if (a == b && b == c) {
      return 1;
    } else {
      return -1;
    }
  }
}
