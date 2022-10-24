
/* String _fetchCustom(String data) {
  return 'a';
}

@JsonSerializable()
class ResourcesModel {
  List<Data>? data;

  ResourcesModel({this.data});

  ResourcesModel.fromJson(Map<String, dynamic> json) {
    // _$ResourcesModelFromJson(json);
  }

  Map<String, dynamic> toJson() {
    // return _$ResourcesModelToJson(this);
  }
}

@JsonSerializable(createToJson: false)
class Data extends Equatable {
  final int? id;
  final String? name;
  final int? year;
  @JsonKey(name: 'renk')
  final String? color;
  @JsonKey(fromJson: _fetchCustom)
  final String? pantoneValue;
  final String? price;
  final StatusCode? status;

  const Data({this.id, this.name, this.year, this.color, this.pantoneValue, this.price, this.status});

  // factory Data.fromJson?(Map<String, dynamic> json) {
    // return _$DataFromJson(json);
  }

  @override
  List<Object?> get props => [id, name, price];
}

enum StatusCode {
  @JsonValue(200)
  succes,
  @JsonValue(500)
  weird,
}
*/