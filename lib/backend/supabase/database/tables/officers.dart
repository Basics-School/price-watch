import '../database.dart';

class OfficersTable extends SupabaseTable<OfficersRow> {
  @override
  String get tableName => 'officers';

  @override
  OfficersRow createRow(Map<String, dynamic> data) => OfficersRow(data);
}

class OfficersRow extends SupabaseDataRow {
  OfficersRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => OfficersTable();

  int get officerid => getField<int>('officerid')!;
  set officerid(int value) => setField<int>('officerid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String get department => getField<String>('department')!;
  set department(String value) => setField<String>('department', value);
}
