package galleryDAO;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

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
		
		String location = "C:\\Users\\DongH\\Image_REPO";
		
		int maxSize = 1024 * 1024* 5;
		
		String SQL = "INSERT INTO GalleryBoard(galleryNo, title, writer, contents, fileName, fileSize, hit, recordDate, DelCheck)"
				+ " VALUES ((SELECT NVL(MAX(galleryNo), 0) + 1 FROM GalleryBoard), ?, ?, ?, ?, ?, ?, to_char(sysdate, 'yyyy.mm.dd hh24:mi'), ?)";
		try {
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, galleryVO.getTitle());
			pstmt.setString(2, "관리자");
			pstmt.setString(3, galleryVO.getContents());
			pstmt.setString(4, galleryVO.getFileName());
			pstmt.setInt(5, galleryVO.getFileSize());
			pstmt.setInt(6, 0);
			pstmt.setInt(7, 0);
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		return -1;
	}
}
