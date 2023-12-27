class AppImage {
  String? VehicleNo;
  String? BrandName;
  String? Vehicle_Type;
  String? FuelType;
  bool? toshow;

// added '?'

  AppImage({this.FuelType, this.BrandName, this.VehicleNo, this.Vehicle_Type,this.toshow});
  // can also add 'required' keyword
}

List<AppImage> images = [
  AppImage(
      VehicleNo: "1",
      BrandName: "BMW",
      Vehicle_Type: "Bike",
      FuelType: "Diesel",
      toshow: true),
  AppImage(
      VehicleNo: "2",
      BrandName: "Hyundai",
      Vehicle_Type: "Car",
      FuelType: "Petrol",
      toshow: true),
  AppImage(
      VehicleNo: "3",
      BrandName: "AUDI",
      Vehicle_Type: "Car",
      FuelType: "Diesel",
      toshow: true),
  AppImage(
      VehicleNo: "4",
      BrandName: "Toyota",
      Vehicle_Type: "Bike",
      FuelType: "Petrol",
      toshow: true),
  AppImage(
      VehicleNo: "5",
      BrandName: "BMW",
      Vehicle_Type: "Bike",
      FuelType: "Diesel",
      toshow: true),
  AppImage(
      VehicleNo: "6",
      BrandName: "Hyundai",
      Vehicle_Type: "Car",
      FuelType: "Petrol",
      toshow: true),
  AppImage(
      VehicleNo: "7",
      BrandName: "BMW",
      Vehicle_Type: "Bike",
      FuelType: "Diesel",
      toshow: true),
  AppImage(
      VehicleNo: "8",
      BrandName: "Hyundai",
      Vehicle_Type: "Car",
      FuelType: "Petrol",
      toshow: true),
  AppImage(
      VehicleNo: "9",
      BrandName: "BMW",
      Vehicle_Type: "Bike",
      FuelType: "Diesel",
      toshow: true),
  AppImage(
      VehicleNo: "10",
      BrandName: "Hyundai",
      Vehicle_Type: "Car",
      FuelType: "Petrol",
      toshow: true),
];
