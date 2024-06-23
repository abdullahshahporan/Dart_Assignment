class Car {
  String brand;
  String model;
  int year;
  double milesDriven;

  static int numberOfCars = 0;

  Car(this.brand, this.model, this.year) {
    milesDriven = 0.0;
    numberOfCars++;
  }

  void drive(double miles) {
    milesDriven += miles;
  }

  double getMilesDriven() {
    return milesDriven;
  }

  String getBrand() {
    return brand;
  }

  String getModel() {
    return model;
  }

  int getYear() {
    return year;
  }

  int getAge() {
    int currentYear = DateTime.now().year;
    return currentYear - year;
  }
}

void main() {
  // Create three Car objects
  Car car1 = Car('Toyota', 'Camry', 2018);
  Car car2 = Car('Honda', 'Civic', 2015);
  Car car3 = Car('Ford', 'Mustang', 2020);

  // Drive each car a different number of miles
  car1.drive(500.5);
  car2.drive(300.0);
  car3.drive(1000.2);

  // Print details of each car
  print('Car 1:');
  print('Brand: ${car1.getBrand()}');
  print('Model: ${car1.getModel()}');
  print('Year: ${car1.getYear()}');
  print('Miles Driven: ${car1.getMilesDriven()}');
  print('Age: ${car1.getAge()} years\n');

  print('Car 2:');
  print('Brand: ${car2.getBrand()}');
  print('Model: ${car2.getModel()}');
  print('Year: ${car2.getYear()}');
  print('Miles Driven: ${car2.getMilesDriven()}');
  print('Age: ${car2.getAge()} years\n');

  print('Car 3:');
  print('Brand: ${car3.getBrand()}');
  print('Model: ${car3.getModel()}');
  print('Year: ${car3.getYear()}');
  print('Miles Driven: ${car3.getMilesDriven()}');
  print('Age: ${car3.getAge()} years\n');

  // Print total number of Car objects created
  print('Total number of Car objects created: ${Car.numberOfCars}');
}
