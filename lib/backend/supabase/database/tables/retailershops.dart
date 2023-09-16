import '../database.dart';

class RetailershopsTable extends SupabaseTable<RetailershopsRow> {
  @override
  String get tableName => 'retailershops';

  @override
  RetailershopsRow createRow(Map<String, dynamic> data) =>
      RetailershopsRow(data);
}

class RetailershopsRow extends SupabaseDataRow {
  RetailershopsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RetailershopsTable();

  int get shopid => getField<int>('shopid')!;
  set shopid(int value) => setField<int>('shopid', value);

  int? get retailerid => getField<int>('retailerid');
  set retailerid(int? value) => setField<int>('retailerid', value);

  String get shopName => getField<String>('shop_name')!;
  set shopName(String value) => setField<String>('shop_name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get contactPhone => getField<String>('contact_phone');
  set contactPhone(String? value) => setField<String>('contact_phone', value);

  String? get contactEmail => getField<String>('contact_email');
  set contactEmail(String? value) => setField<String>('contact_email', value);

  String? get businessHours => getField<String>('business_hours');
  set businessHours(String? value) => setField<String>('business_hours', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  bool? get isVerified => getField<bool>('is_verified');
  set isVerified(bool? value) => setField<bool>('is_verified', value);
}
