import 'package:auto_route/auto_route.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_flutter/ferry_flutter.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:residential_management/l10n/l10n.dart';
import 'package:residential_management/layout/layout.dart';
import 'package:residential_management/owners/__generated__/owners.req.gql.dart';
import 'package:residential_management/owners/widgets/owner_row/owner_card.dart';

@RoutePage()
class OwnersPage extends StatelessWidget {
  const OwnersPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.ownersAppBarTitle),
      ),
      body: LayoutResponsive(
        index: 1,
        child: OwnersTable(),
      ),
    );
  }
}

class OwnersTable extends StatelessWidget {
  OwnersTable({super.key});

  final client = GetIt.I<Client>();
  final ownersQuery = GGetOwnersReq();

  @override
  Widget build(BuildContext context) {
    return Operation(
      client: client,
      operationRequest: ownersQuery,
      builder: (context, response, error) {
        if (response?.loading ?? true) {
          return const Center(child: CircularProgressIndicator());
        }

        final owners = response?.data?.owners;

        if (owners == null) {
          // TODO(AndreXi): Show something when there is no data.
          return const Text('Sorry no data :(');
        }

        return SingleChildScrollView(
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(32),
              child: Wrap(
                spacing: 32,
                runSpacing: 32,
                children:
                    owners.map((owner) => OwnerCard(owner: owner)).toList(),
              ),
            ),
          ),
        );
      },
    );
  }
}
