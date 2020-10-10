import 'package:mobx/mobx.dart';
import 'package:rss4finance/constants/db_constants.dart';
import 'package:rss4finance/helpers/data_helper.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

part 'database_state.g.dart';

class DatabaseState = _DatabaseState with _$DatabaseState;

abstract class _DatabaseState with Store {
  @observable
  Database database;

  _DatabaseState() {
    provideDatabase().then((database) {
      this.database = database;
    });
  }

  Future<Database> provideDatabase() async {
    final appDocumentDir = await getApplicationDocumentsDirectory();
    final dbPath = join(appDocumentDir.path, DBConstants.rss4finance);
    var database = await databaseFactoryIo.openDatabase(dbPath);
    return database;
  }

  DataHelper providePostDataSource() => DataHelper();
}
