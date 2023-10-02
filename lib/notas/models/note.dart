class Note {
  int id;
  String title;
  String content;
  DateTime modifiedTime;

  Note({
    required this.id,
    required this.title,
    required this.content,
    required this.modifiedTime,
  });
}


List<Note> sampleNotes = [
  Note(
    id: 0,
    title: 'Nota 01',
    content:
        'Descrição',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 1,
    title: 'Jaboatão Digital',
    content:
        'Descrição 02',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 2,
    title: 'Nota 03',
    content:
        'Descrição 03',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
 
];
