package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_order_detail")
public class OrderDetDo {
    /**
     * 订单明细编号
     */
    @Id
    @Column(name = "ODET_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long odetId;

    /**
     * 订单编号
     */
    @Column(name = "ORDER_ID")
    private String orderId;

    /**
     * 商品编号
     */
    @Column(name = "P_ID")
    private Long pId;

    /**
     * 商品名称
     */
    @Column(name = "P_NAME")
    private String pName;

    /**
     * 商品描述
     */
    @Column(name = "P_DESC")
    private String pDesc;

    /**
     * 商品大小
     */
    @Column(name = "P_SIZE")
    private String pSize;

    /**
     * 商品颜色
     */
    @Column(name = "P_COLOR")
    private String pColor;

    /**
     * 商品数量
     */
    @Column(name = "P_NUM")
    private Byte pNum;

    /**
     * 商品单价
     */
    @Column(name = "P_PRICE")
    private Double pPrice;

    /**
     * 订单总计
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
     * 获取订单明细编号
     *
     * @return ODET_ID - 订单明细编号
     */
    public Long getOdetId() {
        return odetId;
    }

    /**
     * 设置订单明细编号
     *
     * @param odetId 订单明细编号
     */
    public void setOdetId(Long odetId) {
        this.odetId = odetId;
    }

    /**
     * 获取订单编号
     *
     * @return ORDER_ID - 订单编号
     */
    public String getOrderId() {
        return orderId;
    }

    /**
     * 设置订单编号
     *
     * @param orderId 订单编号
     */
    public void setOrderId(String orderId) {
        this.orderId = orderId;
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
     * 获取商品名称
     *
     * @return P_NAME - 商品名称
     */
    public String getpName() {
        return pName;
    }

    /**
     * 设置商品名称
     *
     * @param pName 商品名称
     */
    public void setpName(String pName) {
        this.pName = pName;
    }

    /**
     * 获取商品描述
     *
     * @return P_DESC - 商品描述
     */
    public String getpDesc() {
        return pDesc;
    }

    /**
     * 设置商品描述
     *
     * @param pDesc 商品描述
     */
    public void setpDesc(String pDesc) {
        this.pDesc = pDesc;
    }

    /**
     * 获取商品大小
     *
     * @return P_SIZE - 商品大小
     */
    public String getpSize() {
        return pSize;
    }

    /**
     * 设置商品大小
     *
     * @param pSize 商品大小
     */
    public void setpSize(String pSize) {
        this.pSize = pSize;
    }

    /**
     * 获取商品颜色
     *
     * @return P_COLOR - 商品颜色
     */
    public String getpColor() {
        return pColor;
    }

    /**
     * 设置商品颜色
     *
     * @param pColor 商品颜色
     */
    public void setpColor(String pColor) {
        this.pColor = pColor;
    }

    /**
     * 获取商品数量
     *
     * @return P_NUM - 商品数量
     */
    public Byte getpNum() {
        return pNum;
    }

    /**
     * 设置商品数量
     *
     * @param pNum 商品数量
     */
    public void setpNum(Byte pNum) {
        this.pNum = pNum;
    }

    /**
     * 获取商品单价
     *
     * @return P_PRICE - 商品单价
     */
    public Double getpPrice() {
        return pPrice;
    }

    /**
     * 设置商品单价
     *
     * @param pPrice 商品单价
     */
    public void setpPrice(Double pPrice) {
        this.pPrice = pPrice;
    }

    /**
     * 获取订单总计
     *
     * @return ALL_PRICE - 订单总计
     */
    public Double getAllPrice() {
        return allPrice;
    }

    /**
     * 设置订单总计
     *
     * @param allPrice 订单总计
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