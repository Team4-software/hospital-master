package bean;

public class Apply {
    /*create table if not exists apply (aid int primary key auto_increment,
                        did int comment '医生id',
                        dname char(16),
                        wid int,
                        reason char(32) comment '原因',
                        nsnum int  comment '医生这天上午或下午的号源数',
                        state char(8) comment '状态：出诊，停诊,完成，拒绝',
                        foreign key(wid) references workday(wid),
                        foreign key(did) references doctor(did));;*/
    private String aid;
    private String did;
    private String dname;
    private String wid;
    private String reason;
    private String applyTime;
    private String state;
    private String request;

    public Apply(String aid, String did, String dname, String wid, String reason, String applyTime, String state,String request) {
        this.aid = aid; //申请的唯一标识符
        this.did = did; //医生的id
        this.dname = dname; //医生的姓名
        this.wid = wid; //工作日的标识符
        this.reason = reason; //申请的原因
        this.applyTime = applyTime; //申请的时间
        this.state = state; //申请的状态
        this.request = request; //请求的详细信息
    }

    public String getRequest() {
        return request;
    }

    public void setRequest(String request) {
        this.request = request;
    }

    public String getAid() {
        return aid;
    }

    public void setAid(String aid) {
        this.aid = aid;
    }

    public String getDid() {
        return did;
    }

    public void setDid(String did) {
        this.did = did;
    }

    public String getDname() {
        return dname;
    }

    public void setDname(String dname) {
        this.dname = dname;
    }

    public String getWid() {
        return wid;
    }

    public void setWid(String wid) {
        this.wid = wid;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason;
    }

    public String getApplyTime() {
        return applyTime;
    }

    public void setApplyTime(String applyTime) {
        this.applyTime = applyTime;
    }

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }
}
