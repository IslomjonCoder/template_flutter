import '../models/car.dart';

class Cars {
  static List<Car> cars = [
    Car(
        model: "I8",
        isElectric: true,
        year: 2023,
        manufacture: "BMW",
        url: 'assets/images/img_1.png'),
    Car(
        model: "Model S",
        isElectric: true,
        year: 2022,
        manufacture: "Tesla",
        url: 'assets/images/img.png'),
    Car(
        model: "Malibu",
        isElectric: true,
        year: 2021,
        manufacture: 'Chevrolet',
        url: 'assets/images/img_2.png'),
    Car(
        model: "K5",
        isElectric: true,
        year: 2020,
        manufacture: "Kia",
        url: 'assets/images/img_3.png'),
  ];
}
