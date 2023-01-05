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
	
	public int join(GalleryVO galleryVO) {
		String SQL = "INSERT INTO GalleryBoard VALUES (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, galleryVO.getGalleryNo());
			pstmt.setString(2, galleryVO.getTitle());
			pstmt.setString(3, galleryVO.getWriter());
			pstmt.setString(4, galleryVO.getContents());
			pstmt.setString(5, galleryVO.getFileName());
			pstmt.setInt(6, galleryVO.getFileSize());
			pstmt.setInt(7, galleryVO.getHit());
			pstmt.setString(8, galleryVO.getRecordDate());
			pstmt.setString(9, galleryVO.getEditDate());
			pstmt.setInt(10, galleryVO.getDelCheck());
			pstmt.setString(11, galleryVO.getDelDate());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
