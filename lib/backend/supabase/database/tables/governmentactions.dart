import '../database.dart';

class GovernmentactionsTable extends SupabaseTable<GovernmentactionsRow> {
  @override
  String get tableName => 'governmentactions';

  @override
  GovernmentactionsRow createRow(Map<String, dynamic> data) =>
      GovernmentactionsRow(data);
}

class GovernmentactionsRow extends SupabaseDataRow {
  GovernmentactionsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => GovernmentactionsTable();

  int get actionid => getField<int>('actionid')!;
  set actionid(int value) => setField<int>('actionid', value);

  int? get retailerid => getField<int>('retailerid');
  set retailerid(int? value) => setField<int>('retailerid', value);

  String? get actionType => getField<String>('action_type');
  set actionType(String? value) => setField<String>('action_type', value);

  String? get actionDescription => getField<String>('action_description');
  set actionDescription(String? value) =>
      setField<String>('action_description', value);

  DateTime? get actionDate => getField<DateTime>('action_date');
  set actionDate(DateTime? value) => setField<DateTime>('action_date', value);

  String? get status => getField<String>('status');
  set status(String? value) => setField<String>('status', value);
}
