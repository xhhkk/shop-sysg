package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_car")
public class CarDo {
    /**
     * 购物车编号
     */
    @Id
    @Column(name = "CAR_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long carId;

    /**
     * 用户编号
     */
    @Column(name = "U_ID")
    private Long uId;

    /**
     * 商品编号
     */
    @Column(name = "P_ID")
    private Long pId;

    /**
     * 产品大小
     */
    @Column(name = "P_SIZE")
    private String pSize;

    /**
     * 产品颜色
     */
    @Column(name = "P_COLOR")
    private String pColor;

    /**
     * 产品数量
     */
    @Column(name = "P_NUM")
    private Long pNum;

    /**
     * 产品单价
     */
    @Column(name = "P_PRICE")
    private Double pPrice;

    /**
     * 产品总价
     */
    @Column(name = "ALL_PRICE")
    private Double allPrice;

    /**
     * 状态 1:可用状态  0:删除状态
     */
    @Column(name = "STATE")
    private Byte state;

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
     * 获取购物车编号
     *
     * @return CAR_ID - 购物车编号
     */
    public Long getCarId() {
        return carId;
    }

    /**
     * 设置购物车编号
     *
     * @param carId 购物车编号
     */
    public void setCarId(Long carId) {
        this.carId = carId;
    }

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
     * 获取商品编号
     *
     * @return P_ID - 商品编号
     */
    public Long getpId() {
        return pId;
    }

    /**
     * 设置商品编号
     *
     * @param pId 商品编号
     */
    public void setpId(Long pId) {
        this.pId = pId;
    }

    /**
     * 获取产品大小
     *
     * @return P_SIZE - 产品大小
     */
    public String getpSize() {
        return pSize;
    }

    /**
     * 设置产品大小
     *
     * @param pSize 产品大小
     */
    public void setpSize(String pSize) {
        this.pSize = pSize;
    }

    /**
     * 获取产品颜色
     *
     * @return P_COLOR - 产品颜色
     */
    public String getpColor() {
        return pColor;
    }

    /**
     * 设置产品颜色
     *
     * @param pColor 产品颜色
     */
    public void setpColor(String pColor) {
        this.pColor = pColor;
    }

    /**
     * 获取产品数量
     *
     * @return P_NUM - 产品数量
     */
    public Long getpNum() {
        return pNum;
    }

    /**
     * 设置产品数量
     *
     * @param pNum 产品数量
     */
    public void setpNum(Long pNum) {
        this.pNum = pNum;
    }

    /**
     * 获取产品单价
     *
     * @return P_PRICE - 产品单价
     */
    public Double getpPrice() {
        return pPrice;
    }

    /**
     * 设置产品单价
     *
     * @param pPrice 产品单价
     */
    public void setpPrice(Double pPrice) {
        this.pPrice = pPrice;
    }

    /**
     * 获取产品总价
     *
     * @return ALL_PRICE - 产品总价
     */
    public Double getAllPrice() {
        return allPrice;
    }

    /**
     * 设置产品总价
     *
     * @param allPrice 产品总价
     */
    public void setAllPrice(Double allPrice) {
        this.allPrice = allPrice;
    }

    /**
     * 获取状态 1:可用状态  0:删除状态
     *
     * @return STATE - 状态 1:可用状态  0:删除状态
     */
    public Byte getState() {
        return state;
    }

    /**
     * 设置状态 1:可用状态  0:删除状态
     *
     * @param state 状态 1:可用状态  0:删除状态
     */
    public void setState(Byte state) {
        this.state = state;
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