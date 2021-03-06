package com.housebooking.Model;

import java.util.ArrayList;
import java.util.List;

public class Room {

    private String roomId;
    private String roomName;
    private String roomDesc;
    private String roomStatus;
    private int bed;
    private float area;
    private float price;
    private String typeId;
    private String buildingId;
    private String typeName;
    private String currentStatus;
    private List<String> roomImages;

    public Room() {
        super();
        this.roomImages = new ArrayList<String>();
    }

    
    public String getCurrentStatus() {
		return currentStatus;
	}


	public void setCurrentStatus(String currentStatus) {
		this.currentStatus = currentStatus;
	}


	public int getBed() {
		return bed;
	}

	public void setBed(int bed) {
		this.bed = bed;
	}

	public float getArea() {
		return area;
	}

	public void setArea(float area) {
		this.area = area;
	}

	public String getRoomId() {
        return roomId;
    }

    public void setRoomId(String roomId) {
        this.roomId = roomId;
    }

    public String getRoomName() {
        return roomName;
    }

    public void setRoomName(String roomName) {
        this.roomName = roomName;
    }

    public String getRoomDesc() {
        return roomDesc;
    }

    public void setRoomDesc(String roomDesc) {
        this.roomDesc = roomDesc;
    }

    public float getPrice() {
        return price;
    }

    public void setPrice(float price) {
        this.price = price;
    }

    public String getTypeId() {
        return typeId;
    }

    public void setTypeId(String typeId) {
        this.typeId = typeId;
    }

    public String getBuildingId() {
        return buildingId;
    }

    public void setBuildingId(String buildingId) {
        this.buildingId = buildingId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public List<String> getRoomImages() {
        return roomImages;
    }

    public void setRoomImages(List<String> roomImages) {
        this.roomImages = roomImages;
    }
    
    public String getRoomStatus() {
        return roomStatus;
    }

    public void setRoomStatus(String roomStatus) {
        this.roomStatus = roomStatus;
    }

}
