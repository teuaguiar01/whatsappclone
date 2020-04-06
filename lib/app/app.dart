import 'package:app1/app/components/more_button.dart';
import 'package:app1/app/components/search_button.dart';
import 'package:app1/app/pages/calls/calls_view.dart';
import 'package:app1/app/pages/chats/chat_view.dart';
import 'package:app1/app/pages/status/status_page.dart';
import 'package:flutter/material.dart';


class App extends StatefulWidget {
  const App({
    Key key,
  }) : super(key: key);

  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
    _tabController.addListener(_handleTabIndex);
  }

  @override
  void dispose() {
    _tabController.removeListener(_handleTabIndex);
    _tabController.dispose();
    super.dispose();
  }

  void _handleTabIndex() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: TabBarView(
        controller: _tabController,
        children: [
          Icon(Icons.photo),
          ChatList(),
          StatusPage(),
          CallsList(),
        ],
      ),
      floatingActionButton: Padding(
        padding: const EdgeInsets.all(8.0),
        child: _bottomButtons(),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endDocked,
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      title: Text(
        "ZapZap",
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w500,
          fontSize: 21.0,
        ),
      ),
      backgroundColor: Color(0xFF075E55),
      actions: <Widget>[
        SearchButton(),
        MoreButton(),
      ],
      bottom: _buildTabBar(),
    );
  }

  TabBar _buildTabBar() {
    return TabBar(
      controller: _tabController,
      indicatorColor: Colors.white,
      indicatorWeight: 3.1,
      tabs: [
        Tab(icon: Icon(Icons.camera_alt)),
        Text('CHATS'),
        Text('STATUS'),
        Text('CALLS'),
      ],
    );
  }

  Widget _bottomButtons() {
    Widget button;
    switch (_tabController.index) {
      case 0:
        {
          button = null;
          break;
        }
      case 1:
        {
          button = FloatingActionButton(
              shape: StadiumBorder(),
              onPressed: null,
              backgroundColor: Colors.greenAccent[700],
              child: Icon(
                Icons.comment,
                size: 25.0,
              ));
          break;
        }
      case 2:
        {
          button = Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              Container(
                height: 45,
                width: 45,
                child: FloatingActionButton(
                    shape: StadiumBorder(),
                    onPressed: null,
                    backgroundColor: Colors.grey[300],
                    child: Icon(
                      Icons.create,
                      size: 25.0,
                      color: Colors.grey[800],
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              FloatingActionButton(
                  shape: StadiumBorder(),
                  onPressed: null,
                  backgroundColor: Colors.greenAccent[700],
                  child: Icon(
                    Icons.camera_alt,
                    size: 25.0,
                  )),
            ],
          );
          break;
        }
      case 3:
        {
          button = FloatingActionButton(
              shape: StadiumBorder(),
              onPressed: null,
              backgroundColor: Colors.greenAccent[700],
              child: Icon(
                Icons.add_call,
                size: 25.0,
              ));
          break;
        }
    }
    return button;
  }
}
