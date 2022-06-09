package com.housebooking.DAOimpl;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import com.housebooking.DAO.IRoomDAO;
import com.housebooking.Model.Room;
import com.housebooking.Utils.DBUtils;

public class RoomDAO implements IRoomDAO {

	@Override
	public List<Room> list() {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

		String sql = "select * from Room";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				Room room = new Room();
				fillDataInRoom(rs, room);
				list.add(room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return list;
	}

	private void fillDataInRoom(ResultSet rs, Room room) throws SQLException {
		room.setRoomId(rs.getString("room_id"));
		room.setRoomName(rs.getNString("room_name"));
		room.setRoomDesc(rs.getNString("room_desc"));
		room.setPrice(rs.getFloat("room_price"));
		room.setRule(rs.getNString("room_rule"));
		room.setTypeId(rs.getString("type_id"));
		room.setBuildingId(rs.getString("building_id"));
		room.setTypeName(rs.getNString("type_name"));
	}
	
	@Override
	public Room find(String roomId) {
		Room room = new Room();
		String sql = "SELECT * FROM Room WHERE room_id = ?";

		try {

			Connection conn = DBUtils.getConnection();

			PreparedStatement ps = conn.prepareStatement(sql);

			ps.setString(1, roomId);
			ResultSet rs = ps.executeQuery();

			while (rs.next()) {
				fillDataInRoom(rs, room);
			}

		} catch (Exception ex) {

			ex.printStackTrace();

		}

		return room;
	}
	
	
	public int getNoOfRecords() {

        String sql = "SELECT COUNT(room_id) as noOfRecords FROM Room";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                return rs.getInt("noOfRecords");
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }
        return 0;
    }
	
	@Override
	public List<Room> list(int start, int recordsPerPage) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

        String sql = "SELECT r.*, t.type_name\n"
                + " FROM Room r left join Type_Of_Room t on r.type_id = t.type_id\n"
                + " ORDER BY room_id\n"
                + " OFFSET ? ROWS FETCH NEXT ? ROWS ONLY";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setInt(1, start);
            ps.setInt(2, recordsPerPage);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	Room room = new Room();
				fillDataInRoom(rs, room);
				list.add(room);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }
	
	public List<Room> list(String city, LocalDate startDate, LocalDate endDate, String direction, int start, int recordsPerPage) {
		ArrayList<Room> list;
		list = new ArrayList<Room>();

        String sql = " DECLARE @startDate as date = ?\r\n"
        		+ " DECLARE @endDate as date = ?\r\n"
        		+ " DECLARE @city as nvarchar(100) = ?\r\n"
        		+ " DECLARE @start as int = ?\r\n"
        		+ " DECLARE @end as int = ?\r\n"
        		+ " Select r.*, t.type_name\r\n"
        		+ " from Room r join Type_Of_Room t on r.type_id = t.type_id\r\n"
        		+ "	join Building b on r.building_id = b.building_id\n"
        		+ "	join Street st on b.street_id = st.street_id\r\n"
        		+ "	join District dis on st.district_id = dis.district_id\r\n"
        		+ "	join City ci on ci.city_id = dis.city_id\r\n"
        		+ "	left join (\r\n"
        		+ "				Select r3.*\r\n"
        		+ "					from Room r3 left join Bill_detail de on r3.room_id = de.room_id\r\n"
        		+ "						left join Bill bi on de.bill_id = bi.bill_id\r\n"
        		+ "					WHERE (\r\n"
        		+ "						@startDate >= de.start_date\r\n"
        		+ "						AND  @endDate <= de.end_date\r\n"
        		+ "					)\r\n"
        		+ "					OR(\r\n"
        		+ "						@startDate Between de.start_date and de.end_date\r\n"
        		+ "					)\r\n"
        		+ "					OR(\r\n"
        		+ "						 @endDate  Between de.start_date and de.end_date\r\n"
        		+ "					)\r\n"
        		+ "					OR(\r\n"
        		+ "						@startDate <= de.start_date\r\n"
        		+ "						AND  @endDate >= de.end_date\r\n"
        		+ "					)\r\n"
        		+ "			) as r2 on r.room_id = r2.room_id\r\n"
        		+ " Where ci.city_name like @city  AND r2.room_id is null\r\n"
        		+ " Order by r.room_price ASC\r\n"
        		+ " OFFSET @start ROWS FETCH NEXT @end ROWS ONLY";

        try {

            Connection conn = DBUtils.getConnection();

            PreparedStatement ps = conn.prepareStatement(sql);

            ps.setDate(1, Date.valueOf(startDate));
            ps.setDate(2, Date.valueOf(endDate));
            ps.setNString(3, "%"+city+"%");
            ps.setInt(4, start);
            ps.setInt(5, recordsPerPage);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
            	Room room = new Room();
				fillDataInRoom(rs, room);
				list.add(room);
            }

        } catch (Exception ex) {

            ex.printStackTrace();

        }

        return list;
    }

	@Override
	public int getTotalRecord() {
		String sql = "select count(room_id) as 'Total' from Room";
		
		 try {

	            Connection conn = DBUtils.getConnection();

	            PreparedStatement ps = conn.prepareStatement(sql);

	            ResultSet rs = ps.executeQuery();

	            while (rs.next()) {
	                return rs.getInt("Total");
	            }

	        } catch (Exception ex) {

	            ex.printStackTrace();

	        }
	        return 0;
	}

}
