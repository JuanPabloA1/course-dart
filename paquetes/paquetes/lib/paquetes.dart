import 'package:paquetes/classes/reqres_country.dart';
import 'package:paquetes/classes/reqres_respuesta.dart';
import 'package:http/http.dart' as http;

void getReqRespService() {
  final url = Uri.parse('http://reqres.in/api/users?page=2');
  http.get(url).then((res) {
    //   // final body = jsonDecode(res.body);
    //   // print('page: ${body['page']}');
    //   // print('per_page: ${body['per_page']}');
    //   // // Asi es como se accede a los cuerpos del json cuando hay arreglos de por medio
    //   // print('id del tercer elemento: ${body['data'][3]['id']}');

    final resReqRes = reqResRespuestaFromJson(res.body);
    print('page: ${resReqRes.page}');
    print('per_page: ${resReqRes.perPage}');
    print('id del tercer elemento: ${resReqRes.data[2].id}');
  });
}

void getReqRespCountry() {
  final urlColombia = Uri.parse('https://restcountries.com/v3.1/name/colombia');
  http.get(urlColombia).then((res) {
    final p = countryFromJson(res.body);
    print("Debug console:");
    print("===========================");
    print('Pais: ${p[0].name.common}');
    print('Población: ${p[0].population}');
    print('Fronteras: ${p[0].borders}');
    print('Lenguajes: ${p[0].languages.spa}');
    print('Longitud: ${p[0].latlng[0]}');
    print('Latitud: ${p[0].latlng[1]}');
    print('Moneda: ${p[0].currencies.cop.name}');
    print('Bandera: ${p[0].flags.png}');
    print("===========================");
  });
}
