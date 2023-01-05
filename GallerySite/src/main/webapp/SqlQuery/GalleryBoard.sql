create table galleryBoard (
    galleryNo NUMBER NOT NULL PRIMARY KEY,
    title VARCHAR2(150) NOT NULL,
    writer varchar2(12) NOT NULL,
    contents varchar2(2000),
    fileName varchar2(50),
    fileSize NUMBER,
    hit NUMBER NOT NULL,
    recordDate DATE NOT NULL,
    editDate DATE,
    DelCheck NUMBER NOT NULL,
    DelDate DATE
);

1. 번호 -> galleryNo [NUMBER, NOT NULL, PRIMARY KEY]
2. 제목 -> title [VARCHAR2(150), NOT NULL]
3. 글쓴이 -> writer [VARCHAR2(12), NOT NULL]
4. 내용 -> contents [VARCHAR2(2000)]
5. 파일이름 -> fileName [VARCHAR2(50)]
6. 파일크기 -> fileSize [NUMBER]
7. 조회수 -> hit [NUMBER, NOT NULL]
8. 등록일 -> recordDate [DATE, NOT NULL]
9. 수정일 -> UpDate [DATE]
10. 삭제여부 -> DelCheck [NUMBER, NOT NULL]
11. 삭제일 -> DelDate [DATE]

★ 전체 데이터 조회
SELECT * FROM galleryBoard;