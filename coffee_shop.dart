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