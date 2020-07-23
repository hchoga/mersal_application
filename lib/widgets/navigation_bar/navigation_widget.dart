import 'package:flutter/material.dart';
import '../../models/nav_tab_data.dart';
import 'nav_tab.dart';

/// this widget builds navigation bar with it's body
/// it contains a [NavTab] for the tab widget and [NavBody] for the body
/// mainly consist of List for tabs and another one for bodies and switch between by id & choose
/// it needs more work to avoid forwarded variables (activeColor, inactiveColor) and methods (_changeId)

class NavigationWidget extends StatefulWidget {
  @required final  activeColor;
  @required final  inactiveColor;
  @required final List<NavTabData> tabsData;
  @required final List<Widget> body;

  const NavigationWidget(
      {this.activeColor, this.inactiveColor, this.tabsData, this.body});

  @override
  _NavigationWidgetState createState() => _NavigationWidgetState();
}

class _NavigationWidgetState extends State<NavigationWidget> {
  int choice;

  _changeId(newId) {
    setState(() {
      choice = newId;
    });
  }

  @override
  void initState() {
    super.initState();
    choice = 0 ;
  }

  @override
  Widget build(BuildContext context) {
    //initializing tabs List
    List<NavTab> tabs = List.generate(
        widget.tabsData.length,
        (i) => NavTab(
              image: widget.tabsData[i].image,
              title: widget.tabsData[i].title,
              id: i,
              activeColor: widget.activeColor,
              inactiveColor: widget.inactiveColor,
              onTap: _changeId,
              choose: choice,
            ));
    return Expanded(
      child: Column(
        children: <Widget>[
          Row(children: tabs),
          SizedBox(height: 5),
          widget.body[choice]
        ],
      ),
    );
  }
}


