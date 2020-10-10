// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:auto_route/auto_route.dart';
import 'package:rss4finance/pages/geo/goelocation.dart';
import 'package:rss4finance/pages/dashboard/dashboard_page.dart';
import 'package:rss4finance/pages/news_feed/news_feed_page.dart';
import 'package:rss4finance/pages/read_news/read_news_page.dart';
import 'package:rss4finance/pages/archive_news_feed/archive_news_feed_page.dart';
import 'package:rss4finance/pages/settings/settings_page.dart';

abstract class Routes {
  static const geoPage = '/geo-page';
  static const dashboardPage = '/dashboard-page';
  static const newsFeedPage = '/news-feed-page';
  static const readNewsPage = '/read-news-page';
  static const archiveNewsFeedPage = '/archive-news-feed-page';
  static const settingsPage = '/settings-page';
  static const all = {
    geoPage,
    dashboardPage,
    newsFeedPage,
    readNewsPage,
    archiveNewsFeedPage,
    settingsPage,
  };
}

class Routerlar extends RouterBase {
  @override
  Set<String> get allRoutes => Routes.all;

  @Deprecated('call ExtendedNavigator.ofRouter<Router>() directly')
  static ExtendedNavigatorState get navigator =>
      ExtendedNavigator.ofRouter<Routerlar>();

  @override
  Route<dynamic> onGenerateRoute(RouteSettings settings) {
    final args = settings.arguments;
    switch (settings.name) {
      case Routes.geoPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => Geofinance(),
          settings: settings,
        );
      case Routes.dashboardPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => DashboardPage(),
          settings: settings,
        );
      case Routes.newsFeedPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => NewsFeedPage(),
          settings: settings,
        );
      case Routes.readNewsPage:
        if (hasInvalidArgs<ReadNewsPageArguments>(args)) {
          return misTypedArgsRoute<ReadNewsPageArguments>(args);
        }
        final typedArgs =
            args as ReadNewsPageArguments ?? ReadNewsPageArguments();
        return MaterialPageRoute<dynamic>(
          builder: (context) => ReadNewsPage(
              newsUrl: typedArgs.newsUrl, htmlCode: typedArgs.htmlCode),
          settings: settings,
        );
      case Routes.archiveNewsFeedPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => ArchiveNewsFeedPage(),
          settings: settings,
        );
      case Routes.settingsPage:
        return MaterialPageRoute<dynamic>(
          builder: (context) => SettingsPage(),
          settings: settings,
        );
      default:
        return unknownRoutePage(settings.name);
    }
  }
}

// *************************************************************************
// Arguments holder classes
// **************************************************************************

//ReadNewsPage arguments holder class
class ReadNewsPageArguments {
  final String newsUrl;
  final String htmlCode;
  ReadNewsPageArguments({this.newsUrl, this.htmlCode});
}
