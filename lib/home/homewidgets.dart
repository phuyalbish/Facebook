import 'package:facebook/packagelocations.dart';

class FacebookStory extends StatefulWidget {
  final String? storyPerson;
  final String? storyimg;
  const FacebookStory({super.key, this.storyimg, this.storyPerson});

  @override
  State<FacebookStory> createState() => _FacebookStoryState();
}

class _FacebookStoryState extends State<FacebookStory> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: 130,
      height: 250,
      alignment: Alignment.bottomCenter,
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(widget.storyimg!), fit: BoxFit.cover),
          border: Border.all(
            color: Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(20)),
      child: Text(
        widget.storyPerson!,
        style: const TextStyle(
            color: Colors.white, fontWeight: FontWeight.w500, fontSize: 18),
      ),
    );
  }
}

class PostIconButton extends StatefulWidget {
  final String? posticonimg;
  final String? iconText;

  const PostIconButton({super.key, this.posticonimg, this.iconText});

  @override
  State<PostIconButton> createState() => _PostIconButtonState();
}

class _PostIconButtonState extends State<PostIconButton> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: null,
      child: Row(
        children: [
          Image.asset(widget.posticonimg!, width: 25),
          const SizedBox(width: 5),
          Text(widget.iconText!),
        ],
      ),
    );
  }
}
