import 'dart:convert';
import 'package:flora/data/model/plant_model.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart' as httpException;

class PlantRepo {
  final String _baseUrl = 'https://www.jsonkeeper.com/b/6Z9C';

  Future<dynamic> getPlantsRepo() async {
    try {
      final response = await http.get(Uri.parse(_baseUrl));

      if (response.statusCode == 200) {
        final Map<String, dynamic> jsonResponse = jsonDecode(response.body);

        final List<dynamic> plantsList = jsonResponse['data'];
        return plantsList.map((data) => PlantModel.fromJson(data)).toList();
      } else {
        return response.body;
      }
    } on httpException.ClientException catch (e) {
      print('Client Exception: ${e.message}');
      return e.message;
    } on FormatException catch (e) {
      print('Format Exception: ${e.message}');
      return e.message;
    } catch (e) {
      return e.toString();
    }
  }
}
