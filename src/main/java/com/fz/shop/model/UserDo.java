package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_user")
public class UserDo {
    /**
     * 用户编号
     */
    @Id
    @Column(name = "U_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long uId;

    /**
     * 登录名
     */
    @Column(name = "U_NAME")
    private String uName;

    /**
     * 登录密码
     */
    @Column(name = "U_PASSWORD")
    private String uPassword;

    /**
     * 真实姓名
     */
    @Column(name = "U_REALNAME")
    private String uRealname;

    /**
     * 邮箱
     */
    @Column(name = "U_EMAIL")
    private String uEmail;

    /**
     * 手机号
     */
    @Column(name = "U_PHONE")
    private String uPhone;

    /**
     * 地址
     */
    @Column(name = "U_ADDRESS")
    private String uAddress;

    /**
     * 用户类型 1:系统用户 0:注册会员用户
     */
    @Column(name = "U_TYPE")
    private Byte uType;

    /**
     * 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    @Column(name = "U_STATE")
    private Byte uState;

    /**
     * 创建人ID
     */
    @Column(name = "CREATE_BY")
    private Long createBy;

    /**
     * 创建时间
     */
    @Column(name = "CREATE_DATE")
    private Date createDate;

    /**
     * 修改人ID
     */
    @Column(name = "UPDATE_BY")
    private Long updateBy;

    /**
     * 修改时间
     */
    @Column(name = "UPDATE_DATE")
    private Date updateDate;

    /**
     * 获取用户编号
     *
     * @return U_ID - 用户编号
     */
    public Long getuId() {
        return uId;
    }

    /**
     * 设置用户编号
     *
     * @param uId 用户编号
     */
    public void setuId(Long uId) {
        this.uId = uId;
    }

    /**
     * 获取登录名
     *
     * @return U_NAME - 登录名
     */
    public String getuName() {
        return uName;
    }

    /**
     * 设置登录名
     *
     * @param uName 登录名
     */
    public void setuName(String uName) {
        this.uName = uName;
    }

    /**
     * 获取登录密码
     *
     * @return U_PASSWORD - 登录密码
     */
    public String getuPassword() {
        return uPassword;
    }

    /**
     * 设置登录密码
     *
     * @param uPassword 登录密码
     */
    public void setuPassword(String uPassword) {
        this.uPassword = uPassword;
    }

    /**
     * 获取真实姓名
     *
     * @return U_REALNAME - 真实姓名
     */
    public String getuRealname() {
        return uRealname;
    }

    /**
     * 设置真实姓名
     *
     * @param uRealname 真实姓名
     */
    public void setuRealname(String uRealname) {
        this.uRealname = uRealname;
    }

    /**
     * 获取邮箱
     *
     * @return U_EMAIL - 邮箱
     */
    public String getuEmail() {
        return uEmail;
    }

    /**
     * 设置邮箱
     *
     * @param uEmail 邮箱
     */
    public void setuEmail(String uEmail) {
        this.uEmail = uEmail;
    }

    /**
     * 获取手机号
     *
     * @return U_PHONE - 手机号
     */
    public String getuPhone() {
        return uPhone;
    }

    /**
     * 设置手机号
     *
     * @param uPhone 手机号
     */
    public void setuPhone(String uPhone) {
        this.uPhone = uPhone;
    }

    /**
     * 获取地址
     *
     * @return U_ADDRESS - 地址
     */
    public String getuAddress() {
        return uAddress;
    }

    /**
     * 设置地址
     *
     * @param uAddress 地址
     */
    public void setuAddress(String uAddress) {
        this.uAddress = uAddress;
    }

    /**
     * 获取用户类型 1:系统用户 0:注册会员用户
     *
     * @return U_TYPE - 用户类型 1:系统用户 0:注册会员用户
     */
    public Byte getuType() {
        return uType;
    }

    /**
     * 设置用户类型 1:系统用户 0:注册会员用户
     *
     * @param uType 用户类型 1:系统用户 0:注册会员用户
     */
    public void setuType(Byte uType) {
        this.uType = uType;
    }

    /**
     * 获取状态 1:可用状态  0:删除状态  2:锁定状态
     *
     * @return U_STATE - 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    public Byte getuState() {
        return uState;
    }

    /**
     * 设置状态 1:可用状态  0:删除状态  2:锁定状态
     *
     * @param uState 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    public void setuState(Byte uState) {
        this.uState = uState;
    }

    /**
     * 获取创建人ID
     *
     * @return CREATE_BY - 创建人ID
     */
    public Long getCreateBy() {
        return createBy;
    }

    /**
     * 设置创建人ID
     *
     * @param createBy 创建人ID
     */
    public void setCreateBy(Long createBy) {
        this.createBy = createBy;
    }

    /**
     * 获取创建时间
     *
     * @return CREATE_DATE - 创建时间
     */
    public Date getCreateDate() {
        return createDate;
    }

    /**
     * 设置创建时间
     *
     * @param createDate 创建时间
     */
    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    /**
     * 获取修改人ID
     *
     * @return UPDATE_BY - 修改人ID
     */
    public Long getUpdateBy() {
        return updateBy;
    }

    /**
     * 设置修改人ID
     *
     * @param updateBy 修改人ID
     */
    public void setUpdateBy(Long updateBy) {
        this.updateBy = updateBy;
    }

    /**
     * 获取修改时间
     *
     * @return UPDATE_DATE - 修改时间
     */
    public Date getUpdateDate() {
        return updateDate;
    }

    /**
     * 设置修改时间
     *
     * @param updateDate 修改时间
     */
    public void setUpdateDate(Date updateDate) {
        this.updateDate = updateDate;
    }
}