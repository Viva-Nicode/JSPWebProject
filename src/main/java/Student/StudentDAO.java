package Student;

import java.sql.Connection;
import java.sql.PreparedStatement;
import Util.DatabaseUtil;

public class StudentDAO {
	public static int insertStudentTuple(String ID, String name, String dept_name, int tot_cred) throws Exception{
		String sql = "INSERT INTO student VALUES (?, ?, ?, ?)";
			Connection connection = DatabaseUtil.getConnection();
			PreparedStatement pre = connection.prepareStatement(sql);

			pre.setString(1, ID);
			pre.setString(2, name);
			pre.setString(3, dept_name);
			pre.setInt(4, tot_cred);
			// 쿼리가 정상적으로 처리 되었다면 1 반
			return pre.executeUpdate();

	}
}
