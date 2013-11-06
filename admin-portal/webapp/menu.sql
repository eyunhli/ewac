insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf) values('01','Access Point','icon-th',sysdate,sysdate,'admin',false);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf) values('02','Configuration','icon-wrench',sysdate,sysdate,'admin',false);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf) values('03','Monitor','icon-list-alt',sysdate,sysdate,'admin',false);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf) values('04','Maintenance','icon-file',sysdate,sysdate,'admin',false);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf) values('05','Diagnostics','icon-bookmark',sysdate,sysdate,'admin',false);
 


--Access Point--
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0101','Discovery','icon-asterisk',sysdate,sysdate,'admin',false,1);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010101','Discovery Wizard','ap/discovery_wizard.jsp',sysdate,sysdate,'admin',true,6);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010102','Last Discovered','ap/last_discovered.jsp',sysdate,sysdate,'admin',true,6);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010103','Manged AP List','ap/manged_ap_list.jsp',sysdate,sysdate,'admin',true,6);

--Configure--
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0201','System','icon-hdd',sysdate,sysdate,'admin',false,2);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010201','General','configure/general.jsp',sysdate,sysdate,'admin',true,11);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010202','Time','configure/time.jsp',sysdate,sysdate,'admin',true,11);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('010203','DHCP Server','configure/dhcp_server.jsp',sysdate,sysdate,'admin',true,11);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('010204','Alerts/Logs','nav-header',sysdate,sysdate,'admin',false,11);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('01020401','Logs/SysLog','configure/logs.jsp',sysdate,sysdate,'admin',true,14);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('01020402','Alarms','configure/alarms.jsp',sysdate,sysdate,'admin',true,14);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('01020403','Email Setup','configure/email_setup.jsp',sysdate,sysdate,'admin',true,14);

insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0202','Wireless','icon-th',sysdate,sysdate,'admin',false,2);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('020201','Basic','nav-header',sysdate,sysdate,'admin',false,18);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020101','Radio On/off','configure/wireless_basic.jsp',sysdate,sysdate,'admin',true,19);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020102','Wireless','configure/wireless.jsp',sysdate,sysdate,'admin',true,19);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020103','Channel Allocation','configure/channel_allocation.jsp',sysdate,sysdate,'admin',true,19);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020104','Rf Management','configure/rf_management.jsp',sysdate,sysdate,'admin',true,19);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('020202','Advanced','nav-header',sysdate,sysdate,'admin',false,18);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020201','Radio ON/Off','configure/advanced.jsp',sysdate,sysdate,'admin',true,24);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02020202','Wireless','configure/advanced_wireless.jsp',sysdate,sysdate,'admin',true,24);

insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0203','Security','icon-lock',sysdate,sysdate,'admin',false,2);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('020301','Basic','nav-header',sysdate,sysdate,'admin',false,27);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02030101','Rogue AP','configure/rogue_ap.jsp',sysdate,sysdate,'admin',true,28);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02030102','MAC ACL','configure/mac_acl.jsp',sysdate,sysdate,'admin',true,28);
 
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0204','Profile','icon-inbox',sysdate,sysdate,'admin',false,2);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('020401','Basic','nav-header',sysdate,sysdate,'admin',false,31);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02040101','Radio','configure/profile_radio.jsp',sysdate,sysdate,'admin',true,32);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02040102','Rate Limit','configure/rate_limit.jsp',sysdate,sysdate,'admin',true,32);
insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('020402','Advanced','nav-header',sysdate,sysdate,'admin',false,31);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02040201','Radio','configure/advanced_radio.jsp',sysdate,sysdate,'admin',true,35);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('02040202','Rate Limit','configure/advanced_rate_limit.jsp',sysdate,sysdate,'admin',true,35);

insert into t_menuinfo(code,name,icon,createdate,lastupdate,creator,isleaf,parent_id) values('0205','WLAN Network','icon-th-list',sysdate,sysdate,'admin',false,2);
insert into t_menuinfo(code,name,action,createdate,lastupdate,creator,isleaf,parent_id) values('020501','Basic','configure/wlan_basic.jsp',sysdate,sysdate,'admin',true,38);