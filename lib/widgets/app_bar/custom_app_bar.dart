import 'package:flutter/material.dart';
import 'package:my_flutter_widgets/components/app_color.dart';
import 'package:my_flutter_widgets/components/font_styles.dart';

class CustomAppBar extends StatefulWidget implements PreferredSizeWidget{

  final bool showBackIcon;
  final double elevation;
  final Color backgroundColor;
  final String title;
  final TextStyle titleStyle;
  final Color titleColor;
  final Color leadingColor;
  final List<Widget>? trails;
  final VoidCallback? changeRoute;

  const CustomAppBar({
    Key? key,
    this.showBackIcon = false,
    this.elevation = 0,
    this.backgroundColor = AppColor.colorWhite,
    required this.title,
    this.titleStyle = poppinsRegularMedium,
    this.titleColor = AppColor.colorBlack,
    this.leadingColor = AppColor.colorBlack,
    this.changeRoute,
    this.trails,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  State<CustomAppBar> createState() => _CustomAppBarState();
}

class _CustomAppBarState extends State<CustomAppBar> {
  @override
  Widget build(BuildContext context) {
    return widget.showBackIcon ? AppBar(
      elevation: widget.elevation,
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title, style: widget.titleStyle.copyWith(color: widget.titleColor)),
      leading: IconButton(
        onPressed: widget.changeRoute,
        icon: Icon(Icons.arrow_back, color: widget.leadingColor, size: 20),
      ),
      actions: widget.trails,
    ) : AppBar(
      elevation: widget.elevation,
      backgroundColor: widget.backgroundColor,
      title: Text(widget.title, style: widget.titleStyle.copyWith(color: widget.titleColor)),
      automaticallyImplyLeading: false,
    );
  }
}
