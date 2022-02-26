import 'package:flutter/material.dart';

import 'package:kubenav/models/kubernetes/api.dart' show IoK8sApiCoreV1Secret;
import 'package:kubenav/pages/resources_list/widgets/list_item_widget.dart';
import 'package:kubenav/utils/resources/general.dart';

class SecretListItemWidget extends StatelessWidget implements IListItemWidget {
  const SecretListItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  final dynamic item;

  Status getStatus(
    int desiredHealthy,
    int currentHealthy,
  ) {
    if (desiredHealthy == 0) {
      return Status.warning;
    }

    if (currentHealthy < desiredHealthy) {
      return Status.danger;
    }

    return Status.success;
  }

  @override
  Widget build(BuildContext context) {
    final secret = IoK8sApiCoreV1Secret.fromJson(item);
    final age = getAge(secret?.metadata?.creationTimestamp);
    final type = secret?.type ?? '-';
    final data = secret?.data.entries.length ?? 0;

    return ListItemWidget(
      name: secret?.metadata?.name ?? '',
      namespace: secret?.metadata?.namespace,
      info:
          'Namespace: ${secret?.metadata?.namespace ?? '-'} \nType: $type \nData: $data \nAge: $age',
    );
  }
}
