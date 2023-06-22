import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:residential_management/graphql/__generated__/schema.schema.gql.dart';

Future<Client> initGraphqlClient(String url) async {
  await Hive.initFlutter();

  final box = await Hive.openBox<dynamic>('graphql');

  final store = HiveStore(box);

  // ignore: avoid_redundant_argument_values
  final cache = Cache(store: store, possibleTypes: possibleTypesMap);
  final link = HttpLink(url);

  final client = Client(
    link: link,
    cache: cache,
    defaultFetchPolicies: {
      OperationType.query: FetchPolicy.CacheAndNetwork,
    },
  );

  return client;
}
