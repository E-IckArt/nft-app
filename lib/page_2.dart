import 'package:flutter/material.dart';

class Page2 extends StatelessWidget {
  Page2({
    super.key,
  });

  final List<String> images = <String>['NFT 0', 'NFT 1', 'NFT 2', 'NFT 3'];

  @override
  Widget build(BuildContext context) {
    final display = MediaQuery.of(context);
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 2),
      child: Column(mainAxisSize: MainAxisSize.max, children: [
        const SizedBox(
          height: 72,
        ),
        Container(
            width: double.maxFinite,
            height: 96,
            decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/bitcoin-icon.png'),
                  fit: BoxFit.contain,
                ),
                borderRadius: BorderRadius.all(Radius.circular(50)))),
        const Padding(
          padding: EdgeInsets.all(26.0),
          child: Text("Imaginez posséder tous ces JPEG",
              maxLines: 3,
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 28,
                  fontWeight: FontWeight.w900)),
        ),
        SizedBox(
          height: 130.0,
          width: display.size.width,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.all(5.0),
                child: Image(
                  image: AssetImage('assets/images/${images[index]}.jpg'),
                  height: 130,
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) =>
                const Divider(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(26.0),
          child: Text(
              "Vous posséderez un identifiant unique sur la blockchain qui pourra renvoyer (ou non) vers un JPEG hébergé sur un serveur qui sera certainement fermé dans quelques années.",
              textAlign: TextAlign.justify,
              style: Theme.of(context).textTheme.bodyText2),
        ),
        const SizedBox(
          height: 240,
        ),
        Row(children: [
          TextButton(
              onPressed: () => print("Hello"),
              child: const Text("PASSER",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: Color(0xFF65635E)))),
          const Spacer(),
          MaterialButton(
            onPressed: () => {
              Navigator.push(context,
                  PageRouteBuilder(pageBuilder: (_, __, ___) => Page2()))
            },
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(35))),
            textColor: Colors.white,
            color: Colors.tealAccent[200],
            child: const Padding(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
              child: Icon(Icons.arrow_forward),
            ),
          )
        ]),
        const SizedBox(
          height: 20,
        )
      ]),
    );
  }
}
