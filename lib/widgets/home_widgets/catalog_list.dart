import 'package:flutter/material.dart';
import 'package:three/models/catalog.dart';
import 'package:three/pages/home_detail_page.dart';
import 'package:three/widgets/home_widgets/catalog_image.dart';
import 'package:three/widgets/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class CatalogList extends StatelessWidget {
  const CatalogList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemBuilder: (context, index) {
          final catalog = CatalogModel.items[index];
          return InkWell(
            onTap: () => Navigator.push(
              context, MaterialPageRoute(
                builder: (context) => HomeDetailPage(catalog: catalog),
              )
            ),
            child: CatalogItem(catalog: catalog),
          );
        },
        itemCount: CatalogModel.items.length);
  }
}

class CatalogItem extends StatelessWidget {
  final Item catalog;

  const CatalogItem({super.key, required this.catalog});


  @override
  Widget build(BuildContext context) {
    return VxBox(
      child: Row(children: [
        Hero(
          tag: Key(catalog.id.toString()),
          child: CatalogImage(image: catalog.image),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              catalog.name.text.bold.lg.color(MyTheme.darkBluishColor).make(),
              catalog.desc.text.textStyle(context.captionStyle!).make(),
              10.heightBox,
              ButtonBar(
                alignment: MainAxisAlignment.spaceBetween,
                buttonPadding: Vx.mH8,
                children: [
                  "\$${catalog.price}".text.bold.xl.make(),
                  ElevatedButton(
                    onPressed: () {},
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(
                        MyTheme.darkBluishColor
                      ),
                      shape: MaterialStateProperty.all(const StadiumBorder())
                    ),
                    child: "Buy".text.make(),
                  )
                ],
              ).pOnly(right: 8.0)
            ],
            )
        )
      ],)
    ).white.rounded.square(150).make().py(16);
  }
}