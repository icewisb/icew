import edu.princeton.cs.algs4.StdOut;

public class toBinaryString{
  public static void main(String[] args) {
    String s = "";
    int N = Integer.parseInt(args[0]);
    for (int n = N; n > 0; n /= 2) {
      s = n % 2 + s;
    };
    StdOut.println(s);

  }
};
