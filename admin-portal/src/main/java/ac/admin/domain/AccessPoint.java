package ac.admin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Author:ZhangJianPing  Time:11-8-31 下午12:46
 */
@Entity
@Table(name="t_accesspoint")
public class AccessPoint implements Serializable{
	private Long id;
	
	private String ip;

	private String mac;
	
	private String name;
	
	private String building;
	
	private String floor;
	
	private String model;
	
	private String status;
	
	private String site;
	
	private String groupName;
	
	private String capability;
	
	private String mode24ghz;
	
	private String mode5ghz;
	
	private String pic;

	private Date createdate;
	 
	private Date lastupdate;
 
	private String creator;
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId(){
		return id;
	}

	public void setId(Long id){
		this.id = id;
	}
	
	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public String getMac() {
		return mac;
	}

	public void setMac(String mac) {
		this.mac = mac;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getBuilding() {
		return building;
	}

	public void setBuilding(String building) {
		this.building = building;
	}

	public String getFloor() {
		return floor;
	}

	public void setFloor(String floor) {
		this.floor = floor;
	}

	public String getModel() {
		return model;
	}

	public void setModel(String model) {
		this.model = model;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getSite() {
		return site;
	}

	public void setSite(String site) {
		this.site = site;
	}

	public String getGroupName() {
		return groupName;
	}

	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}

	public String getCapability() {
		return capability;
	}

	public void setCapability(String capability) {
		this.capability = capability;
	}

	public String getMode24ghz() {
		return mode24ghz;
	}

	public void setMode24ghz(String mode24ghz) {
		this.mode24ghz = mode24ghz;
	}

	public String getMode5ghz() {
		return mode5ghz;
	}

	public void setMode5ghz(String mode5ghz) {
		this.mode5ghz = mode5ghz;
	}

	public String getPic() {
		return pic;
	}

	public void setPic(String pic) {
		this.pic = pic;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Date getLastupdate() {
		return lastupdate;
	}

	public void setLastupdate(Date lastupdate) {
		this.lastupdate = lastupdate;
	}

	public String getCreator() {
		return creator;
	}

	public void setCreator(String creator) {
		this.creator = creator;
	}

	@Override
	public String toString(){
		return name;
	}
}
