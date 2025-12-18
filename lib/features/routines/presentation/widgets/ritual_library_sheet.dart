import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';
import 'package:shaolin_planner_new/features/rituals/presentation/widgets/ritual_form_sheet.dart';
import 'package:shaolin_planner_new/features/rituals/providers/ritual_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';

class RitualLibrarySheet extends ConsumerStatefulWidget {
  final bool selectionMode;

  const RitualLibrarySheet({super.key, this.selectionMode = false});

  @override
  ConsumerState<RitualLibrarySheet> createState() => _RitualLibrarySheetState();
}

class _RitualLibrarySheetState extends ConsumerState<RitualLibrarySheet> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = '';

  @override
  void initState() {
    super.initState();
    _searchController.addListener(() {
      setState(() {
        _searchQuery = _searchController.text.toLowerCase();
      });
    });
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final ritualsAsync = ref.watch(ritualListProvider);

    return DraggableScrollableSheet(
      initialChildSize: 0.9,
      minChildSize: 0.5,
      maxChildSize: 0.95,
      expand: false,
      builder: (context, scrollController) {
        return Scaffold(
          backgroundColor: Colors.transparent,
          body: Container(
            decoration: BoxDecoration(
              color: Theme.of(context).colorScheme.surface,
              borderRadius: const BorderRadius.vertical(
                top: Radius.circular(16),
              ),
            ),
            child: Column(
              children: [
                // Handle
                Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    width: 40,
                    height: 4,
                    decoration: BoxDecoration(
                      color: Theme.of(
                        context,
                      ).colorScheme.onSurfaceVariant.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(2),
                    ),
                  ),
                ),
                // Header & Search
                Padding(
                  padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Text(
                        t.rituals.library.title,
                        style: Theme.of(context).textTheme.headlineSmall,
                        textAlign: TextAlign.center,
                      ),
                      const SizedBox(height: 16),
                      TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                          hintText: t.rituals.library.search_hint,
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                          filled: true,
                          fillColor: Theme.of(context)
                              .colorScheme
                              .surfaceContainerHighest
                              .withOpacity(0.3),
                        ),
                      ),
                    ],
                  ),
                ),
                // List
                Expanded(
                  child: ritualsAsync.when(
                    data: (rituals) {
                      final filtered = rituals
                          .where(
                            (r) =>
                                r.title.toLowerCase().contains(_searchQuery) ||
                                (r.description != null &&
                                    r.description!.toLowerCase().contains(
                                      _searchQuery,
                                    )),
                          )
                          .toList();

                      if (filtered.isEmpty) {
                        return Center(child: Text(t.rituals.no_data));
                      }

                      return ListView.separated(
                        controller: scrollController,
                        itemCount: filtered.length,
                        separatorBuilder: (context, index) =>
                            const Divider(height: 1),
                        itemBuilder: (context, index) {
                          final ritual = filtered[index];
                          return ListTile(
                            leading: widget.selectionMode
                                ? const Icon(Icons.add_circle_outline)
                                : null,
                            title: Text(ritual.title),
                            subtitle: Text(
                              t.routines.duration(
                                minutes: ritual.duration.toInt(),
                              ),
                            ),
                            onTap: () {
                              if (widget.selectionMode) {
                                Navigator.pop(context, ritual);
                              } else {
                                _editRitual(context, ritual);
                              }
                            },
                            trailing: !widget.selectionMode
                                ? Row(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      IconButton(
                                        icon: const Icon(Icons.edit),
                                        onPressed: () =>
                                            _editRitual(context, ritual),
                                      ),
                                      IconButton(
                                        icon: Icon(
                                          Icons.delete_outline,
                                          color: Theme.of(
                                            context,
                                          ).colorScheme.error,
                                        ),
                                        onPressed: () =>
                                            _deleteRitual(context, ref, ritual),
                                      ),
                                    ],
                                  )
                                : null,
                          );
                        },
                      );
                    },
                    loading: () =>
                        const Center(child: CircularProgressIndicator()),
                    error: (e, st) => Center(child: Text('Error: $e')),
                  ),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () => _createRitual(context),
            child: const Icon(Icons.add),
          ),
        );
      },
    );
  }

  Future<void> _createRitual(BuildContext context) async {
    // Reusing existing RitualFormSheet logic
    // We assume RitualFormSheet performs the mutation via provider/repo
    // and then invalidates/refreshes the list.
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => const RitualFormSheet(),
    );
  }

  Future<void> _editRitual(BuildContext context, Ritual ritual) async {
    await showModalBottomSheet(
      context: context,
      isScrollControlled: true,
      builder: (context) => RitualFormSheet(ritual: ritual),
    );
  }

  Future<void> _deleteRitual(
    BuildContext context,
    WidgetRef ref,
    Ritual ritual,
  ) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.rituals.delete.confirm_title),
        content: Text(t.rituals.library.confirm_delete),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(t.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(
              foregroundColor: Theme.of(context).colorScheme.error,
            ),
            child: Text(t.common.delete),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      // Assuming ritualListProvider.notifier has a delete method
      // If not, we might need to add it or use repository directly.
      // Based on previous chats, ritualListProvider seems to have methods.
      // Let's check ritual_provider.dart if we have deleteRitual.
      // Assuming straightforward access via ref.read(ritualListProvider.notifier).deleteRitual(id)
      // If fails, we will inspect providers.
      await ref.read(ritualListProvider.notifier).deleteRitual(ritual.id);
    }
  }
}
