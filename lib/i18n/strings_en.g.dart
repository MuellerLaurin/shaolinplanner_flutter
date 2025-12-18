///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:slang/generated.dart';
import 'strings.g.dart';

// Path: <root>
class TranslationsEn with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsEn({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.en,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <en>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsEn _root = this; // ignore: unused_field

	@override 
	TranslationsEn $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsEn(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonEn common = _TranslationsCommonEn._(_root);
	@override late final _TranslationsAuthEn auth = _TranslationsAuthEn._(_root);
	@override late final _TranslationsNavEn nav = _TranslationsNavEn._(_root);
	@override late final _TranslationsSettingsEn settings = _TranslationsSettingsEn._(_root);
	@override late final _TranslationsRitualsEn rituals = _TranslationsRitualsEn._(_root);
	@override late final _TranslationsRoutinesEn routines = _TranslationsRoutinesEn._(_root);
}

// Path: common
class _TranslationsCommonEn implements TranslationsCommonDe {
	_TranslationsCommonEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get save => 'Save';
	@override String get cancel => 'Cancel';
	@override String get delete => 'Delete';
	@override String get edit => 'Edit';
	@override String get loading => 'Loading...';
}

// Path: auth
class _TranslationsAuthEn implements TranslationsAuthDe {
	_TranslationsAuthEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get login => 'Login';
	@override String get email => 'Email';
	@override String get password => 'Password';
	@override String get logout => 'Logout';
	@override String get welcome => 'Welcome';
}

// Path: nav
class _TranslationsNavEn implements TranslationsNavDe {
	_TranslationsNavEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get rituals => 'Rituals';
	@override String get routines => 'Routines';
	@override String get settings => 'Settings';
}

// Path: settings
class _TranslationsSettingsEn implements TranslationsSettingsDe {
	_TranslationsSettingsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Settings';
	@override String get language => 'Language';
	@override String get themeMode => 'Appearance';
	@override String get light => 'Light';
	@override String get dark => 'Dark';
	@override String get system => 'System';
}

// Path: rituals
class _TranslationsRitualsEn implements TranslationsRitualsDe {
	_TranslationsRitualsEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rituals';
	@override String get no_data => 'No rituals found.';
	@override String get duration_min => 'Min.';
	@override String get error_loading => 'Error loading rituals.';
	@override late final _TranslationsRitualsFormEn form = _TranslationsRitualsFormEn._(_root);
	@override late final _TranslationsRitualsDeleteEn delete = _TranslationsRitualsDeleteEn._(_root);
}

// Path: routines
class _TranslationsRoutinesEn implements TranslationsRoutinesDe {
	_TranslationsRoutinesEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title => 'Routines';
	@override String get no_data => 'No routines found.';
	@override String duration({required Object minutes}) => 'Duration: ${minutes} min';
	@override String get edit => 'Edit Routine';
	@override String get save => 'Save Changes';
	@override String get add_ritual => 'Add Ritual';
	@override String get confirm_delete_ritual => 'Remove ritual?';
}

// Path: rituals.form
class _TranslationsRitualsFormEn implements TranslationsRitualsFormDe {
	_TranslationsRitualsFormEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get title_label => 'Title';
	@override String get title_hint => 'Name of the ritual';
	@override String get description_label => 'Description';
	@override String get description_hint => 'What will you do?';
	@override String duration_label({required Object min}) => 'Duration: ${min} min.';
	@override String get save_button => 'Save';
}

// Path: rituals.delete
class _TranslationsRitualsDeleteEn implements TranslationsRitualsDeleteDe {
	_TranslationsRitualsDeleteEn._(this._root);

	final TranslationsEn _root; // ignore: unused_field

	// Translations
	@override String get confirm_title => 'Delete ritual?';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsEn {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.save' => 'Save',
			'common.cancel' => 'Cancel',
			'common.delete' => 'Delete',
			'common.edit' => 'Edit',
			'common.loading' => 'Loading...',
			'auth.login' => 'Login',
			'auth.email' => 'Email',
			'auth.password' => 'Password',
			'auth.logout' => 'Logout',
			'auth.welcome' => 'Welcome',
			'nav.dashboard' => 'Dashboard',
			'nav.rituals' => 'Rituals',
			'nav.routines' => 'Routines',
			'nav.settings' => 'Settings',
			'settings.title' => 'Settings',
			'settings.language' => 'Language',
			'settings.themeMode' => 'Appearance',
			'settings.light' => 'Light',
			'settings.dark' => 'Dark',
			'settings.system' => 'System',
			'rituals.title' => 'Rituals',
			'rituals.no_data' => 'No rituals found.',
			'rituals.duration_min' => 'Min.',
			'rituals.error_loading' => 'Error loading rituals.',
			'rituals.form.title_label' => 'Title',
			'rituals.form.title_hint' => 'Name of the ritual',
			'rituals.form.description_label' => 'Description',
			'rituals.form.description_hint' => 'What will you do?',
			'rituals.form.duration_label' => ({required Object min}) => 'Duration: ${min} min.',
			'rituals.form.save_button' => 'Save',
			'rituals.delete.confirm_title' => 'Delete ritual?',
			'routines.title' => 'Routines',
			'routines.no_data' => 'No routines found.',
			'routines.duration' => ({required Object minutes}) => 'Duration: ${minutes} min',
			'routines.edit' => 'Edit Routine',
			'routines.save' => 'Save Changes',
			'routines.add_ritual' => 'Add Ritual',
			'routines.confirm_delete_ritual' => 'Remove ritual?',
			_ => null,
		};
	}
}
