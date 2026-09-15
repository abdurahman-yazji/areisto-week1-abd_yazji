# Part A — Quick questions

### 1. What is the difference between var and dynamic?

a) They are identical  
b) var infers the type once and keeps it; dynamic allows the type to change  
c) dynamic is faster  
d) var only works for numbers  

### The Answer is: 
b) var infers the type once and keeps it; dynamic allows the type to change  

---
### 2. ★ Which of these causes a compile error?
```dart  
final int a = 5;

a = 6;
 ```
a) No error  
b) Error, because final variables cannot be reassigned  
c) Error, because int cannot be final  
d) Error, but only at runtime
  ### The Answer is: 
b) Error, because final variables cannot be reassigned   

★  we can not reassigned value for  variables if its final .  

---

### 3. What does ?? do here —  ```dart  final name = input ?? 'Guest';```

a) Checks if input is true  
b) Returns 'Guest' if input is null, otherwise returns input  
c) Compares two values  
d) Throws an error if input is null  
### The Answer is: 
b) Returns 'Guest' if input is null, otherwise returns input  

---

### 4. What is printed?
```dart
final list = [1, 2, 3];

final doubled = list.map((n) => n * 2).toList();

print(doubled);
```
a) [1, 2, 3]  
b) [2, 4, 6]  
c) [1, 4, 9]  
d) Error  

### The Answer is: 
b) [2, 4, 6] 

---
### 5. ★ What is wrong with this code?
```dart
String? name;

print(name.length);
```
a) Nothing  
b) name might be null, so .length cannot be called directly  
c) String? is not a valid type  
d) print cannot accept a number
 
### The Answer is: 
b) name might be null, so .length cannot be called directly

★ The `name` variable has no value (null), so we cant git its length we can do ```dart print(name?.length ?? 0);``` to handel the issuu, then length will be 0 when `name`is null. 

---

### 6. Given `void greet({required String name, int age = 18}),` which call is valid?

a) `greet('Sara', 20) ` 
b)` greet(name: 'Sara') ` 
c)` greet(age: 20) `   
d) `greet()`  

### The Answer is: 
b) `greet(name: 'Sara')     `

---
### 7. What is a constructor?

a) A method that runs every time you call the class  
b) A special function that creates and initializes an instance of a class  
c) A way to delete objects  
d) A type of variable  

### The Answer is: 
b) A special function that creates and initializes an instance of a class    

---
### 8. Which collection guarantees no duplicate values?

a) List  
b) Map  
c) Set  
d) Iterable  

### The Answer is: 
c) Set  

---
 
 ### 9. ★ You write `class Cat extends Animal.` What does this mean?

a) Cat copies the code of Animal by hand  
b) Cat inherits the fields and methods of Animal, and can add to or override them  
c) Animal can now use Cat's methods  
d) They are the same class  

### The Answer is: 
b) Cat inherits the fields and methods of Animal, and can add to or override them   

---

10. What does `try / catch` do?

a) Retries the code until it works   
b) Runs code that might throw an error, and handles the error if it does  
c) Makes code run faster  
d) Checks if a variable is null  
 
 ### The Answer is: 
b) Runs code that might throw an error, and handles the error if it does    

---