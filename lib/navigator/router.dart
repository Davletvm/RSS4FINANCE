import 'package:auto_route/auto_route_annotations.dart';
import 'package:rss4finance/pages/archive_news_feed/archive_news_feed_page.dart';
import 'package:rss4finance/pages/dashboard/dashboard_page.dart';
import 'package:rss4finance/pages/geo/goelocation.dart';
import 'package:rss4finance/pages/news_feed/news_feed_page.dart';
import 'package:rss4finance/pages/read_news/read_news_page.dart';
import 'package:rss4finance/pages/settings/settings_page.dart';

@MaterialAutoRouter()
class $Routerlar {
  @initial
  Geofinance geoPage;
  DashboardPage dashboardPage;
  NewsFeedPage newsFeedPage;
  ReadNewsPage readNewsPage;
  ArchiveNewsFeedPage archiveNewsFeedPage;
  SettingsPage settingsPage;
}
