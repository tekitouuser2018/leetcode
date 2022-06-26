class Solution {
    public int[] findEvenNumbers(int[] digits) {
        int len = digits.length;

        List<Integer> list = new ArrayList<Integer>();
        for (int i=0; i<len; i++) {
            if (digits[i] == 0){continue;}
            for (int j=0; j<len; j++) {
                if (i == j){continue;}
                for (int k=0; k<len; k++) {
                    if (k == i || k == j || digits[k]%2 == 1){continue;}
                    int tmp = digits[i]*100 + digits[j]*10 + digits[k];
                    list.add(tmp);
                }
            }
        }
        list = list.stream()
         .distinct()
         .collect(Collectors.toList());
        Collections.sort(list);
        return list.stream().mapToInt(i->i).toArray();
    }
}
