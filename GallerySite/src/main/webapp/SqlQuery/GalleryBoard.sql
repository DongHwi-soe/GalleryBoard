create table galleryBoard (	
	seq int not null primary key auto_increment,
	subject varchar(150) not null,
	writer varchar(12) not null,
	mail varchar(50),
	password varchar(12)	 not null,
	content varchar(2000),
	filename varchar(50),
	filesize int,
	hit int not null,
	wip varchar(15) not null,
	wdate datetime not null
);

1. 번호 -> galleryNo [int, null 허용 안함, 기본키, 자동으로 증가하는 값]
2. 제목 -> title [varchar2(150), null 허용 안함]
3. 글쓴이 -> writer
4. 내용 -> contents
5. 파일이름 -> fileName
6. 파일크기 -> fileSize
7. 조회수 -> hit
8. 등록일 -> recordDate
9. 수정일 -> UpDate
10. 삭제여부 -> DelCheck
11. 삭제일 -> DelDate