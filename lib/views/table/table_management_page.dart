// lib/views/table/table_management_page.dart

import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:resto2/models/table_model.dart';
import 'package:resto2/providers/order_type_provider.dart';
import 'package:resto2/providers/table_filter_provider.dart';
import 'package:resto2/providers/table_provider.dart';
import 'package:resto2/providers/table_type_provider.dart';
import 'package:resto2/utils/snackbar.dart';
import 'package:resto2/views/table/widgets/table_dialog.dart';
import 'package:resto2/views/widgets/filter_expansion_tile.dart';
import 'package:resto2/views/widgets/shared/entity_management_page.dart';
import 'package:resto2/views/widgets/sort_order_toggle.dart';
import 'package:resto2/utils/constants.dart';

class TableManagementPage extends ConsumerWidget {
  const TableManagementPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final tables = ref.watch(sortedTablesProvider);
    final tableTypesAsync = ref.watch(tableTypesStreamProvider);
    final orderTypesAsync = ref.watch(orderTypesStreamProvider);
    final filter = ref.watch(tableFilterProvider);
    final filterNotifier = ref.read(tableFilterProvider.notifier);

    ref.listen<AsyncValue<void>>(tableControllerProvider, (previous, next) {
      next.whenOrNull(
        data: (_) {
          if (Navigator.of(context).canPop()) {
            Navigator.of(context).pop();
          }
          showSnackBar(context, UIMessages.tableSaved);
        },
        error: (error, stack) {
          showSnackBar(context, error.toString(), isError: true);
        },
      );
    });

    void showTableDialog({TableModel? table}) {
      showDialog(
        context: context,
        builder: (_) => TableDialog(table: table),
      );
    }

    return EntityManagementPage<TableModel>(
      title: UIStrings.tableManagement,
      noItemsFoundText: "No tables found.",
      items: tables,
      onAdd: () => showTableDialog(),
      filterTile: FilterExpansionTile(
        children: [
          TextFormField(
            initialValue: filter.searchQuery,
            decoration: const InputDecoration(
              labelText: UIStrings.searchByName,
              border: OutlineInputBorder(),
              prefixIcon: Icon(Icons.search),
            ),
            onChanged: (value) => filterNotifier.setSearchQuery(value),
          ),
          const SizedBox(height: 16),
          DropdownButtonFormField2<String?>(
            value: filter.tableTypeId,
            decoration: const InputDecoration(
              labelText: UIStrings.filterByType,
              border: OutlineInputBorder(),
              contentPadding: EdgeInsets.zero,
            ),
            buttonStyleData: const ButtonStyleData(
              height: 50,
              padding: EdgeInsets.only(right: 10),
            ),
            items: [
              const DropdownMenuItem(
                value: null,
                child: Text(UIStrings.allTypes),
              ),
              ...tableTypesAsync.asData?.value.map(
                    (type) => DropdownMenuItem(
                      value: type.id,
                      child: Text(type.name),
                    ),
                  ) ??
                  [],
            ],
            onChanged: (value) => filterNotifier.setTableTypeFilter(value),
          ),
          const SizedBox(height: 16),
          Row(
            children: [
              Expanded(
                child: DropdownButtonFormField2<TableSortOption>(
                  value: filter.sortOption,
                  decoration: const InputDecoration(
                    labelText: UIStrings.sortBy,
                    border: OutlineInputBorder(),
                    contentPadding: EdgeInsets.zero,
                  ),
                  buttonStyleData: const ButtonStyleData(
                    height: 50,
                    padding: EdgeInsets.only(right: 10),
                  ),
                  items: TableSortOption.values
                      .map(
                        (option) => DropdownMenuItem(
                          value: option,
                          child: Text(
                            '${UIStrings.by}${option.name.substring(2)}',
                          ),
                        ),
                      )
                      .toList(),
                  onChanged: (value) {
                    if (value != null) {
                      filterNotifier.setSortOption(value);
                    }
                  },
                ),
              ),
              const SizedBox(width: 16),
              SortOrderToggle(
                currentOrder: filter.sortOrder,
                onOrderChanged: (order) {
                  filterNotifier.setSortOrder(order);
                },
              ),
            ],
          ),
        ],
      ),
      itemBuilder: (context, table) {
        final tableTypesMap = {
          for (var e in tableTypesAsync.asData?.value ?? []) e.id: e.name
        };
        final orderTypesMap = {
          for (var e in orderTypesAsync.asData?.value ?? []) e.id: e.name
        };

        final tableTypeName =
            tableTypesMap[table.tableTypeId] ?? UIStrings.notAvailable;
        final orderTypeName = orderTypesMap[table.orderTypeId] ?? UIStrings.all;

        return Card(
          margin: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
          child: ListTile(
            title: Text(
              table.name,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            subtitle: Text(
              '$tableTypeName${UIStrings.tableCapacity.replaceFirst('{value}', table.capacity.toString())}'
              '${UIStrings.tableOrderType.replaceFirst('{value}', orderTypeName)}',
            ),
            isThreeLine: true,
            trailing: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconButton(
                  icon: const Icon(Icons.edit_outlined),
                  onPressed: () => showTableDialog(table: table),
                ),
                IconButton(
                  icon: Icon(
                    Icons.delete_outline,
                    color: Theme.of(context).colorScheme.error,
                  ),
                  onPressed: () async {
                    await ref
                        .read(tableControllerProvider.notifier)
                        .deleteTable(table.id);
                    if (context.mounted) {
                      showSnackBar(context, UIMessages.tableDeleted);
                    }
                  },
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
