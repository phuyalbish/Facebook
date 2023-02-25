import 'package:facebook/packagelocations.dart';

class FacebookClone extends StatefulWidget {
  const FacebookClone({super.key});

  @override
  State<FacebookClone> createState() => _FacebookCloneState();
}

class _FacebookCloneState extends State<FacebookClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(title: const Text("Facebook")),
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              const FixedTopBar(),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 5, bottom: 5),
                    width: 60,
                    height: 60,
                    decoration: BoxDecoration(
                        image: const DecorationImage(
                            image: AssetImage('assets/images/profile.jpg'),
                            fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(100)),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerLeft,
                      padding: const EdgeInsets.only(
                        left: 30,
                      ),
                      margin: const EdgeInsets.only(top: 10, bottom: 10),
                      height: 40,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(100),
                          border: Border.all(color: Colors.grey, width: 2)),
                      child: const Text(
                        "What's on your mind?",
                        style:
                            TextStyle(color: Color.fromARGB(255, 73, 73, 73)),
                      ),
                    ),
                  )
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  for (var posticon in posticonlist)
                    PostIconButton(
                      posticonimg: posticon[0],
                      iconText: posticon[1],
                    ),
                ],
              ),
              const Divider(
                color: Colors.black,
              ),
              Row(
                children: [
                  for (var storyname in storynamelist)
                    FacebookStory(
                      storyimg: storyname[0],
                      storyPerson: storyname[1],
                    )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
