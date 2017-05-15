package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_user")
public class UserDo {
    /**
     * 用户编号
     */
    @Id
    @Column(name = "USER_ID")
    private Long userId;

    /**
     * 登录名
     */
    @Column(name = "USER_NAME")
    private String userName;

    /**
     * 登录密码
     */
    @Column(name = "USER_PASSWORD")
    private String userPassword;

    /**
     * 真实姓名
     */
    @Column(name = "USER_REALNAME")
    private String userRealname;

    /**
     * 邮箱
     */
    @Column(name = "USER_EMAIL")
    private String userEmail;

    /**
     * 手机号
     */
    @Column(name = "USER_PHONE")
    private String userPhone;

    /**
     * 地址
     */
    @Column(name = "USER_ADDRESS")
    private String userAddress;

    /**
     * 用户类型 1:系统用户 0:注册会员用户
     */
    @Column(name = "USER_TYPE")
    private Byte userType;

    /**
     * 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    @Column(name = "USER_STATE")
    private Byte userState;

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
     * @return USER_ID - 用户编号
     */
    public Long getUserId() {
        return userId;
    }

    /**
     * 设置用户编号
     *
     * @param userId 用户编号
     */
    public void setUserId(Long userId) {
        this.userId = userId;
    }

    /**
     * 获取登录名
     *
     * @return USER_NAME - 登录名
     */
    public String getUserName() {
        return userName;
    }

    /**
     * 设置登录名
     *
     * @param userName 登录名
     */
    public void setUserName(String userName) {
        this.userName = userName;
    }

    /**
     * 获取登录密码
     *
     * @return USER_PASSWORD - 登录密码
     */
    public String getUserPassword() {
        return userPassword;
    }

    /**
     * 设置登录密码
     *
     * @param userPassword 登录密码
     */
    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    /**
     * 获取真实姓名
     *
     * @return USER_REALNAME - 真实姓名
     */
    public String getUserRealname() {
        return userRealname;
    }

    /**
     * 设置真实姓名
     *
     * @param userRealname 真实姓名
     */
    public void setUserRealname(String userRealname) {
        this.userRealname = userRealname;
    }

    /**
     * 获取邮箱
     *
     * @return USER_EMAIL - 邮箱
     */
    public String getUserEmail() {
        return userEmail;
    }

    /**
     * 设置邮箱
     *
     * @param userEmail 邮箱
     */
    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    /**
     * 获取手机号
     *
     * @return USER_PHONE - 手机号
     */
    public String getUserPhone() {
        return userPhone;
    }

    /**
     * 设置手机号
     *
     * @param userPhone 手机号
     */
    public void setUserPhone(String userPhone) {
        this.userPhone = userPhone;
    }

    /**
     * 获取地址
     *
     * @return USER_ADDRESS - 地址
     */
    public String getUserAddress() {
        return userAddress;
    }

    /**
     * 设置地址
     *
     * @param userAddress 地址
     */
    public void setUserAddress(String userAddress) {
        this.userAddress = userAddress;
    }

    /**
     * 获取用户类型 1:系统用户 0:注册会员用户
     *
     * @return USER_TYPE - 用户类型 1:系统用户 0:注册会员用户
     */
    public Byte getUserType() {
        return userType;
    }

    /**
     * 设置用户类型 1:系统用户 0:注册会员用户
     *
     * @param userType 用户类型 1:系统用户 0:注册会员用户
     */
    public void setUserType(Byte userType) {
        this.userType = userType;
    }

    /**
     * 获取状态 1:可用状态  0:删除状态  2:锁定状态
     *
     * @return USER_STATE - 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    public Byte getUserState() {
        return userState;
    }

    /**
     * 设置状态 1:可用状态  0:删除状态  2:锁定状态
     *
     * @param userState 状态 1:可用状态  0:删除状态  2:锁定状态
     */
    public void setUserState(Byte userState) {
        this.userState = userState;
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