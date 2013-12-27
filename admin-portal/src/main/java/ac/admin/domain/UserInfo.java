package ac.admin.domain;

import javax.persistence.*;
import java.io.Serializable;
import java.util.Date;

/**
 * Author:ZhangJianPing  Time:11-8-31 下午12:46
 */
@Entity
@Table(name="t_userinfo")
public class UserInfo implements Serializable
{
	private Long userid;

	private String username;

    private String password;
    
    private String type;
    
    private String value;
    
    private String userType;
    
    private String currencySign;
    
    private String remark;
    
    private Date createdate;
	 
	private Date lastupdate;
 
	private String creator;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getUserid()	{
		return userid;
	}

	public void setUserid(Long userid){
		this.userid = userid;
	}

	public String getUsername(){
		return username;
	}

	public void setUsername(String username){
		this.username = username;
	}

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getType() {
		return type;
	}

	public void setType(String type) {
		this.type = type;
	}

	public String getValue() {
		return value;
	}

	public void setValue(String value) {
		this.value = value;
	}

	public String getUserType() {
		return userType;
	}

	public void setUserType(String userType) {
		this.userType = userType;
	}

	public String getCurrencySign() {
		return currencySign;
	}

	public void setCurrencySign(String currencySign) {
		this.currencySign = currencySign;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
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
	public String toString()
	{
		return "UserInfo{" +
				"userid=" + userid +
				", username='" + username + '\'' +
				'}';
	}
}
