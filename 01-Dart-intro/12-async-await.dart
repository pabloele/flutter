void main() async {
  print('Inicio del programa');
  try {
    final value = await httpGet('https://fernando-herrera.com/cursos');
    print(value);
  } catch (e) {
    print(e);
  }
  print('Fin del programa');
}
// void main() {
//   print('Inicio del programa');

//   httpGet('https://fernando-herrera.com/cursos')
//       .then((value) {
//         print(value);
//       })
//       .catchError((err) {
//         print('Error: $err');
//       });

//   print('Fin del programa');
// }

Future<String> httpGet(String url) async {
  await Future.delayed(const Duration(seconds: 1), () {});
  throw 'Error en la petición http';
  return 'Respuesta de la petición http';
}
// Future<String> httpGet(String url) {
//   return Future.delayed(const Duration(seconds: 1), () {
//     throw 'Error en la petición http';

//     //     return 'Respuesta de la petición http';
//   });
// }
