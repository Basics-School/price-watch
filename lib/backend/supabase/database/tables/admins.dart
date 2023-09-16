import '../database.dart';

class AdminsTable extends SupabaseTable<AdminsRow> {
  @override
  String get tableName => 'admins';

  @override
  AdminsRow createRow(Map<String, dynamic> data) => AdminsRow(data);
}

class AdminsRow extends SupabaseDataRow {
  AdminsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => AdminsTable();

  int get adminid => getField<int>('adminid')!;
  set adminid(int value) => setField<int>('adminid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  bool? get isSuperadmin => getField<bool>('is_superadmin');
  set isSuperadmin(bool? value) => setField<bool>('is_superadmin', value);
}
