public class lg{
  public static int lg(int N){
    int m = -1;
    for (int s = 1; s <= N; s *= 2){
      m++;
    };
    return m;
  }

  public static void main(String[] args){
    int n = Integer.parseInt(args[0]);
    System.out.println(lg(n));
  }
}
