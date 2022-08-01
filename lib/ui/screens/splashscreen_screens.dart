part of 'screens.dart';

class SpashscreenScreens extends StatefulWidget {
  const SpashscreenScreens({Key? key}) : super(key: key);

  @override
  State<SpashscreenScreens> createState() => _SpashscreenScreensState();
}

class _SpashscreenScreensState extends State<SpashscreenScreens> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Container(color: accentsColor1),
    );
  }
}
