class Product {
  final String img;
  final String name;
  final int quantity;
  final double productPrice;
  final String category;

  Product({
    required this.name,
    required this.img,
    required this.quantity,
    required this.productPrice,
    required this.category,
  });
}

// Sample product data for different sections
List<Product> exclusiveOfferProducts = [
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/ai-generated-8676957_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/apples-575317_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/bananas-575773_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/broccoli-40295_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/cabbage-575525_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/pumpkin-2894938_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Exclusive Orange',
    img: 'assets/picture/pumpkin-9019574_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  // Add more products
];

List<Product> bestSellingProducts = [
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/capsicum-2025457_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/cherries-158241_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/eggplant-309459_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/cucumber-1299833_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/eat-1296402_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/vegetables-155616_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Best Selling Mango',
    img: 'assets/picture/watermelon-154510_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  // Add more products
];

List<Product> groceriesProducts = [
  Product(
    name: ' Orange',
    img: 'assets/picture/cherry-105141_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: ' Mango',
    img: 'assets/picture/fruit-7087053_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Orange',
    img: 'assets/picture/pears-42897_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: ' Mango',
    img: 'assets/picture/pepper-158476_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  Product(
    name: 'Orange',
    img: 'assets/picture/peppers-25384_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  // Add more products
];

class Item {
  final String img;
  final String name;

  Item({
    required this.name,
    required this.img,
  });
}

List<Item> groceriesItem = [
  Item(
    name: ' Pulses',
    img: 'assets/picture/img.png',
  ),
  Item(
    name: ' Rice',
    img: 'assets/picture/img_1.png',
  ),
  Item(
    name: 'Fish',
    img: 'assets/picture/animal-2029698_1280.png',
  ),
  // Add more products
];

List<Product> findProduct = [
  Product(
    name: 'Fresh Fruits & Vegetable',
    img: 'assets/find_products/img.png',
    category: 'Fresh Fruits & Vegetable', // Add category name
    quantity: 2,
    productPrice: 2,
  ),
  Product(
    name: 'Cooking Oil & Ghee',
    img: 'assets/find_products/img_8.png',
    category: 'Cooking Oil & Ghee',
    quantity: 2,
    productPrice: 2,
  ),
  Product(
    name: 'Meat & Fish',
    img: 'assets/find_products/img_9.png',
    category: 'Meat & Fish',
    quantity: 2,
    productPrice: 2,
  ),
  Product(
    name: 'Bakery & Snacks',
    img: 'assets/find_products/img_10.png',
    category: 'Bakery & Snacks',
    quantity: 2,
    productPrice: 2,
  ),
  Product(
    name: 'Dairy & Eggs',
    img: 'assets/find_products/img_4.png',
    category: 'Dairy & Eggs',
    quantity: 2,
    productPrice: 2,
  ),
  Product(
    name: 'Beverages',
    img: 'assets/find_products/img_5.png',
    category: 'Beverages',
    quantity: 2,
    productPrice: 2,
  ),
];

List<Product> FreshFruitsVegetable = [
  Product(
    name: 'Mango',
    img: 'assets/picture/capsicum-2025457_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Cherries',
    img: 'assets/picture/cherries-158241_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Fresh Fruits & Vegetable products
];

List<Product> CookingOilGhee = [
  Product(
    name: 'Sunflower Oil',
    img: 'assets/picture/ai-generated-8676957_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Ghee',
    img: 'assets/picture/cucumber-1299833_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Cooking Oil & Ghee products
];

List<Product> MeatFish = [
  Product(
    name: 'Sunflower Oil',
    img: 'assets/picture/pears-42897_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Ghee',
    img: 'assets/picture/pumpkin-2894938_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Cooking Oil & Ghee products
];

List<Product> BakerySnacks = [
  Product(
    name: 'Sunflower Oil',
    img: 'assets/picture/vegetables-155616_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Ghee',
    img: 'assets/picture/broccoli-40295_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Cooking Oil & Ghee products
];

List<Product> DairyEggs= [
  Product(
    name: 'Sunflower Oil',
    img: 'assets/picture/apples-575317_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Ghee',
    img: 'assets/picture/watermelon-154510_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Cooking Oil & Ghee products
];

List<Product> Beverages = [
  Product(
    name: 'Sunflower Oil',
    img: 'assets/picture/cabbage-575525_1280.png',
    quantity: 2,
    productPrice: 5.99, category: '',
  ),
  Product(
    name: 'Ghee',
    img: 'assets/picture/vegetables-155616_1280.png',
    quantity: 3,
    productPrice: 6.99, category: '',
  ),
  // Add more Cooking Oil & Ghee products
];




