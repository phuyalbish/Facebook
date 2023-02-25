import 'package:facebook/packagelocations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //-> Do research
      title: 'FaceBook',
      theme: ThemeData(
          //-> do research
          primarySwatch: Colors.blue),
      home: const FacebookClone(),
    );
  }
}
