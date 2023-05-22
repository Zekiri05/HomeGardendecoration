class Plant {
  final int plantId;
  final int price;
  final String color;
  final double rating;
  final int part;
  final String category;
  final String plantName;
  final String imageURL;
  bool isFavorated;
  final String decription;
  bool isSelected;

  Plant(
      {required this.plantId,
        required this.price,
        required this.category,
        required this.plantName,
        required this.color,
        required this.rating,
        required this.part,
        required this.imageURL,
        required this.isFavorated,
        required this.decription,
        required this.isSelected});

  //List of Plants data
  static List<Plant> plantList = [
    Plant(
        plantId: 0,
        price: 15,
        category: 'Outdoor Lights',
        plantName: 'Waterproof Garden',
        color: 'Black',
        rating: 4.7,
        part: 4,

        imageURL: 'assets/images/lights.png',
        isFavorated: true,
        decription:
        ' Light Outdoor Commercial 120000lm Ip65 Waterproof Garden Fence Yard ',
        isSelected: false),
    Plant(
        plantId: 1,
        price: 30,
        category: 'Chairs',
        plantName: 'Outdoor Wicker Chairs Set',
        color: 'White',
        rating: 4.9,
        part: 6,

        imageURL: 'assets/images/chairs.png',
        isFavorated: true,
        decription:
        'Freshen up your outdoor area with this set chairs',
        isSelected: false),
    Plant(
        plantId: 2,
        price: 65,
        category: 'Hammock',
        plantName: 'Blue Hammock',
        color: 'Blue',
        rating: 4.4,
        part: 1,

        imageURL: 'assets/images/kindpng_2249982.png',
        isFavorated: true,
        decription:
        'Swing Hammock Lightweight Nylon Quality',
        isSelected: false),
    Plant(
        plantId: 3,
        price: 22,
        category: 'Flowers',
        plantName: 'Yellow Flowers',
        color: 'Yellow',
        rating: 4.8,
        part: 1,

        imageURL: 'assets/images/flower.png',
        isFavorated: true,
        decription:
        'Modern flower with blue',
        isSelected: false),
    Plant(
        plantId: 4,
        price: 28,
        category: 'Chairs',
        plantName: 'Orendo',
        color: 'Yellow',
        rating: 4.7,
        part: 6,

        imageURL: 'assets/images/yes.png',
        isFavorated: true,
        decription:
        'Garden Patio Outdoor Seater Swing Chair',
        isSelected: false),

  ];

  //Get the favorated items
  static List<Plant> getFavoritedPlants(){
    List<Plant> _travelList = Plant.plantList;
    return _travelList.where((element) => element.isFavorated == true).toList();
  }

  //Get the cart items
  static List<Plant> addedToCartPlants(){
    List<Plant> _selectedPlants = Plant.plantList;
    return _selectedPlants.where((element) => element.isSelected == true).toList();
  }
}
