static int[] histogram(int[] a, int M) {
  int[] b = new int[M];
  for (int i = 0; i < a.length; i++) {
    b[a[i]] += 1;
  };
  return b;
}
