package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_order")
public class OrderDo {
    /**
     * 订单ID
     */
    @Id
    @Column(name = "ORDER_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long orderId;

    /**
     * 用户编号
     */
    @Column(name = "U_ID")
    private Long uId;

    /**
     * 订单价格
     */
    @Column(name = "ORDER_PRICE")
    private Double orderPrice;

    /**
     * 订单收货人
     */
    @Column(name = "ORDER_NAME")
    private String orderName;

    /**
     * 收货地址
     */
    @Column(name = "ORDER_ADDRESS")
    private String orderAddress;

    /**
     * 收货人电话
     */
    @Column(name = "ORDER_PHONE")
    private String orderPhone;

    /**
     * 订单备注
     */
    @Column(name = "ORDER_DESC")
    private String orderDesc;

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
     * 获取订单ID
     *
     * @return ORDER_ID - 订单ID
     */
    public Long getOrderId() {
        return orderId;
    }

    /**
     * 设置订单ID
     *
     * @param orderId 订单ID
     */
    public void setOrderId(Long orderId) {
        this.orderId = orderId;
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
     * 获取订单价格
     *
     * @return ORDER_PRICE - 订单价格
     */
    public Double getOrderPrice() {
        return orderPrice;
    }

    /**
     * 设置订单价格
     *
     * @param orderPrice 订单价格
     */
    public void setOrderPrice(Double orderPrice) {
        this.orderPrice = orderPrice;
    }

    /**
     * 获取订单收货人
     *
     * @return ORDER_NAME - 订单收货人
     */
    public String getOrderName() {
        return orderName;
    }

    /**
     * 设置订单收货人
     *
     * @param orderName 订单收货人
     */
    public void setOrderName(String orderName) {
        this.orderName = orderName;
    }

    /**
     * 获取收货地址
     *
     * @return ORDER_ADDRESS - 收货地址
     */
    public String getOrderAddress() {
        return orderAddress;
    }

    /**
     * 设置收货地址
     *
     * @param orderAddress 收货地址
     */
    public void setOrderAddress(String orderAddress) {
        this.orderAddress = orderAddress;
    }

    /**
     * 获取收货人电话
     *
     * @return ORDER_PHONE - 收货人电话
     */
    public String getOrderPhone() {
        return orderPhone;
    }

    /**
     * 设置收货人电话
     *
     * @param orderPhone 收货人电话
     */
    public void setOrderPhone(String orderPhone) {
        this.orderPhone = orderPhone;
    }

    /**
     * 获取订单备注
     *
     * @return ORDER_DESC - 订单备注
     */
    public String getOrderDesc() {
        return orderDesc;
    }

    /**
     * 设置订单备注
     *
     * @param orderDesc 订单备注
     */
    public void setOrderDesc(String orderDesc) {
        this.orderDesc = orderDesc;
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