void main () {
print(shout('Alice')); 
print(shout('    '));
print(shout(''));
print(shout(null));


print(sumEven([1, 2, 3, 4]));
print(sumEven([]));
print(sumEven([1, 3, 5]));



}



///Returns a greeting with the name in capitals.
String shout(String?  name){
  String cleanedName = name?.trim() ?? '';
if(cleanedName.isEmpty){
  return 'HELLO, there!'; 
}

  return 'HELLO, ${cleanedName.toUpperCase()}!';
}

int sumEven(List<int> num){
  int x=0;
  for (int n in num){
    if (n % 2 == 0){
      x += n;
    }
  }
  return x;
}