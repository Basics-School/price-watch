import '../database.dart';

class MarketlistTable extends SupabaseTable<MarketlistRow> {
  @override
  String get tableName => 'marketlist';

  @override
  MarketlistRow createRow(Map<String, dynamic> data) => MarketlistRow(data);
}

class MarketlistRow extends SupabaseDataRow {
  MarketlistRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MarketlistTable();

  int get listid => getField<int>('listid')!;
  set listid(int value) => setField<int>('listid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String get listName => getField<String>('list_name')!;
  set listName(String value) => setField<String>('list_name', value);

  DateTime? get createdDate => getField<DateTime>('created_date');
  set createdDate(DateTime? value) => setField<DateTime>('created_date', value);

  DateTime? get lastModifiedDate => getField<DateTime>('last_modified_date');
  set lastModifiedDate(DateTime? value) =>
      setField<DateTime>('last_modified_date', value);

  bool? get isCompleted => getField<bool>('is_completed');
  set isCompleted(bool? value) => setField<bool>('is_completed', value);
}
