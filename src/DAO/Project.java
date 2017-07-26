package DAO;

import javax.persistence.*;

/**
 * Created by sunjian on 2017/5/22.
 */
@Entity
@Table(name="Live_FT")
public class Project {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private int idLive_FT;
    private String project;
    private String ap_Version;
    private String cp_Version;
    private String hw_Version;

    public int getIdLive_FT() {
        return idLive_FT;
    }

    public void setIdLive_FT(int idLive_FT) {
        this.idLive_FT = idLive_FT;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getAp_Version() {
        return ap_Version;
    }

    public void setAp_Version(String ap_Version) {
        this.ap_Version = ap_Version;
    }

    public String getCp_Version() {
        return cp_Version;
    }

    public void setCp_Version(String cp_Version) {
        this.cp_Version = cp_Version;
    }

    public String getHw_Version() {
        return hw_Version;
    }

    public void setHw_Version(String hw_Version) {
        this.hw_Version = hw_Version;
    }

}
