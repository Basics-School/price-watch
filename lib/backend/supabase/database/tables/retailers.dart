import '../database.dart';

class RetailersTable extends SupabaseTable<RetailersRow> {
  @override
  String get tableName => 'retailers';

  @override
  RetailersRow createRow(Map<String, dynamic> data) => RetailersRow(data);
}

class RetailersRow extends SupabaseDataRow {
  RetailersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => RetailersTable();

  int get retailerid => getField<int>('retailerid')!;
  set retailerid(int value) => setField<int>('retailerid', value);

  String get retailerName => getField<String>('retailer_name')!;
  set retailerName(String value) => setField<String>('retailer_name', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);

  String? get contactPhone => getField<String>('contact_phone');
  set contactPhone(String? value) => setField<String>('contact_phone', value);

  String? get contactEmail => getField<String>('contact_email');
  set contactEmail(String? value) => setField<String>('contact_email', value);

  bool? get businessVerificationStatus =>
      getField<bool>('business_verification_status');
  set businessVerificationStatus(bool? value) =>
      setField<bool>('business_verification_status', value);
}
