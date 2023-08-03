import 'package:flutter/material.dart';
import 'package:rento/helpers/constant.dart';

// 15:15: Error: The argument type 'CustomAppBar' can't be assigned to the parameter type 'PreferredSizeWidget?'
// https://stackoverflow.com/questions/52678469/the-appbardesign-cant-be-assigned-to-the-parameter-type-preferredsizewidget
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  String title;
  dynamic onBackPressed;
  dynamic onMenuPressed;
  bool isSearchOption;
  CustomAppBar({
    this.isSearchOption = false,
    required this.title,
    required this.onBackPressed,
    required this.onMenuPressed,
    Key? key,
  }) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(150);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 140,
      child: Stack(
        children: [
          Container(
            height: 120,
            color: Theme.of(context).primaryColor,
            child: Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: Style.FONT_SIZE_LARGE,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1,
                    color: Theme.of(context).cardColor,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            height: 120,
            child: Align(
              alignment: Alignment.centerLeft,
              child: IconButton(
                onPressed: onBackPressed,
                icon: Icon(
                  Icons.arrow_back_rounded,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ),
          ),
          Positioned(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                onPressed: onMenuPressed,
                icon: Icon(
                  Icons.menu_open,
                  color: Theme.of(context).cardColor,
                ),
              ),
            ),
          ),
          isSearchOption == true
              ? Positioned(
                  bottom: 0,
                  width: MediaQuery.of(context).size.width,
                  child: Card(
                    margin: const EdgeInsets.symmetric(horizontal: 30),
                    child: SizedBox(
                      height: 50,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Expanded(
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                                vertical: 5,
                              ),
                              child: TextField(
                                autofocus: false,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  prefixIcon: Icon(
                                    Icons.abc,
                                    color: Theme.of(context).primaryColor,
                                  ),
                                  suffixIcon: IconButton(
                                    onPressed: () {},
                                    splashRadius: 25,
                                    icon: Icon(
                                      Icons.search,
                                      color: Theme.of(context).primaryColor,
                                    ),
                                  ),
                                  contentPadding: const EdgeInsets.all(5),
                                  hintText: "Type room number",
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                )
              : const SizedBox(),
        ],
      ),
    );
  }
}
