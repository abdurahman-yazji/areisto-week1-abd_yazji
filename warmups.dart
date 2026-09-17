void main () {
print(shout('Alice')); 
print(shout('    '));
print(shout(''));
print(shout(null));

}


///Returns a greeting with the name in capitals.
String shout(String?  name){
  String cleanedName = name?.trim() ?? '';
if(cleanedName.isEmpty){
  return 'HELLO, there!'; 
}

  return 'HELLO, ${cleanedName.toUpperCase()}!';
}