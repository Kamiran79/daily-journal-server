create table 'Moods' (
  'id' INTEGER NOT NULL PRIMARY KEY AUTOI_NCREMENT,
  'label' TEXT NOT NULL
);

create table 'JournalEntries' (
  'id' INTEGER NOT NULL PRIMARY KEY AUTO_INCREMENT,
  'concept' text not null,
  'entry' text not null,
  'date' integer not null,
  'moodId' integer not null,
  FOREIGN KEY('moodId') REFERENCES 'Moods'('id')
);

INSERT INTO `Moods` VALUES (null, 'Happy');
INSERT INTO `Moods` VALUES (null, 'Sad');
INSERT INTO `Moods` VALUES (null, 'Angry');
INSERT INTO `Moods` VALUES (null, 'Ok');

INSERT INTO `JournalEntries` VALUES (null, '1234', '123', 1598458543321, 1);
INSERT INTO `JournalEntries` VALUES (null, 'abc', '123', 1598458548239, 2);
INSERT INTO `JournalEntries` VALUES (null, 'Delete', 'Now Deleting', 1598458559152, 1);
INSERT INTO `JournalEntries` VALUES (null, 'ANGRY', 'fgfgdfg', 1598557358781, 3);
INSERT INTO `JournalEntries` VALUES (null, '678', 'Now Deleting', 1598557373697, 4);

select * FROM JournalEntries
select * FROM Moods
select * FROM sqlite_sequence
