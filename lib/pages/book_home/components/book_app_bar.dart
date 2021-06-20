import 'package:flutter/material.dart';

import '../../../shared/components/gradient.dart';
import '../../../shared/constants/colors.dart';
import 'animated_input_widget.dart';

class BookAppBar extends StatefulWidget {
  final GlobalKey<ScaffoldState> scaffoldKey;

  const BookAppBar({Key? key, required this.scaffoldKey}) : super(key: key);

  @override
  _BookAppBarState createState() => _BookAppBarState();
}

class _BookAppBarState extends State<BookAppBar> 
with SingleTickerProviderStateMixin {
  late AnimationController _controllerAnimation;
  bool menuOpened = false;
  @override
  void initState() {
    super.initState();
    _controllerAnimation = AnimationController(
      vsync: this,
      duration: Duration(
        seconds: 1,
      ),
    );
  }

  @override
  void dispose() {
    _controllerAnimation.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppBar(
      flexibleSpace: Container(
        padding: EdgeInsets.only(left: 30, top: 50, right: 30),
        alignment: Alignment.centerLeft,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              icon: Image.asset('assets/images/menu.png'),
              onPressed: () => widget.scaffoldKey.currentState!.openDrawer(),
            ),
            // IconButton(
            //   icon: Icon(Icons.search, color: kWhiteColor),
            //   onPressed: () => null,
            // ),
            _buildSearch(_controllerAnimation, menuOpened: menuOpened)
          ],
        ),
        decoration: BoxDecoration(
          gradient: linearGradient,
        ),
      ),
      centerTitle: true,
      automaticallyImplyLeading: false, // Don't show the leading button
      bottomOpacity: 0.0,
      elevation: 0.0,
    );
  }

  Widget _buildSearch(
    AnimationController _controller, {
    required bool menuOpened,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        AnimatedInputWidget(controller: _controller),
        TextButton(
          onPressed: () {
            !menuOpened ? _controller.forward() : _controller.reverse();
            menuOpened = !menuOpened;
          },
          child: AnimatedIcon(
            icon: AnimatedIcons.search_ellipsis,
            color: kWhiteColor,
            progress: _controller,
          ),
        )
      ],
    );
  }
}
