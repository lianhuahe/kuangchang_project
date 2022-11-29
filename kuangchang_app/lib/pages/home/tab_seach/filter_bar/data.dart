class FilterBarResult{
  final String? priceID;
  final String? scoreID;
  final List<String>? moreIds;
  FilterBarResult({this.priceID,this.scoreID,this.moreIds});
}

//通用类型
class GeneralType{
  final String? name;
  final String? id;

  GeneralType(this.name,this.id);
}

List<GeneralType> priceList = [
  GeneralType('由小到大','11'),
  GeneralType('由大到小','22'),
];


List<GeneralType> scoreList = [
  GeneralType('由小到大','11'),
  GeneralType('由大到小','22'),
];