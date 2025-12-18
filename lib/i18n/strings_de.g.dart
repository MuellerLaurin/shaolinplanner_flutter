///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsDe = Translations; // ignore: unused_element
class Translations with BaseTranslations<AppLocale, Translations> {
	/// Returns the current translations of the given [context].
	///
	/// Usage:
	/// final t = Translations.of(context);
	static Translations of(BuildContext context) => InheritedLocaleData.of<AppLocale, Translations>(context).translations;

	/// You can call this constructor and build your own translation instance of this locale.
	/// Constructing via the enum [AppLocale.build] is preferred.
	Translations({Map<String, Node>? overrides, PluralResolver? cardinalResolver, PluralResolver? ordinalResolver, TranslationMetadata<AppLocale, Translations>? meta})
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
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonDe common = TranslationsCommonDe._(_root);
	late final TranslationsAuthDe auth = TranslationsAuthDe._(_root);
	late final TranslationsNavDe nav = TranslationsNavDe._(_root);
	late final TranslationsSettingsDe settings = TranslationsSettingsDe._(_root);
	late final TranslationsRitualsDe rituals = TranslationsRitualsDe._(_root);
	late final TranslationsRoutinesDe routines = TranslationsRoutinesDe._(_root);
}

// Path: common
class TranslationsCommonDe {
	TranslationsCommonDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Speichern'
	String get save => 'Speichern';

	/// de: 'Abbrechen'
	String get cancel => 'Abbrechen';

	/// de: 'Löschen'
	String get delete => 'Löschen';

	/// de: 'Bearbeiten'
	String get edit => 'Bearbeiten';

	/// de: 'Laden...'
	String get loading => 'Laden...';
}

// Path: auth
class TranslationsAuthDe {
	TranslationsAuthDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Anmelden'
	String get login => 'Anmelden';

	/// de: 'E-Mail'
	String get email => 'E-Mail';

	/// de: 'Passwort'
	String get password => 'Passwort';

	/// de: 'Abmelden'
	String get logout => 'Abmelden';

	/// de: 'Willkommen'
	String get welcome => 'Willkommen';
}

// Path: nav
class TranslationsNavDe {
	TranslationsNavDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// de: 'Rituale'
	String get rituals => 'Rituale';

	/// de: 'Routinen'
	String get routines => 'Routinen';

	/// de: 'Einstellungen'
	String get settings => 'Einstellungen';
}

// Path: settings
class TranslationsSettingsDe {
	TranslationsSettingsDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Einstellungen'
	String get title => 'Einstellungen';

	/// de: 'Sprache'
	String get language => 'Sprache';

	/// de: 'Erscheinungsbild'
	String get themeMode => 'Erscheinungsbild';

	/// de: 'Hell'
	String get light => 'Hell';

	/// de: 'Dunkel'
	String get dark => 'Dunkel';

	/// de: 'System'
	String get system => 'System';
}

// Path: rituals
class TranslationsRitualsDe {
	TranslationsRitualsDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Rituale'
	String get title => 'Rituale';

	/// de: 'Keine Rituale gefunden.'
	String get no_data => 'Keine Rituale gefunden.';

	/// de: 'Min.'
	String get duration_min => 'Min.';

	/// de: 'Fehler beim Laden der Rituale.'
	String get error_loading => 'Fehler beim Laden der Rituale.';

	late final TranslationsRitualsFormDe form = TranslationsRitualsFormDe._(_root);
	late final TranslationsRitualsDeleteDe delete = TranslationsRitualsDeleteDe._(_root);
}

// Path: routines
class TranslationsRoutinesDe {
	TranslationsRoutinesDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Routinen'
	String get title => 'Routinen';

	/// de: 'Keine Routinen gefunden.'
	String get no_data => 'Keine Routinen gefunden.';

	/// de: 'Dauer: $minutes Min.'
	String duration({required Object minutes}) => 'Dauer: ${minutes} Min.';
}

// Path: rituals.form
class TranslationsRitualsFormDe {
	TranslationsRitualsFormDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Titel'
	String get title_label => 'Titel';

	/// de: 'Name des Rituals'
	String get title_hint => 'Name des Rituals';

	/// de: 'Beschreibung'
	String get description_label => 'Beschreibung';

	/// de: 'Was wirst du tun?'
	String get description_hint => 'Was wirst du tun?';

	/// de: 'Dauer: $min Min.'
	String duration_label({required Object min}) => 'Dauer: ${min} Min.';

	/// de: 'Speichern'
	String get save_button => 'Speichern';
}

// Path: rituals.delete
class TranslationsRitualsDeleteDe {
	TranslationsRitualsDeleteDe._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// de: 'Ritual löschen?'
	String get confirm_title => 'Ritual löschen?';
}

/// The flat map containing all translations for locale <de>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
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
			'routines.title' => 'Routinen',
			'routines.no_data' => 'Keine Routinen gefunden.',
			'routines.duration' => ({required Object minutes}) => 'Dauer: ${minutes} Min.',
			_ => null,
		};
	}
}
