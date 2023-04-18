import 'package:ecommerce_app/controller/detailLocation_controller.dart';
import 'package:ecommerce_app/core/constant/color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DetailLocation extends StatelessWidget {
  const DetailLocation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    DetailLocationcontroller detailLocationcontroller =
        Get.put(DetailLocationcontroller());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: GestureDetector(
        onTap: () {
          detailLocationcontroller.addLocation(
              detailLocationcontroller.name!.text,
              detailLocationcontroller.city!.text,
              detailLocationcontroller.street!.text,
              detailLocationcontroller.lat!,
              detailLocationcontroller.lang!);
          detailLocationcontroller.gotoviewaddress();
        },
        child: Padding(
          padding: const EdgeInsets.only(bottom: 15),
          child: Container(
            height: 65,
            width: 300,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: AppColor.purple),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Complete',
                  style: Theme.of(context)
                      .textTheme
                      .displayLarge!
                      .copyWith(color: AppColor.white),
                ),
                const SizedBox(
                  width: 8,
                ),
                // Text(
                //   '${controllercard.sumprice} €',
                //   style: Theme.of(context)
                //       .textTheme
                //       .displayLarge!
                //       .copyWith(color: AppColor.white),
                // ),
              ],
            ),
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: AppColor.purple,
      ),
      body: ListView(children: [
        Text(detailLocationcontroller.lat!),
        Text(detailLocationcontroller.lang!),
        SizedBox(
          height: 100,
        ),
        Container(
          // padding: const EdgeInsets.symmetric(horizontal: 20),
          margin: const EdgeInsets.symmetric(horizontal: 10),
          decoration: BoxDecoration(
              color: Colors.amberAccent,
              borderRadius: BorderRadius.circular(30)),
          child: TextFormField(
            controller: detailLocationcontroller.city,
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
            controller: detailLocationcontroller.street,
            // keyboardType: ,
            // validator: ,
            // obscureText: obscureText == false || obscureText == null
            //     ? false
            //     : true,
            // autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
                hintText: 'Street',
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
            controller: detailLocationcontroller.name,
            // keyboardType: ,
            // validator: ,
            // obscureText: obscureText == false || obscureText == null
            //     ? false
            //     : true,
            // autovalidateMode: AutovalidateMode.always,
            decoration: InputDecoration(
                hintText: 'Name',
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
