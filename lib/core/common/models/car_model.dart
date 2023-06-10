import 'package:mycar/core/common/models/brand_type.dart';
import 'package:mycar/core/common/models/fuel_tye.dart';
import 'package:mycar/core/common/models/transmition_type.dart';
import 'package:mycar/core/common/models/type_of_shop.dart';

class CarModel {
  final String id;
  final String productionDate;
  final String name;
  final num engineCapacity;
  final String color;
  final String status;
  final bool hasTurbo;
  final bool isNew;
  final bool hasSnroof;
  final num kilometerAge;
  final num duration;
  final num price;
  final num consumption;
  final num topSpeed;
  final num dimensions;
  final num fullTypeId;
  final num transmationId;
  final num brandId;
  final num carModelId;
  final num typeOfShopId;
  final BrandType brandType;
  final FuelType fuelType;
  final TransmitionType transmitionType;
  final TypeOfShop typeOfShop;

  const CarModel(
      {required this.id,
      required this.productionDate,
      required this.engineCapacity,
      required this.color,
      required this.status,
      required this.hasTurbo,
      required this.isNew,
      required this.hasSnroof,
      required this.kilometerAge,
      required this.duration,
      required this.price,
      required this.consumption,
      required this.topSpeed,
      required this.dimensions,
      required this.fullTypeId,
      required this.transmationId,
      required this.brandId,
      required this.carModelId,
      required this.typeOfShopId,
      required this.name,
      required this.typeOfShop,
      required this.transmitionType,
      required this.fuelType,
      required this.brandType});

  factory CarModel.fromMap(Map<String, dynamic> map) {
    return CarModel(
      name: map['car_model']['name'],
      id: map['id'].toString(),
      productionDate: map['production_date'].toString(),
      engineCapacity: map['engine_capacity'] as num,
      color: map['color'].toString(),
      status: map['status'].toString(),
      hasTurbo: map['has_turbo'] == 1 ? true : false,
      isNew: map['is_new'] == 1 ? true : false,
      hasSnroof: map['has_sunroof'] == 1 ? true : false,
      kilometerAge: map['kilometerage'] as num,
      duration: map['duration'] as num,
      price: map['price'] as num,
      consumption: map['consumption'] as num,
      topSpeed: map['top_speed'] as num,
      dimensions: map['dimensions'] as num,
      fullTypeId: map['fuel_type_id'] as num,
      transmationId: map['transmission_id'] as num,
      brandId: map['brand_id'] as num,
      carModelId: map['car_model_id'] as num,
      typeOfShopId: map['type_of_shop_id'] as num,
      typeOfShop:
          TypeOfShop.fromMap(map['type_of_shop'] as Map<String, dynamic>),
      transmitionType:
          TransmitionType.fromMap(map['transmission'] as Map<String, dynamic>),
      fuelType: FuelType.fromMap(map['fuel_type'] as Map<String, dynamic>),
      brandType: BrandType.fromMap(map['brand'] as Map<String, dynamic>),
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': this.id,
      'productionDate': this.productionDate,
      'engineCapacity': this.engineCapacity,
      'color': this.color,
      'status': this.status,
      'hasTurbo': this.hasTurbo,
      'isNew': this.isNew,
      'hasSnroof': this.hasSnroof,
      'kilometerAge': this.kilometerAge,
      'duration': this.duration,
      'price': this.price,
      'consumption': this.consumption,
      'topSpeed': this.topSpeed,
      'dimensions': this.dimensions,
      'fullTypeId': this.fullTypeId,
      'transmationId': this.transmationId,
      'brandId': this.brandId,
      'carModelId': this.carModelId,
      'typeOfShopId': this.typeOfShopId,
    };
  }
}
