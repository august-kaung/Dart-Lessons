 void main(){

  print('This is Testing')

  /Repetition Statement
  for(int i=0;i<=10;i++){
    print('Answer is ${i+1}');
  }
  int j=0;
  while(j<=5){
    print('Solution is ${j+1}');j++;
  }
  int k=0;
  do{
    print(k);k++;
  }while(k<=3);
  List<int> numList=[1,2,3,45,6];
  for(int result in numList){
    print(result);
  }
  print('----------------------------------');
  /Conditional Statement
  int a=10;
  int b=11;
  if(a>b){
    print('10 > 11');
  }else{
    print('Incorrect');
  }
  if(a<b){
    print('Less');
  }
  else if(a>b){
    print('Greater');
  }
  else{
    print('Equal');
  }
  switch(a=10){
    case 1 :
      print(' ONE');break;
    case 10 :
      print('Ten');break;
    case 3 :
      print('Three');break;
    default:
      print('Invalid');break;
  }
  print('-----------------------------');
  /List
  List<String> fruitList=['Apple','Orange','Grapes','Watermelon'];
  print(fruitList.length);
  print(fruitList.elementAt(3));
  print(fruitList.first);
  print(fruitList.last);
  print(fruitList.isEmpty);
  print(fruitList.isNotEmpty);
  fruitList.add('Mango');
  print(fruitList);
  fruitList.removeAt(0);
  print(fruitList.toSet());
  fruitList.remove(fruitList);
  print( fruitList.remove('Watermelon'));
   fruitList.removeRange(0,2);
  print(fruitList);
  fruitList.insert(0, 'Papaya');
  fruitList.insert(2, 'Mangosteen');
  print(fruitList);
  fruitList.insertAll(1,['Lettuce','Coconut'] );
  print(fruitList);

  Map
   Map<int,String> studentMap={
     1:'John',
     2:'Catherine',
     3:'Suzan',
     4:'Snow',
   };
  print(studentMap.keys);
  print(studentMap.values);
  studentMap.addAll({5:'Smith',6:'Mabel'});//add
  print(studentMap);
  studentMap[7]='Will'; //add
  studentMap.forEach((key, value) {print('$key : $value');});//fetch
  studentMap.remove(4);//remove
  print(studentMap);
  // studentMap.clear();
  //  print(studentMap);
   studentMap.update(7, (value) => 'William');
   print(studentMap);
   studentMap.updateAll((key, value) => value.toUpperCase() );
   print(studentMap);

    Set
  Set<int> setNumber={
    1,2,3,4,5,6,7,8,9,9
  };
  setNumber.add(99);
  print(setNumber);
   late&String Interpolation
   int val1=10;
   int val2=10;
  late int someThing;
  int someThing1=val1+val2;
  print(someThing1);

  String s1='Kaung';
  String s2='Htet';
   print('$s1 $s2');
  Function (Optional,named,Optional Default)
   functionOne('John',10);
   functionTwo('Snow',9);
   functionThree(age: 25,name: 'Edward');
 Fruit fruitObject=Fruit.choose('ll');
 print(fruitObject);
}
void functionOne([String ? name,int ? age]){
  print('$name is $age');
}
 void functionTwo([String name='Default',int age=0]){
   print('$name is $age');
 }
 void functionThree({String ? name,int ? age}){
   print('$name is $age');
 var accp=methodOne(4);
 accp(5);
 functionOne(functionTwo);
P p=P('Ok pr mg ly');
print(p.ok);
 A a=B(11,'heee');
 print(a);
Animal animal=Dog();
animal.drink();
animal.eat();

Animal animal2=Cat();
animal2.drink();
animal2.eat();
 var animalobj=Cat();
 animalobj.name();
 animalobj.type();
 animalobj.address();
 var humanobj=John();
 humanobj..type()..name()..address();
   Future
   futureMethod().then((value) => print(value));
   futureMethod().whenComplete(() => print('Complete'));
   futureError().catchError((error)=> print(error));
   Stream
   List<int> intList=[1,2,3,4,5,6,6,7,];
   Stream <List<int>> getStream=Stream.value(intList);
    getStream.listen((event) {
      print(event);});
    streamMethod().listen((e) {},
        onDone: ()=> print('Its over!'),
    onError: (a){
      print(a);
  });
}
 /Object Oriented Programming
 /Default , Named and Factory Constructor
 class Fruit{
  String ? name;

  Fruit(){
    print('THis is default constructor');
  }
  Fruit.fresh(){
    print('This is fresh');
  }
  Fruit.flavour(){
    print('This is sweet');
  }
  Fruit.color(){
   print('This is red');
  }
  factory Fruit.choose(String type){

    if(type=='fresh'){
      return Fruit.fresh();
    }
    else if(type=='flavour'){
      return Fruit.flavour();
    }
    return Fruit.color();
  }
 Setter & Getter
 Person personObj=Person();
 personObj.setData='Catherine';
 //print(personObj.getData);
 print(personObj._name);
}

class Person{
 String ? _name;

 set setData(String nickName)=>_name=nickName;
 get getData=>_name;
 Closure
 methodOne(var one){
 int id=9;
  methodTwo(var two){
  print('Answer is ${one*id}');
  return id=two;
  }
  return methodTwo;
 }
 functionOne(Function anyFunction){
 return anyFunction();
 }
 void functionTwo(){
  print('This is function two');
}
 class P{
 var ok;
 P(this.ok);
 }
 class A{

 var name;
 A(this.name);
 }
 class B extends A{

 var name2;

 B(this.name2,var name3):super(name3){
  print('$name2 $name3');
  }
 }
abstract class Animal{
  void eat();
  void drink();
}
class Dog extends Animal{
  @override
  void eat(){
    print('Dog is eating');
  }
  @override
  void drink(){
    print('Dog is drinking');
  }
}
 class Cat extends Animal{
   @override
   void eat(){
     print('Cat is eating');
   }
   @override
   void drink(){
     print('Cat is drinking');
   }
 }

 class Animal{
  void type()=>print('THis is animal');
 }
 class Human{
   void type()=>print('THis is human');
 }
 class Cat extends Animal {
   void name()=>print('THis is animal one');
 }
 class John extends Human with Living{
   void name()=>print('THis is human one');
 }


 mixin Living on Human{
   void address()=>print('They are living things with high intelligence');
 }
Future
Future futureMethod()async{
  await Future.delayed(Duration(seconds: 3));
  return Future.value('Something');
}
Future futureError(){
  return Future.error(NullThrownError());
}
 Stream
Stream streamMethod()=>Stream.error(NullThrownError());