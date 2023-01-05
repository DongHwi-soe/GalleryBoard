package galleryDTO;

public class GalleryVO {
	
	private int galleryNo;
	private String title;
	private String writer;
	private String contents;
	private String fileName;
	private int fileSize;
	private int hit;
	private String recordDate;
	private String editDate;
	private int DelCheck;
	private String DelDate;
	
	public int getGalleryNo() {
		return galleryNo;
	}
	public void setGalleryNo(int galleryNo) {
		this.galleryNo = galleryNo;
	}
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	
	public String getContents() {
		return contents;
	}
	public void setContents(String contents) {
		this.contents = contents;
	}
	
	public String getFileName() {
		return fileName;
	}
	public void setFileName(String fileName) {
		this.fileName = fileName;
	}
	
	public int getFileSize() {
		return fileSize;
	}
	public void setFileSize(int fileSize) {
		this.fileSize = fileSize;
	}
	
	public int getHit() {
		return hit;
	}
	public void setHit(int hit) {
		this.hit = hit;
	}
	
	public String getRecordDate() {
		return recordDate;
	}
	public void setRecordDate(String recordDate) {
		this.recordDate = recordDate;
	}
	
	public String getEditDate() {
		return editDate;
	}
	public void setEditDate(String editDate) {
		this.editDate = editDate;
	}
	
	public int getDelCheck() {
		return DelCheck;
	}
	public void setDelCheck(int delCheck) {
		DelCheck = delCheck;
	}
	
	public String getDelDate() {
		return DelDate;
	}
	public void setDelDate(String delDate) {
		DelDate = delDate;
	}
	
	@Override
	public String toString() {
		return "GalleryVO [galleryNo=" + galleryNo + ", title=" + title + ", writer=" + writer + ", contents="
				+ contents + ", fileName=" + fileName + ", fileSize=" + fileSize + ", hit=" + hit + ", recordDate="
				+ recordDate + ", editDate=" + editDate + ", DelCheck=" + DelCheck + ", DelDate=" + DelDate + "]";
	}
}