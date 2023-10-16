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
    title: 'Jaboatão Digital',
    content:
        'Descrição 01',
    modifiedTime: DateTime(2022,1,1,34,5),
  ),
  Note(
    id: 1,
    title: 'Nota 02',
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
   Note(
    id: 3,
    title: 'Nota 04',
    content:
        'Descrição 04',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
   Note(
    id: 4,
    title: 'Nota 05',
    content:
        'Descrição 05',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
   Note(
    id: 5,
    title: 'Nota 06',
    content:
        'Descrição 06',
    modifiedTime: DateTime(2023,3,1,19,5),
  ),
 
];
