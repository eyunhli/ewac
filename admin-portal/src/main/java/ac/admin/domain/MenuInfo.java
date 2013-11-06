package ac.admin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;
import java.util.Set;

/**
 * Author:Xuhui  Time:13-10-14 下午12:46
 */
@Entity
@Table(name="t_menuinfo")
public class MenuInfo implements Serializable {

	private static final long serialVersionUID = 5473662257365694948L;

	private Long id;

	private String code;

    private String name;
    
    private String action;
    
    private String icon;
    
    private MenuInfo parent;
    
	private Date createdate;
	 
	private Date lastupdate;
 
	private String creator;
	
	private boolean isleaf;
    
	private Set<MenuInfo> menus;
    
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}
	
    public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getAction() {
		return action;
	}

	public void setAction(String action) {
		this.action = action;
	}

	
	public String getIcon() {
		return icon;
	}

	public void setIcon(String icon) {
		this.icon = icon;
	}

	public boolean isIsleaf() {
		return isleaf;
	}

	public void setIsleaf(boolean isleaf) {
		this.isleaf = isleaf;
	}

	@ManyToOne
	@JoinColumn(name = "parent_id",nullable=true)
	public MenuInfo getParent() {
		return parent;
	}

	public void setParent(MenuInfo parent) {
		this.parent = parent;
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

	@OneToMany(mappedBy="parent")
	@OrderBy(value = "id asc")
	public Set<MenuInfo> getMenus() {
		return menus;
	}

	public void setMenus(Set<MenuInfo> menus) {
		this.menus = menus;
	}

	@Override
	public String toString()
	{
		return "MenuInfo{" +
				"id=" + id +
				", name='" + name + '\'' +
				'}';
	}
}
