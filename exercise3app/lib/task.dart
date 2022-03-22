import "dart:math";

void main() {

  var random = new Random();
  var randomNum = new List.generate(100, (_) => random.nextInt(1000));
  print(randomNum);
  print(randomNum.length);
  //Reduces method combines all elements of a list iteratively to one single value using a given functions
  
  var minNum = randomNum.reduce(min);
  var maxNum = randomNum.reduce(max);
  var sumNum = randomNum.reduce((value, element)=>value + element);
  var avgNum = sumNum / randomNum.length;
  
  print("Min : ${minNum}");
  print("Max : ${maxNum}");
  print ("Average : ${avgNum}");

  String str = "Poems, like songs sung well, are made of sentences as well as lines. The sentence is part of a poem’s music just as much as the meter.";
  String sentence = str.toLowerCase(); 
  List<String> words = sentence.split(" ");
  words.sort();
  var sortedList = words..sort();
  print(sortedList);

  Map<String, int> map = {};
  for(int i = 0; i < sortedList.length; i++){
    int count = map[sortedList[i]] ?? 0;
     map[sortedList[i]] = count + 1;
  }
  print(map);
  
 
}