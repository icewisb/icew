public static int recursion(int N) {
  if (N < 0) return -1;
  if (N == 1) return 1;
  return N * recursion(N-1);
}
