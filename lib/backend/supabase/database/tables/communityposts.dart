import '../database.dart';

class CommunitypostsTable extends SupabaseTable<CommunitypostsRow> {
  @override
  String get tableName => 'communityposts';

  @override
  CommunitypostsRow createRow(Map<String, dynamic> data) =>
      CommunitypostsRow(data);
}

class CommunitypostsRow extends SupabaseDataRow {
  CommunitypostsRow(Map<String, dynamic> data) : super(data);

  @override
  SupabaseTable get table => CommunitypostsTable();

  int get postid => getField<int>('postid')!;
  set postid(int value) => setField<int>('postid', value);

  String? get userid => getField<String>('userid');
  set userid(String? value) => setField<String>('userid', value);

  String? get content => getField<String>('content');
  set content(String? value) => setField<String>('content', value);

  DateTime? get postDate => getField<DateTime>('post_date');
  set postDate(DateTime? value) => setField<DateTime>('post_date', value);

  int? get likes => getField<int>('likes');
  set likes(int? value) => setField<int>('likes', value);

  int? get comments => getField<int>('comments');
  set comments(int? value) => setField<int>('comments', value);
}
