import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/rituals/presentation/widgets/ritual_form_sheet.dart';
import 'package:shaolin_planner_new/features/rituals/providers/ritual_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RitualsScreen extends ConsumerWidget {
  const RitualsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final ritualsAsync = ref.watch(ritualListProvider);

    return Scaffold(
      appBar: AppBar(
        title: Text(t.rituals.title),
        actions: [
          IconButton(
            onPressed: () {
              showModalBottomSheet(
                context: context,
                isScrollControlled: true,
                builder: (context) => const RitualFormSheet(),
              );
            },
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: ritualsAsync.when(
        data: (rituals) {
          if (rituals.isEmpty) {
            return Center(child: Text(t.rituals.no_data));
          }
          return ListView.builder(
            itemCount: rituals.length,
            padding: const EdgeInsets.all(16.0),
            itemBuilder: (context, index) {
              final ritual = rituals[index];
              return Dismissible(
                key: Key(ritual.id),
                direction: DismissDirection.endToStart,
                background: Container(
                  color: Colors.red,
                  alignment: Alignment.centerRight,
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(Icons.delete, color: Colors.white),
                ),
                confirmDismiss: (direction) async {
                  return await showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: Text(t.rituals.delete.confirm_title),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(false),
                          child: Text(t.common.cancel),
                        ),
                        TextButton(
                          onPressed: () => Navigator.of(context).pop(true),
                          child: Text(t.common.delete),
                        ),
                      ],
                    ),
                  );
                },
                onDismissed: (direction) {
                  ref.read(ritualListProvider.notifier).deleteRitual(ritual.id);
                },
                child: Card(
                  child: ListTile(
                    title: Text(ritual.title),
                    subtitle: ritual.description != null
                        ? Text(ritual.description!)
                        : null,
                    trailing: Text(
                      '${ritual.duration.round()} ${t.rituals.duration_min}',
                    ),
                    onTap: () {
                      showModalBottomSheet(
                        context: context,
                        isScrollControlled: true,
                        builder: (context) => RitualFormSheet(ritual: ritual),
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (error, stack) => Center(child: Text(t.rituals.error_loading)),
      ),
    );
  }
}
