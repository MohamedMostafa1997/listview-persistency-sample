class MyController {
  List itemsNames = [
    'kite',
    'keyboard',
    'button',
    'two',
    'singer',
    'burger',
    'rifle',
    'romania',
    'mother',
    'pocket knife',
    'matt damon',
    'cafe',
    'ball',
    'apostrophe',
    'hair',
    'led',
    'song',
    'sea',
    'self',
    'car',
    'iron',
    'voice',
    'thirty eight',
    'dress',
    'microphone',
    'network',
    'book',
    'finger',
    'tomatoes',
    'back',
    'bracket',
    'bread',
    'ant',
    'ceiling',
    'people',
    'thursday',
  
  ];

  List<int> checkedItemsIndexes = (List<int>.empty(growable: true));

  void changeCheckStatus(int index) {
    if (checkedItemsIndexes.contains(index)) {
      checkedItemsIndexes.remove(index);
    } else {
      checkedItemsIndexes.add(index);
    }
  }
}
