# LHL---W04-D02

Hello everyone, this morning we talked about the following topics (not in the same order perhaps).

######    Forced and optional unwrapping:
Forced done by appending ! to the variable name.
Gives the value if there is one or crashes if it is nil.
Only in places where you know that the value can't be nil.
Optional done by appending ? to the variable name.


######    guard
Similar to if-let. Variable it binds to the unwrapped value is in scope outside of the following block, instead of inside.
Useful when you need to do a lot of unwrapping and don't want to make nested if-lets. An example would be:

guard let name = nameTxtFld?.text else
{
print("No name")
}

######    if-let construct
Lets bind the unwrapped value to a variable if it's non-nil in the body of the if statement.
It is useful if you want to do stuff with the value if there is one, but also do other things if it's nil. Doing the same thing as in guard with If-Let would look like:

if let name = nameTxtFld?.text    {

}
else    {
print("No name")
{



######    Downcasting
Unlike Obj-C that you use (someClass *) to cast. This is very unsafe.
in Swift you could do as! someClass or as? someClass


######    Tuples
Tuples group multiple values into a single compound value. The values within a tuple can be of any type and don’t have to be of the same type as each other.


######    Classes
Use of public classes, functions and scope


######    We also looked at Functions with Multiple return types and we did a quick test for an email sender app.


######    Generics
These let us parameterize types with other types. This is what lets us have container types like Array and Dictionary that can be made to contain different types.


######    Finally we looked into Importing ObjC into Swift and vice versa
In your Objective-C bridging header file, import every Objective-C header you want to expose to Swift
In Build Settings. When importing swift into ObjC, remember that the file name is called “yourModule-Swift.h”


Our word cloud is also in here:   ![alt text](https://github.com/AmirJahan/LHL---W04-D02/blob/master/W4D2%20WC.png)



This thread is useful to read as for whether variables are atomic or nonatomic:
https://stackoverflow.com/questions/24157834/are-swift-variables-atomic/24158289

