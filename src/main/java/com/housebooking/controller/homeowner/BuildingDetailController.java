package com.housebooking.controller.homeowner;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import com.housebooking.DAOimpl.houseowner.BuildingDAO;
import com.housebooking.DAOimpl.houseowner.RoomDAO;
import com.housebooking.DAOimpl.houseowner.TypeOfRoomDAO;
import com.housebooking.Model.Building;
import com.housebooking.Model.Room;
import com.housebooking.Model.TypeOfRoom;

/**
 * Servlet implementation class BuildingDetailController
 */
@WebServlet("/building-detail")
@MultipartConfig(
		fileSizeThreshold = 1024 * 1024 * 2, // 2MB
		maxFileSize = 1024 * 1024 * 10, // 10MB
		maxRequestSize = 1024 * 1024 * 50) // 50MB
public class BuildingDetailController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String Save_Dir = "D:\\Workspace\\Eclipse\\house-booking-swp391\\src\\main\\webapp\\view\\common\\image\\room\\";

	protected void Process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");

		String action = request.getParameter("action");

		if (action == null || action.equals("")) {
			doDisplay(request, response);
		} else {
			switch (action) {
			case "AddRoom":
				AddRoom(request, response);
				break;
			case "DeleteRoom":
				DeleteRoom(request, response);
				break;
			case "UpdateRoom":
				UpdateRoom(request, response);
				break;

			default:
				doDisplay(request, response);
				break;
			}
		}

	}
	
	protected void DeleteRoom(HttpServletRequest request, HttpServletResponse response) throws Exception {
	
		String roomId = request.getParameter("roomId");

		RoomDAO roomDAO = new RoomDAO();

		try {
			if(roomDAO.DeleteRoom(roomId)) {
				request.setAttribute("message", "X??a th??nh c??ng!");
			} else {
				request.setAttribute("message", "X??a kh??ng th??nh c??ng!");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "C?? l???i x???y ra");
		} finally {
			doDisplay(request, response);
		}
	}
	
	protected void AddRoom(HttpServletRequest request, HttpServletResponse response) throws Exception {

		RoomDAO roomDAO = new RoomDAO();
		String roomId = "room_" + roomDAO.Count();
		
		String buildingId = request.getParameter("buildingId");
		String roomName = request.getParameter("roomName");
		String roomStatus = request.getParameter("roomStatus");
		String typeId = request.getParameter("type");
		
		float area = 0;
		if (!(request.getParameter("area") == null) && !request.getParameter("area").equals("")) {
			area = Float.parseFloat(request.getParameter("area"));
		}
		
		float price = 0;
		if (!(request.getParameter("price") == null) && !request.getParameter("price").equals("")) {
			price = Float.parseFloat(request.getParameter("price"));
		}
		
		int bed = 0;
		if (!(request.getParameter("bed") == null) && !request.getParameter("bed").equals("")) {
			bed = Integer.parseInt(request.getParameter("bed"));
		}
		
		String roomDescript = request.getParameter("Update_Descript");

		String imageLink = "";

		try {
			Part part1 = request.getPart("image_1");
			Part part2 = request.getPart("image_2");
			Part part3 = request.getPart("image_3");
			
			if (roomDAO.AddRoom(roomId, roomName, roomStatus, price, bed, area, roomDescript, typeId, buildingId)) {
				request.setAttribute("message", "Th??m th??nh c??ng!");
			} else {
				request.setAttribute("message", "Th??m kh??ng th??nh c??ng!");
			}

			if (!getFileName(part1).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part1);
				part1.write(Save_Dir + getFileName(part1));
				roomDAO.InsertRoomImage(roomId, imageLink, "H??nh 1");
			}

			if (!getFileName(part2).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part2);
				part1.write(Save_Dir + getFileName(part2));
				roomDAO.InsertRoomImage(roomId, imageLink, "H??nh 2");
			}

			if (!getFileName(part3).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part3);
				part1.write(Save_Dir + getFileName(part3));
				roomDAO.InsertRoomImage(roomId, imageLink, "H??nh 3");
			}
			
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "C?? l???i x???y ra");
		} finally {
			doDisplay(request, response);
		}
	}

	protected void UpdateRoom(HttpServletRequest request, HttpServletResponse response) throws Exception {

		String roomId = request.getParameter("roomId");
		String roomName = request.getParameter("roomName");
		String roomStatus = request.getParameter("roomStatus");
		String originImage1 = request.getParameter("originImage1");
		String originImage2 = request.getParameter("originImage2");
		String originImage3 = request.getParameter("originImage3");
		
		float area = 0;
		if (!(request.getParameter("area") == null) && !request.getParameter("area").equals("")) {
			area = Float.parseFloat(request.getParameter("area"));
		}
		
		float price = 0;
		if (!(request.getParameter("price") == null) && !request.getParameter("price").equals("")) {
			price = Float.parseFloat(request.getParameter("price"));
		}
		
		int bed = 0;
		if (!(request.getParameter("bed") == null) && !request.getParameter("bed").equals("")) {
			bed = Integer.parseInt(request.getParameter("bed"));
		}
		
		String roomDescript = request.getParameter("Update_Descript");

		String imageLink = "";

		RoomDAO roomDAO = new RoomDAO();

		try {
			Part part1 = request.getPart("image_1");
			Part part2 = request.getPart("image_2");
			Part part3 = request.getPart("image_3");

			if (!getFileName(part1).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part1);
				part1.write(Save_Dir + getFileName(part1));
				roomDAO.UpdateRoomImage(roomId, originImage1, imageLink);
			}

			if (!getFileName(part2).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part2);
				part1.write(Save_Dir + getFileName(part2));
				roomDAO.UpdateRoomImage(roomId, originImage2, imageLink);
			}

			if (!getFileName(part3).equals("")) {
				imageLink = "/view/common/image/room/" + getFileName(part3);
				part1.write(Save_Dir + getFileName(part3));
				roomDAO.UpdateRoomImage(roomId, originImage3, imageLink);
			}

			if (roomDAO.UpdateRoom(roomId, roomName, roomStatus, price, bed, area, roomDescript)) {
				request.setAttribute("message", "C???p nh???t th??nh c??ng!");
			} else {
				request.setAttribute("message", "C???p nh???t kh??ng th??nh c??ng!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			request.setAttribute("message", "C?? l???i x???y ra");
		} finally {
			doDisplay(request, response);
		}
	}

	private String getFileName(Part part) {
		String contentDisp = part.getHeader("content-disposition");
		if (!contentDisp.contains("filename=")) {
			return null;
		}

		int beginIndex = contentDisp.indexOf("filename=") + 10;
		int endIndex = contentDisp.length() - 1;

		return contentDisp.substring(beginIndex, endIndex);
	}

	protected void doDisplay(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String buildingId = request.getParameter("buildingId");

		RoomDAO roomDAO = new RoomDAO();
		BuildingDAO buildingDAO = new BuildingDAO();
		
		List<Room> listRoom = roomDAO.list(buildingId);
		Building building = buildingDAO.Find(buildingId);
		List<TypeOfRoom> listTypeOfRoom = new TypeOfRoomDAO().list();

		request.setAttribute("listType", listTypeOfRoom);
		request.setAttribute("listRoom", listRoom);
		request.setAttribute("building", building);
		
		RequestDispatcher rd = request.getRequestDispatcher("/view/house-owner/room.jsp");
		rd.forward(request, response);
	}

	public BuildingDetailController() {
		super();
		// TODO Auto-generated constructor stub
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		try {
			Process(request, response);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

}
