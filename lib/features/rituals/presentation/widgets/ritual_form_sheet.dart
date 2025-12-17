import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shaolin_planner_new/features/rituals/domain/ritual.dart';
import 'package:shaolin_planner_new/features/rituals/providers/ritual_provider.dart';
import 'package:shaolin_planner_new/core/providers/supabase_provider.dart';
import 'package:shaolin_planner_new/i18n/strings.g.dart';
import 'package:uuid/uuid.dart';

class RitualFormSheet extends ConsumerStatefulWidget {
  final Ritual? ritual;

  const RitualFormSheet({super.key, this.ritual});

  @override
  ConsumerState<RitualFormSheet> createState() => _RitualFormSheetState();
}

class _RitualFormSheetState extends ConsumerState<RitualFormSheet> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _titleController;
  late TextEditingController _descriptionController;
  late double _duration;

  @override
  void initState() {
    super.initState();
    _titleController = TextEditingController(text: widget.ritual?.title);
    _descriptionController = TextEditingController(
      text: widget.ritual?.description,
    );
    _duration = widget.ritual?.duration ?? 15.0;
  }

  @override
  void dispose() {
    _titleController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  Future<void> _save() async {
    if (_formKey.currentState!.validate()) {
      final userId = ref.read(supabaseProvider).auth.currentUser?.id;
      if (userId == null) return;

      final ritual = Ritual(
        id: widget.ritual?.id ?? const Uuid().v4(),
        userId: userId,
        title: _titleController.text,
        description: _descriptionController.text.isEmpty
            ? null
            : _descriptionController.text,
        duration: _duration,
        createdAt: widget.ritual?.createdAt ?? DateTime.now(),
      );

      try {
        if (widget.ritual == null) {
          await ref.read(ritualListProvider.notifier).addRitual(ritual);
        } else {
          await ref.read(ritualListProvider.notifier).updateRitual(ritual);
        }
        if (mounted) Navigator.pop(context);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(t.rituals.error_loading),
            ), // Reusing error message for simplicity or create a new one
          );
        }
      }
    }
  }

  Future<void> _delete() async {
    final confirm = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: Text(t.rituals.delete.confirm_title),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: Text(t.common.cancel),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: Text(t.common.delete),
          ),
        ],
      ),
    );

    if (confirm == true && widget.ritual != null) {
      try {
        await ref
            .read(ritualListProvider.notifier)
            .deleteRitual(widget.ritual!.id);
        if (mounted) Navigator.pop(context);
      } catch (e) {
        if (mounted) {
          ScaffoldMessenger.of(
            context,
          ).showSnackBar(SnackBar(content: Text(t.rituals.error_loading)));
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    // Ensure t is initialized or use context if necessary, but Slang usually works globally if initialized.
    // Assuming Slang is initialized.

    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).viewInsets.bottom,
        left: 16,
        right: 16,
        top: 16,
      ),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextFormField(
              controller: _titleController,
              decoration: InputDecoration(
                labelText: 'Titel', // Fallback or add to i18n
                hintText: 'Was möchtest du tun?',
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Bitte Titel eingeben';
                }
                return null;
              },
            ),
            const SizedBox(height: 16),
            TextFormField(
              controller: _descriptionController,
              decoration: const InputDecoration(
                labelText: 'Beschreibung (Optional)',
              ),
              maxLines: 3,
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                Expanded(
                  child: StatefulBuilder(
                    builder: (context, setStateSlider) {
                      return Row(
                        children: [
                          Expanded(
                            child: Slider(
                              value: _duration,
                              min: 0,
                              max: 60,
                              divisions: 12,
                              label: _duration.round().toString(),
                              onChanged: (value) {
                                setStateSlider(() {
                                  _duration = value;
                                });
                              },
                            ),
                          ),
                          Text(
                            t.rituals.form.duration_label(
                              min: _duration.round(),
                            ),
                          ),
                        ],
                      );
                    },
                  ),
                ),
                if (widget.ritual != null)
                  IconButton(
                    icon: const Icon(Icons.delete_outline),
                    onPressed: _delete,
                  ),
              ],
            ),
            const SizedBox(height: 16),
            ElevatedButton(onPressed: _save, child: Text(t.rituals.form.save)),
            const SizedBox(height: 32),
          ],
        ),
      ),
    );
  }
}
