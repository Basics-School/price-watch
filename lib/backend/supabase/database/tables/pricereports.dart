import '../database.dart';

class PricereportsTable extends SupabaseTable<PricereportsRow> {
  @override
  String get tableName => 'pricereports';

  @override
  PricereportsRow createRow(Map<String, dynamic> data) => PricereportsRow(data);
}

class PricereportsRow extends SupabaseDataRow {
  PricereportsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => PricereportsTable();

  int get reportid => getField<int>('reportid')!;
  set reportid(int value) => setField<int>('reportid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get retailerid => getField<int>('retailerid');
  set retailerid(int? value) => setField<int>('retailerid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  double? get reportedPrice => getField<double>('reported_price');
  set reportedPrice(double? value) => setField<double>('reported_price', value);

  DateTime? get reportDate => getField<DateTime>('report_date');
  set reportDate(DateTime? value) => setField<DateTime>('report_date', value);

  String? get verificationStatus => getField<String>('verification_status');
  set verificationStatus(String? value) =>
      setField<String>('verification_status', value);

  String? get comments => getField<String>('comments');
  set comments(String? value) => setField<String>('comments', value);

  String? get location => getField<String>('location');
  set location(String? value) => setField<String>('location', value);
}
