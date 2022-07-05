import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kaana_rider/widgets/delivery_orders.dart';

class Addmanually extends StatelessWidget {
  const Addmanually({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: double.infinity,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const DeliveryOrders();
        },
        itemCount: 1,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}

class Pickup extends StatelessWidget {
  const Pickup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: double.infinity,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const DeliveryOrders();
        },
        itemCount: 2,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}

class ConfirmOrder extends StatelessWidget {
  const ConfirmOrder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400.h,
      width: double.infinity,
      child: ListView.separated(
        itemBuilder: (BuildContext context, int index) {
          return const DeliveryOrders();
        },
        itemCount: 1,
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
  }
}
