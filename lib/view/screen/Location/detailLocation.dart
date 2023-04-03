import 'package:ecommerce_app/controller/detailLocation_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailLocation extends StatelessWidget {
  const DetailLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailLocation_controller detailLocation_controller =
        Get.put(DetailLocation_controller());
    return Scaffold(
      body: ListView(children: [
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(30)),
          child: TextFormField(
            controller: detailLocation_controller.city,
            // keyboardType: ,
            // validator: ,
            // obscureText: obscureText == false || obscureText == null
            //     ? false
            //     : true,
            // autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
                hintText: 'City',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 10),
                suffixIcon:
                    InkWell(onTap: () {}, child: Icon(Icons.location_city)),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // label: Text('textLable',
                //     style: Theme.of(context)
                //         .textTheme
                //         .bodyText1!
                //         .copyWith(color: AppColor.purple)),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(30)),
          child: TextFormField(
            // controller: ,
            // keyboardType: ,
            // validator: ,
            // obscureText: obscureText == false || obscureText == null
            //     ? false
            //     : true,
            // autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
                hintText: 'City',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 10),
                suffixIcon:
                    InkWell(onTap: () {}, child: const Icon(Icons.add_road)),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // label: Text('textLable',
                //     style: Theme.of(context)
                //         .textTheme
                //         .bodyText1!
                //         .copyWith(color: AppColor.purple)),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(30)),
          child: TextFormField(
            // controller: ,
            // keyboardType: ,
            // validator: ,
            // obscureText: obscureText == false || obscureText == null
            //     ? false
            //     : true,
            // autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
                hintText: 'City',
                hintStyle: Theme.of(context)
                    .textTheme
                    .bodyLarge!
                    .copyWith(fontSize: 10),
                suffixIcon: InkWell(
                    onTap: () {}, child: const Icon(Icons.location_city)),
                floatingLabelAlignment: FloatingLabelAlignment.start,
                floatingLabelBehavior: FloatingLabelBehavior.always,
                // label: Text('textLable',
                //     style: Theme.of(context)
                //         .textTheme
                //         .bodyText1!
                //         .copyWith(color: AppColor.purple)),
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30))),
          ),
        ),
        // SizedBox(height: 150,)
      ]),
    );
  }
}
