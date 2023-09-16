import '../database.dart';

class MarketlistitemsTable extends SupabaseTable<MarketlistitemsRow> {
  @override
  String get tableName => 'marketlistitems';

  @override
  MarketlistitemsRow createRow(Map<String, dynamic> data) =>
      MarketlistitemsRow(data);
}

class MarketlistitemsRow extends SupabaseDataRow {
  MarketlistitemsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => MarketlistitemsTable();

  int get itemid => getField<int>('itemid')!;
  set itemid(int value) => setField<int>('itemid', value);

  int? get listid => getField<int>('listid');
  set listid(int? value) => setField<int>('listid', value);

  String get itemName => getField<String>('item_name')!;
  set itemName(String value) => setField<String>('item_name', value);

  int? get quantity => getField<int>('quantity');
  set quantity(int? value) => setField<int>('quantity', value);

  String? get notes => getField<String>('notes');
  set notes(String? value) => setField<String>('notes', value);

  bool? get isChecked => getField<bool>('is_checked');
  set isChecked(bool? value) => setField<bool>('is_checked', value);
}
