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
			_ => null,
		};
	}
}
