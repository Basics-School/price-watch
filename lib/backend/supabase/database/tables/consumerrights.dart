import '../database.dart';

class ConsumerrightsTable extends SupabaseTable<ConsumerrightsRow> {
  @override
  String get tableName => 'consumerrights';

  @override
  ConsumerrightsRow createRow(Map<String, dynamic> data) =>
      ConsumerrightsRow(data);
}

class ConsumerrightsRow extends SupabaseDataRow {
  ConsumerrightsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => ConsumerrightsTable();

  int get rightid => getField<int>('rightid')!;
  set rightid(int value) => setField<int>('rightid', value);

  String? get description => getField<String>('description');
  set description(String? value) => setField<String>('description', value);

  String? get relevantLawsAndRegulations =>
      getField<String>('relevant_laws_and_regulations');
  set relevantLawsAndRegulations(String? value) =>
      setField<String>('relevant_laws_and_regulations', value);
}
