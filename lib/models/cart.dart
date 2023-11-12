import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShope = [
    Shoe(
      name: 'Air Max Bliss',
      price: '189',
      description:
          'Elevate your comfort with the sleek and stylish Air Max Bliss. Engineered for all-day wear, these shoes blend fashion and function seamlessly.',
      imagePath: 'lib/images/1.jpg',
    ),
    Shoe(
      name: 'Swift Runner Pro',
      price: '155',
      description:
          'Unleash your speed with the Swift Runner Pro. These performance-driven shoes are designed for runners seeking both agility and durability.',
      imagePath: 'lib/images/2.jpg',
    ),
    Shoe(
      name: 'Urban Explorer X',
      price: '199',
      description:
          'Navigate the city streets in style with the Urban Explorer X. Crafted with a fusion of modern design and urban functionality, these shoes are a statement of contemporary fashion.',
      imagePath: 'lib/images/3.jpg',
    ),
    Shoe(
      name: 'Revolution React',
      price: '120',
      description:
          'Join the revolution of comfort with the React series. Experience a responsive and cushioned ride, making every step a joy.',
      imagePath: 'lib/images/4.jpg',
    ),
    Shoe(
      name: 'Elemental Trailblazer',
      price: '215',
      description:
          'Conquer any terrain with the Elemental Trailblazer. These rugged yet refined shoes are built for outdoor enthusiasts who crave adventure.',
      imagePath: 'lib/images/5.jpg',
    ),
    Shoe(
      name: 'Infinity Flux',
      price: '175',
      description:
          'Step into the future of footwear with Infinity Flux. These futuristic shoes seamlessly blend cutting-edge design with unparalleled comfort.',
      imagePath: 'lib/images/6.jpg',
    ),
    Shoe(
      name: 'Epic Odyssey',
      price: '180',
      description:
          'Embark on an epic journey with the Odyssey series. Engineered for endurance and style, these shoes are your companion for every stride.',
      imagePath: 'lib/images/7.jpg',
    ),
    Shoe(
      name: 'Gravity Defier Elite',
      price: '225',
      description:
          'Defy gravity with the Elite edition. These high-performance shoes are engineered to provide maximum support and energy return, making you feel unstoppable.',
      imagePath: 'lib/images/8.jpg',
    ),
    Shoe(
      name: 'Velocity Stride',
      price: '140',
      description:
          'Experience the Velocity Stride – a perfect balance of speed and stability. These shoes are designed for those who crave a dynamic and responsive running experience.',
      imagePath: 'lib/images/9.jpg',
    ),
    Shoe(
      name: 'Lunar Harmony',
      price: '195',
      description:
          'Achieve lunar-like comfort with the Harmony series. These shoes combine lightweight design with advanced cushioning technology for a truly out-of-this-world experience.',
      imagePath: 'lib/images/10.jpg',
    ),
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  //get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShope;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
