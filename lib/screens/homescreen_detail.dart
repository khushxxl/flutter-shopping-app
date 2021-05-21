import 'package:flutter/material.dart';
import 'package:flutter_shopping_app/screens/addToCart.dart';
import 'package:velocity_x/velocity_x.dart';
import 'package:flutter_shopping_app/models/catalog.dart';

class HomeDetailPage extends StatelessWidget {
  final Item catalog;

  const HomeDetailPage({Key key, @required this.catalog})
      : assert(catalog != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.deepPurple,
        child: ButtonBar(
          buttonPadding: EdgeInsets.zero,
          alignment: MainAxisAlignment.spaceBetween,
          children: [
            "\$${catalog.price}".text.xl3.bold.color(Colors.yellow).make(),
            AddToCart(
              catalog: catalog,
            ).wh(150, 50),
          ],
        ).p32(),
      ),
      backgroundColor: Colors.lightBlue,
      appBar: AppBar(
        elevation: 0.0,
        backgroundColor: Colors.lightBlue,
      ),
      body: SafeArea(
        bottom: false,
        child: Column(
          children: [
            Hero(
              tag: Key(catalog.id.toString()),
              child: Image.network(catalog.image),
            ).h32(context),
            Expanded(
                child: VxArc(
              arcType: VxArcType.CONVEY,
              height: 30.0,
              edge: VxEdge.TOP,
              child: Container(
                width: context.screenWidth,
                color: Colors.deepPurple,
                child: Column(
                  children: [
                    catalog.name.text.xl4.color(Colors.yellow).bold.make(),
                    10.heightBox,
                    catalog.desc.text.color(Colors.white).make(),
                    "Et justo lorem stet duo aliquyam, dolor eirmod clita sadipscing sanctus sed, diam amet lorem eos voluptua sea dolore, lorem diam elitr voluptua eos et diam est ea lorem, magna et lorem takimata kasd, sit aliquyam clita labore diam. Gubergren."
                        .text
                        .textStyle(context.captionStyle)
                        .color(Colors.white)
                        .make()
                        .p16()
                  ],
                ).py64(),
              ),
            )),
          ],
        ),
      ),
    );
  }
}
