void main () {
print(shout('Alice')); 
print(shout('    '));
print(shout(''));
print(shout(null));


print(sumEven([1, 2, 3, 4]));
print(sumEven([]));
print(sumEven([1, 3, 5]));

print(countWords('Hello world! Hello everyone.'));
print(countWords('the cat the dog'));
print(countWords(''));




}



///Returns a greeting with the name in capitals.
String shout(String?  name){
  String cleanedName = name?.trim() ?? '';
if(cleanedName.isEmpty){
  return 'HELLO, there!'; 
}

  return 'HELLO, ${cleanedName.toUpperCase()}!';
}
///Returns the sum of only the even numbers.
int sumEven(List<int> num){
  int x=0;
  for (int n in num){
    if (n % 2 == 0){
      x += n;
    }
  }
  return x;
}

///Counts how many times each word appears. Case-insensitive, extra spaces ignored.
Map<String, int> countWords(String text) {

  Map<String, int> wordCount = {};

  String cleanedText = text.trim().toLowerCase();
  if (cleanedText.isEmpty) {
    return wordCount;
  }

  List<String> words = cleanedText.split(RegExp(r'\s+'));
  
  for (String word in words) {
  
      wordCount[word] = (wordCount[word] ?? 0) + 1;
    }
  
  return wordCount;
}