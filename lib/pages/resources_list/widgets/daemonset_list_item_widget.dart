import 'package:flutter/material.dart';

import 'package:kubenav/models/kubernetes/api.dart'
    show IoK8sApiAppsV1DaemonSet;
import 'package:kubenav/pages/resources_list/widgets/list_item_widget.dart';
import 'package:kubenav/utils/resources/general.dart';

class DaemonSetListItemWidget extends StatelessWidget
    implements IListItemWidget {
  const DaemonSetListItemWidget({
    Key? key,
    required this.item,
  }) : super(key: key);

  @override
  final dynamic item;

  Status getStatus(
    int desired,
    int current,
    int ready,
    int upToDate,
    int available,
    int numberMisscheduled,
  ) {
    if (numberMisscheduled > 0) {
      return Status.danger;
    }

    if (desired != 0 &&
        desired == current &&
        desired == ready &&
        desired == upToDate &&
        desired == available) {
      return Status.success;
    }

    return Status.warning;
  }

  @override
  Widget build(BuildContext context) {
    final daemonSet = IoK8sApiAppsV1DaemonSet.fromJson(item);
    final age = getAge(daemonSet?.metadata?.creationTimestamp);
    final desired = daemonSet?.status?.desiredNumberScheduled ?? 0;
    final current = daemonSet?.status?.currentNumberScheduled ?? 0;
    final ready = daemonSet?.status?.numberReady ?? 0;
    final upToDate = daemonSet?.status?.updatedNumberScheduled ?? 0;
    final available = daemonSet?.status?.numberAvailable ?? 0;
    final numberMisscheduled = daemonSet?.status?.numberMisscheduled ?? 0;
    final nodeSelector = daemonSet?.spec?.template.spec?.nodeSelector.entries
            .map((e) => '${e.key}=${e.value}')
            .toList() ??
        [];

    return ListItemWidget(
      name: daemonSet?.metadata?.name ?? '',
      namespace: daemonSet?.metadata?.namespace,
      info:
          'Namespace: ${daemonSet?.metadata?.namespace ?? '-'} \nDesired: $desired \nCurrent: $current \nReady: $ready \nUp to date: $upToDate \nAvailable: $available \nNode Selector: ${nodeSelector.isEmpty ? '-' : nodeSelector.join(', ')} \nAge: $age',
      status: getStatus(
        desired,
        current,
        ready,
        upToDate,
        available,
        numberMisscheduled,
      ),
    );
  }
}
