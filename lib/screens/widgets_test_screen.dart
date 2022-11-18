import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/components/app_color.dart';
import 'package:my_flutter_widgets/widgets/app_bar/custom_app_bar.dart';

class WidgetTestScreen extends StatefulWidget {
  const WidgetTestScreen({Key? key}) : super(key: key);

  @override
  State<WidgetTestScreen> createState() => _WidgetTestScreenState();
}

class _WidgetTestScreenState extends State<WidgetTestScreen> {

  bool isPress = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: AppColor.colorWhite,
        appBar: CustomAppBar(
          showBackIcon: true,
          elevation: 0,
          title: "Custom App Bar",
          trails: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: IconButton(
                onPressed: (){},
                icon: const Icon(Icons.notifications, color: AppColor.colorBlack, size: 20),
              ),
            )
          ],
        ),
      ),
    );
  }
}
