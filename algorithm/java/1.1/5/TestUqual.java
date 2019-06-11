import edu.princeton.cs.algs4.StdOut;
import edu.princeton.cs.algs4.StdIn;

public class TestUqual {
  public static void main(String[] args) {
    double x, y;
    x = StdIn.readDouble();
    y = StdIn.readDouble();
    StdOut.println(compare(x) && compare(y));
  }

  public static boolean compare(double x) {
    if (x > 0 && x < 1) {
      return true;
    } else {
      return false;
    }
  }
}
