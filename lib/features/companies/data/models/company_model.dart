import 'package:tractian_challenge/features/companies/domain/entities/company.dart';

class CompanyModel {
  const CompanyModel({
    required this.name,
    required this.id,
  });

  factory CompanyModel.fromJson(Map<String, dynamic> json) {
    return CompanyModel(
      name: json['name'],
      id: json['id'],
    );
  }

  Company toEntity() {
    return Company(
      name: name,
      id: id,
    );
  }

  final String name;
  final String id;
}
