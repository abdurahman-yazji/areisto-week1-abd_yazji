# Part B — Explain it in your own words

## 1.` final vs const` What is the difference? Give a short code example where const produces an error but final works, and explain why.
 

 Both final and const are used to define  variables  that cannot be changed once assigned, but they differnt in when the memory allocation and initialization occur.

final: Runtime constant. The value is set once at runtime when the code executes.

const: Compile-time constant. The value must be known before the code runs and is frozen at compile time.


| Feature | `final` | `const` |
| :--- | :--- | :--- |
| **Initialization Time** | Runtime | Compile-time |
| **Accepts Dynamic Variable Values?** | Yes (e.g., DateTime, API data, user inputs) | No (must be an explicit, 100% constant value) |
| **Performance & Memory** | Good | Best (allocates a single canonical space in memory) |

```dart
void main() {

  final finalTime = DateTime.now();

  const constTime = DateTime.now(); 
}
 ```
**Why const Produces an Error?**  
The `DateTime.now()` It is a function that retrieves the system date and time at the moment the program executes.  

Because `const` requires the exact value to be evaluated and fixed at compile time , Dart cannot determine what`DateTime.now()`  in advance. Therefore, `const` throws a compilation error, whereas `final` works because it resolves its value dynamically at runtime.

## 2. Null safety What problem does it actually solve? Give an example of a bug it prevents. When is it acceptable to use !, and why should it be rare?  
 ### 1.What Problem Does Null Safety Solve?  
The issue of the application crashing during execution due to accessing properties or calling methods on null variables.   
  null safety changes potential runtime errors into edit-time or compile-time errors.
### 2. Example of a Bug It Prevents  
***Error code***
```dart 
int stringLength(String String) {
  return String.length;
}

void main() {
  stringLength(null); 
}
```
***NoError code***
```dart
int? stringLength(String? text) {
  if (text == null) {
    return 0; 
  }
  return text.length;
}
```
### 3. When is it Acceptable to Use !, and Why Should It Be Rare?  
The Null Assertion Operator `(!)`tells the Dart compiler: "The variable is not null right now, so treat it as non-nullable."  
Using `!` bypasses the compile-time safety net provided by Dart. If your assumption is ever wrong—even once—the application will instantly crash with a runtime Error.

## 3. Modeling You are asked to model a university course registration system. Name three classes you would create, list two or three fields for each, and give one method per class. For one of them, explain why you made it a class instead of just a variable or a map. 


### class 1:  
class name:`Course`   
Fields:  
`String Code`  
`String title`  
`int Capacity`   
Method:  
`changeCapacity(int newCapacity) ` _validates and updates the course capacity

 ### class 2:   
 class name:`Student`   
Fields:  
`int id `  
`String name`  
`String email`  
Method:  
`updateEmail(String newEmail)` validates and updates the student's email.


 ### class 3:   
 class name:`Enrollment`   
Fields:  
`student student`  
`course course`  
`bool isActive`  
Method:  
`cancel()`marks the registration as inactive. 



Each enrollment connects one student to one course. I made Enrollment a class because it combines typed data with related behavior. A single variable cannot represent the complete registration, while a map offers less explicit structure and relies on keys that can be misspelled.