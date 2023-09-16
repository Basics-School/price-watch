import '../database.dart';

class UserreviewsTable extends SupabaseTable<UserreviewsRow> {
  @override
  String get tableName => 'userreviews';

  @override
  UserreviewsRow createRow(Map<String, dynamic> data) => UserreviewsRow(data);
}

class UserreviewsRow extends SupabaseDataRow {
  UserreviewsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => UserreviewsTable();

  int get reviewid => getField<int>('reviewid')!;
  set reviewid(int value) => setField<int>('reviewid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  int? get retailerid => getField<int>('retailerid');
  set retailerid(int? value) => setField<int>('retailerid', value);

  int? get productid => getField<int>('productid');
  set productid(int? value) => setField<int>('productid', value);

  int get rating => getField<int>('rating')!;
  set rating(int value) => setField<int>('rating', value);

  String? get reviewText => getField<String>('review_text');
  set reviewText(String? value) => setField<String>('review_text', value);

  DateTime? get reviewDate => getField<DateTime>('review_date');
  set reviewDate(DateTime? value) => setField<DateTime>('review_date', value);
}
