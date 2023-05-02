//
// import 'dart:io';
//
// void main() {
//
//
//
//
//   // String name = 'civic';
//   // String temp = name.split('').reversed.join('');
//   // // print(stdout.writeln(name.split(pattern)));
//   //
//   // if(name == temp){
//   //   print('polindrome');
//   // }else{
//   //   print('not polindrome');
//   // }
//
//
//   //vowel string
//   // List<String> vowel = ['a','e','i','o','u'];
//   // List<int> wrd = [1,3,4,24,52,4,2,24];
//   // int sum = 0;
//   // for(var i=0; i<wrd.length; i++){
//   //   sum += wrd[i];
//   // }
//   // print(sum);
//   // int left = wrd.length-1;
//   // int right = wrd.length+1;
//   // int n,i,s=0;
//   // n=wrd.length;
//   // for(i=0;i<n;++i)
//   // {
//   //   if(wrd[i]=='a'||wrd[i]=='e'||wrd[i]=='i'||wrd[i]=='o'||wrd[i]=='u')
//   //   {
//   //     s=s+1;
//   //   }
//   // }
//   // print(s);
//   // return 0;
//   // for(int i=0; i<vowel.length; i++){
//   // }
//
//   // for(int i =0; i<=vowel.length; i++){
//   //   if(wrd){
//   //     print('v');
//   //   }else{
//   //     print('no');
//   //   }
//   // }
//
//   // common c = common();
//   // c.commonarr();
//   // Sol sl = Sol();
//   // print( sl.searchinsert([1,24,32,4,12,12,3], 6));
// }
// class common{
//   void commonarr(){
//   var num1 = {1,3,4,3,2,2,1};
//   var num2 = {2,4,6,2};
//   print(num1.intersection(num2));
//   // for(int i=0; i<num1.length; i++) {
//   //   for(int j = i; j< num2.length; j++){
//   //
//   //   }
//   //
//   // }
//   }
// }
class Sol{
  int binarycsearch(List<int>num, int start, int end, int target){
    while(start<=end){
      int mid = start+(end-start)/2 as int;
      if(num[mid]<target){
        start = mid+1;
      }else if(num[mid]<target){
        end = mid-1;
      }
    }
    return start;
  }
  int searchinsert(List<int>num,int target){
    return binarycsearch(num, 0, num.length-1, target);
  }
}
// class Solution{
//
//   //target function
//   // void taget(){
//   //
//   //   List<int> num = [1,5,3,3,7,4];
//   //   int? target;
//   //   for(int i =num!.length; i>=0; i++){
//   //     if(target[i])
//   //   }
//
//   }
//   // void isplindrom(int num){
//   //  int reminder, sum = 0, temp;
//   //  temp = num;
//   //  while(num>0){
//   //     reminder = num %10;
//   //    sum = (sum*10)+reminder;
//   //     num = num~/10;
//   //  }
//   //  if(sum == temp){
//   //    print('ispalindrom');
//   //  }else{
//   //    print('is not palindrome');
//   //  }
//   // }
//
//
//
