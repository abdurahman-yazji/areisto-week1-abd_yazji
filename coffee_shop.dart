enum DrinkSize { 
  small(1.0), 
  medium(1.25), 
  large(1.5);

  final double priceMultiplier;

  const DrinkSize(this.priceMultiplier);
  }

  abstract class Drink{
final String name;
final double basePrice;
final DrinkSize size;

Drink({
  required this.name,
  required this.basePrice,
  required this.size});

double get finalPrice => basePrice * size.priceMultiplier;
String description();

@override
  String toString() => '${size.name} $name: \$${finalPrice.toStringAsFixed(2)}';


  }


  


  


  class coffee extends Drink{
  
  final int extraShots;

  coffee({
    required super.name,
    required super.basePrice,
    required super.size,
    required this.extraShots,
      });
  
  @override
  double get finalPrice => (basePrice * size.priceMultiplier) + (extraShots * 5);

@override
  String description(){ 
final shotsText = extraShots >0 ? ' ,$extraShots extra shots' : '';
  return '$name   (${size.name} $shotsText)';

  }
}

class Tea extends Drink{
final bool isHerbal;

Tea ({
  required super.name,
  required super.basePrice,
  required super.size,
  required this.isHerbal,
});
String description(){
final type =isHerbal ? 'Herbal':'Normal';
return '$name (${size.name},$type)';

}
}

class Juice extends Drink{

final String fruitType;

Juice({
  required super.name,
  required super.basePrice,
  required super.size,
  required this.fruitType,
});


String description(){
return '$fruitType Juice ($name, ${size.name})';
}
}

class Order{
  final String customerName;
  final List<Drink> drinks=[];
  Order({required this.customerName});
  void addDrink(Drink drink){
    drinks.add(drink);
  }
  void removeDrink(Drink drink){
    drinks.remove(drink);
  }
  int get itemCount => drinks.length;
  double get subtotal => drinks.fold(0, (total, drink) => total + drink.finalPrice);
  
  double get discountpercentage => itemCount > 3 ? 0.10 : 0.0;

  double get discountAmount => subtotal * discountpercentage;

double get totalprice => subtotal - discountAmount;

String recepit(){
final buffer = StringBuffer();
buffer.writeln('\t\t------Areisto Coffee Shop------\n');
buffer.writeln('Customer Name: $customerName\n');
buffer.writeln('Items:\n');
for (final drink in drinks){
  buffer.writeln(
    '${drink.description().padRight(35)}  ${drink.finalPrice.toStringAsFixed(2)} NIS',
      );

      
}
buffer.writeln('\nItem : $itemCount');
      if (discountpercentage > 0){
        buffer.writeln(
        'Discount (${(discountpercentage * 100).toInt()}%): -${discountAmount.toStringAsFixed(2)} NIS',
      );}
buffer.writeln(('\n\t\t------Total Price:${totalprice.toStringAsFixed(2)} NIS------'));
return buffer.toString();
}}

void main() {
  final order = Order(customerName: 'ABD YAZJI');
  
  order.addDrink(coffee(
    name: 'Espresso',
   basePrice: 10.0,
    size: DrinkSize.small,
     extraShots: 1));

  order.addDrink(Tea(
    name: 'Black Tea',
     basePrice: 10.0,
      size: DrinkSize.medium,
       isHerbal: true));

  order.addDrink(Juice(
    name: 'Mango Juice',
     basePrice: 18.0,
      size: DrinkSize.large, 
      fruitType: 'Mango'));
  
  order.addDrink(coffee(
    name: 'cappuccino', 
    basePrice: 15.0, 
    size: DrinkSize.large, 
    extraShots: 2));

  print(order.recepit());
}
