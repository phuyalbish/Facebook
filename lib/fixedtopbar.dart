import 'package:facebook/packagelocations.dart';

class FixedTopBar extends StatefulWidget {
  const FixedTopBar({super.key});

  @override
  State<FixedTopBar> createState() => _FixedTopBarState();
}

class _FixedTopBarState extends State<FixedTopBar> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              "Facebook",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.w800,
              ),
            ),
            Container(
              margin: const EdgeInsets.all(1),
              child: Row(
                children: [
                  Container(
                      height: 35,
                      width: 35,
                      margin: const EdgeInsets.all(5),
                      child: Image.asset(
                        "assets/images/search.png",
                        width: 25,
                      )),
                  Container(
                    height: 40,
                    width: 40,
                    margin: const EdgeInsets.all(5),
                    child: Image.asset(
                      "assets/images/chat.png",
                      width: 25,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            for (var name in navimagelist)
              Image.asset(
                name,
                width: 25,
              )
          ],
        ),
        const Divider(
          color: Colors.black,
        ),
      ],
    );
  }
}
