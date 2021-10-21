enum MBType {ATX, mATX, UltraATX}

abstract class Motherboard{
 final String name='';
 final String factoryMB='';
  
  
  factory Motherboard(MBType mbType){
    switch (mbType){
      case MBType.ATX:
        return ATX();
      case MBType.UltraATX:
        return UltraATX();
      case MBType.mATX:
        return mATX();
      default:
        throw ArgumentError();
    }
  }
}

class ATX implements Motherboard{
  @override
  String get name => 'ATX';
  
  @override
  String get factoryMB => 'Factory1';
  
  @override
  String toString(){
    return '$name created by $factoryMB';
  }
}

class mATX implements Motherboard{
  @override
  String get name => 'mATX';
  
  @override
  String get factoryMB => 'Factory2';
  
  @override
  String toString(){
     return '$name created by $factoryMB';
  }
}

class UltraATX implements Motherboard{
  @override
  String get name => 'UltraATX';
  
  @override
  String get factoryMB => 'Factory3';
  
  @override
  String toString(){
     return '$name created by $factoryMB';
  }
}

void main (List<String> arguments){
  for(var value in MBType.values){
    var motherboard = Motherboard(value);
    print(motherboard.toString());
  }
}
