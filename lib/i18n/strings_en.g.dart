///
/// Generated file. Do not edit.
///
// coverage:ignore-file
// ignore_for_file: type=lint, unused_import
// dart format off

part of 'strings.g.dart';

// Path: <root>
typedef TranslationsEn = Translations; // ignore: unused_element
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
	dynamic operator[](String key) => $meta.getTranslation(key);

	late final Translations _root = this; // ignore: unused_field

	Translations $copyWith({TranslationMetadata<AppLocale, Translations>? meta}) => Translations(meta: meta ?? this.$meta);

	// Translations
	late final TranslationsCommonEn common = TranslationsCommonEn._(_root);
	late final TranslationsAuthEn auth = TranslationsAuthEn._(_root);
	late final TranslationsNavEn nav = TranslationsNavEn._(_root);
	late final TranslationsSettingsEn settings = TranslationsSettingsEn._(_root);
	late final TranslationsRitualsEn rituals = TranslationsRitualsEn._(_root);
	late final TranslationsRoutinesEn routines = TranslationsRoutinesEn._(_root);
}

// Path: common
class TranslationsCommonEn {
	TranslationsCommonEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Save'
	String get save => 'Save';

	/// en: 'Cancel'
	String get cancel => 'Cancel';

	/// en: 'Delete'
	String get delete => 'Delete';

	/// en: 'Edit'
	String get edit => 'Edit';

	/// en: 'Loading...'
	String get loading => 'Loading...';
}

// Path: auth
class TranslationsAuthEn {
	TranslationsAuthEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Login'
	String get login => 'Login';

	/// en: 'Email'
	String get email => 'Email';

	/// en: 'Password'
	String get password => 'Password';

	/// en: 'Logout'
	String get logout => 'Logout';

	/// en: 'Welcome'
	String get welcome => 'Welcome';
}

// Path: nav
class TranslationsNavEn {
	TranslationsNavEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Dashboard'
	String get dashboard => 'Dashboard';

	/// en: 'Rituals'
	String get rituals => 'Rituals';

	/// en: 'Routines'
	String get routines => 'Routines';

	/// en: 'Settings'
	String get settings => 'Settings';
}

// Path: settings
class TranslationsSettingsEn {
	TranslationsSettingsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Settings'
	String get title => 'Settings';

	/// en: 'Language'
	String get language => 'Language';

	/// en: 'Appearance'
	String get themeMode => 'Appearance';

	/// en: 'Light'
	String get light => 'Light';

	/// en: 'Dark'
	String get dark => 'Dark';

	/// en: 'System'
	String get system => 'System';
}

// Path: rituals
class TranslationsRitualsEn {
	TranslationsRitualsEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Rituals'
	String get title => 'Rituals';

	/// en: 'No rituals found.'
	String get no_data => 'No rituals found.';

	/// en: 'Min.'
	String get duration_min => 'Min.';

	/// en: 'Error loading rituals.'
	String get error_loading => 'Error loading rituals.';

	late final TranslationsRitualsFormEn form = TranslationsRitualsFormEn._(_root);
	late final TranslationsRitualsDeleteEn delete = TranslationsRitualsDeleteEn._(_root);
	late final TranslationsRitualsLibraryEn library = TranslationsRitualsLibraryEn._(_root);
}

// Path: routines
class TranslationsRoutinesEn {
	TranslationsRoutinesEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Routines'
	String get title => 'Routines';

	/// en: 'No routines found.'
	String get no_data => 'No routines found.';

	/// en: 'Duration: $minutes min'
	String duration({required Object minutes}) => 'Duration: ${minutes} min';

	/// en: 'Edit Routine'
	String get edit => 'Edit Routine';

	/// en: 'Save Changes'
	String get save => 'Save Changes';

	/// en: 'Add Ritual'
	String get add_ritual => 'Add Ritual';

	/// en: 'Remove ritual?'
	String get confirm_delete_ritual => 'Remove ritual?';

	/// en: 'New Routine'
	String get add_title => 'New Routine';

	/// en: 'Create'
	String get create_button => 'Create';

	late final TranslationsRoutinesFormEn form = TranslationsRoutinesFormEn._(_root);

	/// en: 'Delete Routine?'
	String get delete_title => 'Delete Routine?';

	/// en: 'Do you really want to delete this routine permanently? all ritual links will be removed.'
	String get delete_confirmation => 'Do you really want to delete this routine permanently? all ritual links will be removed.';

	/// en: 'Routine deleted.'
	String get delete_success => 'Routine deleted.';
}

// Path: rituals.form
class TranslationsRitualsFormEn {
	TranslationsRitualsFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title'
	String get title_label => 'Title';

	/// en: 'Name of the ritual'
	String get title_hint => 'Name of the ritual';

	/// en: 'Description'
	String get description_label => 'Description';

	/// en: 'What will you do?'
	String get description_hint => 'What will you do?';

	/// en: 'Duration: $min min.'
	String duration_label({required Object min}) => 'Duration: ${min} min.';

	/// en: 'Save'
	String get save_button => 'Save';
}

// Path: rituals.delete
class TranslationsRitualsDeleteEn {
	TranslationsRitualsDeleteEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Delete ritual?'
	String get confirm_title => 'Delete ritual?';
}

// Path: rituals.library
class TranslationsRitualsLibraryEn {
	TranslationsRitualsLibraryEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Ritual Library'
	String get title => 'Ritual Library';

	/// en: 'Search rituals...'
	String get search_hint => 'Search rituals...';

	/// en: 'Manage Rituals'
	String get manage => 'Manage Rituals';

	/// en: 'Add to Routine'
	String get add_to_routine => 'Add to Routine';

	/// en: 'This ritual will be removed from all routines. Delete permanently?'
	String get confirm_delete => 'This ritual will be removed from all routines. Delete permanently?';
}

// Path: routines.form
class TranslationsRoutinesFormEn {
	TranslationsRoutinesFormEn._(this._root);

	final Translations _root; // ignore: unused_field

	// Translations

	/// en: 'Title'
	String get title_label => 'Title';

	/// en: 'Description'
	String get description_label => 'Description';
}

/// The flat map containing all translations for locale <en>.
/// Only for edge cases! For simple maps, use the map function of this library.
///
/// The Dart AOT compiler has issues with very large switch statements,
/// so the map is split into smaller functions (512 entries each).
extension on Translations {
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
			'rituals.library.title' => 'Ritual Library',
			'rituals.library.search_hint' => 'Search rituals...',
			'rituals.library.manage' => 'Manage Rituals',
			'rituals.library.add_to_routine' => 'Add to Routine',
			'rituals.library.confirm_delete' => 'This ritual will be removed from all routines. Delete permanently?',
			'routines.title' => 'Routines',
			'routines.no_data' => 'No routines found.',
			'routines.duration' => ({required Object minutes}) => 'Duration: ${minutes} min',
			'routines.edit' => 'Edit Routine',
			'routines.save' => 'Save Changes',
			'routines.add_ritual' => 'Add Ritual',
			'routines.confirm_delete_ritual' => 'Remove ritual?',
			'routines.add_title' => 'New Routine',
			'routines.create_button' => 'Create',
			'routines.form.title_label' => 'Title',
			'routines.form.description_label' => 'Description',
			'routines.delete_title' => 'Delete Routine?',
			'routines.delete_confirmation' => 'Do you really want to delete this routine permanently? all ritual links will be removed.',
			'routines.delete_success' => 'Routine deleted.',
			_ => null,
		};
	}
}
