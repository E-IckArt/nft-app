import 'package:flutter/material.dart';
import 'package:nft_app/page_2.dart';

class Page1 extends StatelessWidget {
  const Page1({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(mainAxisSize: MainAxisSize.max, children: [
      Expanded(
        child: Container(
            width: double.maxFinite,
            decoration: BoxDecoration(
                image: const DecorationImage(
                  image: AssetImage('assets/images/background.jpg'),
                  fit: BoxFit.cover,
                ),
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(0),
                  bottomLeft: Radius.circular(59),
                  bottomRight: Radius.circular(59),
                ))),
      ),
      const SizedBox(height: 55),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 2),
          child: Column(children: [
            const Text("Découvrez la plus grande place de marché numérique",
                maxLines: 3,
                textAlign: TextAlign.center,
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.w900)),
            const SizedBox(height: 18),
            Text(
                "La plus grand place de marché au monde pour les NFTs (Non-fungible Tokens) où vous pourrez faire les meilleurs affaires.",
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.bodyText2),
            const SizedBox(height: 34),
            Row(children: [
              TextButton(
                  onPressed: () => print("Hello"),
                  child: const Text("PASSER",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Color(0xFF65635E)))),
              const Spacer(),
              MaterialButton(
                onPressed: () => {
                  Navigator.push(
                    context,
                    PageRouteBuilder(
                      pageBuilder: (_, __, ___) => Page2()
                    )
                  )
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
              height: 44,
            )
          ]))
    ]);
  }
}
