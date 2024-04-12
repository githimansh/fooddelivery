class UnboardingContent {
  String image;
  String title;
  String description; 
  UnboardingContent(
    { required this.description, 
    required this.image,
     required this.title
     });
}

  List<UnboardingContent> contents = [
    UnboardingContent(
      description: 'Pick your food from our memu\n        More than 50 times',
     image: "images/screen1.png",
      title: "Select from Our Best Menu"),
     UnboardingContent(
      description: 'You can pay Cash on delivery and\n     Card payment is available',
      image: "images/screen2.png", 
      title: 'Easy and Online Payment'),
      UnboardingContent(
        description: 'Deliver your food at your\n            Doorstep', 
      image: "images/screen3.png", 
      title: 'Quick Delivery at Your Doorstep'),
  ];