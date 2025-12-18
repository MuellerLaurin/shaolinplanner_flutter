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
class TranslationsDe with BaseTranslations<AppLocale, Translations> implements Translations {
	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	TranslationsDe({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
		: assert(overrides == null, 'Set "translation_overrides: true" in order to enable this feature.'),
		  $meta = meta ?? TranslationMetadata(
		    locale: AppLocale.de,
		    overrides: overrides ?? {},
		    cardinalResolver: cardinalResolver,
		    ordinalResolver: ordinalResolver,
		  ) {
		$meta.setFlatMapFunction(_flatMapFunction);
	}

	/// Metadata for the translations of <de>.
	@override final TranslationMetadata<AppLocale, Translations> $meta;

	/// Access flat map
	@override dynamic operator[](String key) => $meta.getTranslation(key);

	late final TranslationsDe _root = this; // ignore: unused_field

	@override 
	TranslationsDe $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => TranslationsDe(meta: meta ?? this.$meta);

	// Translations
	@override late final _TranslationsCommonDe common = _TranslationsCommonDe._(_root);
	@override late final _TranslationsAuthDe auth = _TranslationsAuthDe._(_root);
	@override late final _TranslationsNavDe nav = _TranslationsNavDe._(_root);
	@override late final _TranslationsSettingsDe settings = _TranslationsSettingsDe._(_root);
	@override late final _TranslationsRitualsDe rituals = _TranslationsRitualsDe._(_root);
	@override late final _TranslationsRoutinesDe routines = _TranslationsRoutinesDe._(_root);
}

// Path: common
class _TranslationsCommonDe implements TranslationsCommonEn {
	_TranslationsCommonDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get save => 'Speichern';
	@override String get cancel => 'Abbrechen';
	@override String get delete => 'Löschen';
	@override String get edit => 'Bearbeiten';
	@override String get loading => 'Laden...';
}

// Path: auth
class _TranslationsAuthDe implements TranslationsAuthEn {
	_TranslationsAuthDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get login => 'Anmelden';
	@override String get email => 'E-Mail';
	@override String get password => 'Passwort';
	@override String get logout => 'Abmelden';
	@override String get welcome => 'Willkommen';
}

// Path: nav
class _TranslationsNavDe implements TranslationsNavEn {
	_TranslationsNavDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get dashboard => 'Dashboard';
	@override String get rituals => 'Rituale';
	@override String get routines => 'Routinen';
	@override String get settings => 'Einstellungen';
}

// Path: settings
class _TranslationsSettingsDe implements TranslationsSettingsEn {
	_TranslationsSettingsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Einstellungen';
	@override String get language => 'Sprache';
	@override String get themeMode => 'Erscheinungsbild';
	@override String get light => 'Hell';
	@override String get dark => 'Dunkel';
	@override String get system => 'System';
}

// Path: rituals
class _TranslationsRitualsDe implements TranslationsRitualsEn {
	_TranslationsRitualsDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Rituale';
	@override String get no_data => 'Keine Rituale gefunden.';
	@override String get duration_min => 'Min.';
	@override String get error_loading => 'Fehler beim Laden der Rituale.';
	@override late final _TranslationsRitualsFormDe form = _TranslationsRitualsFormDe._(_root);
	@override late final _TranslationsRitualsDeleteDe delete = _TranslationsRitualsDeleteDe._(_root);
	@override late final _TranslationsRitualsLibraryDe library = _TranslationsRitualsLibraryDe._(_root);
}

// Path: routines
class _TranslationsRoutinesDe implements TranslationsRoutinesEn {
	_TranslationsRoutinesDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Routinen';
	@override String get no_data => 'Keine Routinen gefunden.';
	@override String duration({required Object minutes}) => 'Dauer: ${minutes} Min.';
	@override String get edit => 'Routine bearbeiten';
	@override String get save => 'Änderungen speichern';
	@override String get add_ritual => 'Ritual hinzufügen';
	@override String get confirm_delete_ritual => 'Ritual entfernen?';
	@override String get add_title => 'Neue Routine';
	@override String get create_button => 'Erstellen';
	@override late final _TranslationsRoutinesFormDe form = _TranslationsRoutinesFormDe._(_root);
	@override String get delete_title => 'Routine löschen?';
	@override String get delete_confirmation => 'Möchtest du diese Routine wirklich unwiderruflich löschen? Alle Verknüpfungen zu Ritualen werden dabei entfernt.';
	@override String get delete_success => 'Routine gelöscht.';
}

// Path: rituals.form
class _TranslationsRitualsFormDe implements TranslationsRitualsFormEn {
	_TranslationsRitualsFormDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title_label => 'Titel';
	@override String get title_hint => 'Name des Rituals';
	@override String get description_label => 'Beschreibung';
	@override String get description_hint => 'Was wirst du tun?';
	@override String duration_label({required Object min}) => 'Dauer: ${min} Min.';
	@override String get save_button => 'Speichern';
}

// Path: rituals.delete
class _TranslationsRitualsDeleteDe implements TranslationsRitualsDeleteEn {
	_TranslationsRitualsDeleteDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get confirm_title => 'Ritual löschen?';
}

// Path: rituals.library
class _TranslationsRitualsLibraryDe implements TranslationsRitualsLibraryEn {
	_TranslationsRitualsLibraryDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title => 'Ritual Bibliothek';
	@override String get search_hint => 'Rituale suchen...';
	@override String get manage => 'Rituale verwalten';
	@override String get add_to_routine => 'Zur Routine hinzufügen';
	@override String get confirm_delete => 'Dieses Ritual wird aus allen Routinen entfernt. Wirklich löschen?';
}

// Path: routines.form
class _TranslationsRoutinesFormDe implements TranslationsRoutinesFormEn {
	_TranslationsRoutinesFormDe._(this._root);

	final TranslationsDe _root; // ignore: unused_field

	// Translations
	@override String get title_label => 'Titel';
	@override String get description_label => 'Beschreibung';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on TranslationsDe {
	dynamic _flatMapFunction(String path) {
		return switch (path) {
			'common.save' => 'Speichern',
			'common.cancel' => 'Abbrechen',
			'common.delete' => 'Löschen',
			'common.edit' => 'Bearbeiten',
			'common.loading' => 'Laden...',
			'auth.login' => 'Anmelden',
			'auth.email' => 'E-Mail',
			'auth.password' => 'Passwort',
			'auth.logout' => 'Abmelden',
			'auth.welcome' => 'Willkommen',
			'nav.dashboard' => 'Dashboard',
			'nav.rituals' => 'Rituale',
			'nav.routines' => 'Routinen',
			'nav.settings' => 'Einstellungen',
			'settings.title' => 'Einstellungen',
			'settings.language' => 'Sprache',
			'settings.themeMode' => 'Erscheinungsbild',
			'settings.light' => 'Hell',
			'settings.dark' => 'Dunkel',
			'settings.system' => 'System',
			'rituals.title' => 'Rituale',
			'rituals.no_data' => 'Keine Rituale gefunden.',
			'rituals.duration_min' => 'Min.',
			'rituals.error_loading' => 'Fehler beim Laden der Rituale.',
			'rituals.form.title_label' => 'Titel',
			'rituals.form.title_hint' => 'Name des Rituals',
			'rituals.form.description_label' => 'Beschreibung',
			'rituals.form.description_hint' => 'Was wirst du tun?',
			'rituals.form.duration_label' => ({required Object min}) => 'Dauer: ${min} Min.',
			'rituals.form.save_button' => 'Speichern',
			'rituals.delete.confirm_title' => 'Ritual löschen?',
			'rituals.library.title' => 'Ritual Bibliothek',
			'rituals.library.search_hint' => 'Rituale suchen...',
			'rituals.library.manage' => 'Rituale verwalten',
			'rituals.library.add_to_routine' => 'Zur Routine hinzufügen',
			'rituals.library.confirm_delete' => 'Dieses Ritual wird aus allen Routinen entfernt. Wirklich löschen?',
			'routines.title' => 'Routinen',
			'routines.no_data' => 'Keine Routinen gefunden.',
			'routines.duration' => ({required Object minutes}) => 'Dauer: ${minutes} Min.',
			'routines.edit' => 'Routine bearbeiten',
			'routines.save' => 'Änderungen speichern',
			'routines.add_ritual' => 'Ritual hinzufügen',
			'routines.confirm_delete_ritual' => 'Ritual entfernen?',
			'routines.add_title' => 'Neue Routine',
			'routines.create_button' => 'Erstellen',
			'routines.form.title_label' => 'Titel',
			'routines.form.description_label' => 'Beschreibung',
			'routines.delete_title' => 'Routine löschen?',
			'routines.delete_confirmation' => 'Möchtest du diese Routine wirklich unwiderruflich löschen? Alle Verknüpfungen zu Ritualen werden dabei entfernt.',
			'routines.delete_success' => 'Routine gelöscht.',
			_ => null,
		};
	}
}
