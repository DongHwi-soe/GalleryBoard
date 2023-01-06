package galleryDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import galleryDTO.GalleryVO;

public class GalleryDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public GalleryDAO() {
		try {
			String dbURL = "jdbc:oracle:thin:@localhost:1521:orcl";
			String dbID = "system";
			String dbPW = "tiger123";
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPW);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	public int recordInsert(GalleryVO galleryVO) {
		System.out.println("recordInsert() 입장");
		int flag = 1;
		
		String SQL = "INSERT INTO GalleryBoard(galleryNo, title, writer, contents, fileName, fileSize, hit, recordDate, DelCheck) VALUES ((SELECT NVL(MAX(galleryNo), 0) + 1 FROM GalleryBoard), ?, ?, ?, ?, ?, 0, sysdate, 0);";
		try {
			System.out.println("SQL문 입장");
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, galleryVO.getTitle());
			pstmt.setString(2, galleryVO.getWriter());
			pstmt.setString(3, galleryVO.getContents());
			pstmt.setString(4, galleryVO.getFileName());
			pstmt.setLong(5, galleryVO.getFileSize());
			int rs = pstmt.executeUpdate();
			System.out.println("SQL문 종료");
			if(rs == 1) {
				flag = 0;
			}
		} catch (Exception e) {
			System.out.print("recordInsert() 오류 : ");
			e.printStackTrace();
		}
		return flag;
	}
}
