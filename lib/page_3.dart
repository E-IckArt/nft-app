import 'package:flutter/material.dart';

class Page3 extends StatelessWidget {
  const Page3({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final display = MediaQuery.of(context);

    return Column(mainAxisSize: MainAxisSize.max, children: [
      Stack(
        clipBehavior: Clip.none,
        children: <Widget>[
          Container(
              width: double.maxFinite,
              height: 260,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                    image: AssetImage('assets/images/background.jpg'),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(0),
                    topRight: Radius.circular(0),
                    bottomLeft: Radius.circular(30),
                    bottomRight: Radius.circular(30),
                  )),
              child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 55),
                  child: Column(children: [
                    SizedBox(
                      height: 150,
                      width: 300,
                      child: Column(children: const [
                        Text("Inscrivez-vous maintenant",
                            maxLines: 2,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 28,
                                fontWeight: FontWeight.w900)),
                        SizedBox(height: 18),
                        Text(
                            "On vous offre un NFT à l’inscription ! Il vaudra très certainement 10 fois son prix dans quelques années",
                            maxLines: 3,
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 14,
                                fontWeight: FontWeight.w400)),
                      ]),
                    ),
                  ]))),
          Positioned(
            bottom: -25,
            right: 25,
            child: Container(
                width: 50.0,
                height: 50.0,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/gift.jpg'),
                      fit: BoxFit.contain,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(50)))),
          ),
        ],
      ),
      Padding(
          padding: const EdgeInsets.symmetric(horizontal: 26, vertical: 35),
          child: Column(children: [
            Form(
                child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                TextFormField(
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.tealAccent,
                      ),
                    ),
                    labelText: "Identifiant",
                    hintText: "Entrez votre identifiant",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "L'identifiant est obligatoire";
                    }
                    return null;
                  },
                ),
                const SizedBox(height: 20),
                TextFormField(
                  obscureText: true,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.tealAccent,
                      ),
                    ),
                    labelText: "Mot de passe",
                    hintText: "Entrez votre mot de passe",
                  ),
                  validator: (String? value) {
                    if (value == null || value.isEmpty) {
                      return "L'identifiant est obligatoire";
                    }
                    return null;
                  },
                ),
              ],
            )),
            const SizedBox(height: 20),
            MaterialButton(
              onPressed: () => print("hello"),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(35))),
              textColor: Colors.white,
              color: Colors.tealAccent[200],
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
                child: Text(
                  'INSCRIPTION',
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ])),
    ]);
  }
}
