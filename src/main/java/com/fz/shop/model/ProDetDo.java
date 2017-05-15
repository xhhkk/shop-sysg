package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_pro_detail")
public class ProDetDo {
    /**
     * 商品明细ID
     */
    @Id
    @Column(name = "DET_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long detId;

    /**
     * 商品编号
     */
    @Column(name = "PRO_ID")
    private Long proId;

    /**
     * 商品长度
     */
    @Column(name = "DET_LENGTH")
    private String detLength;

    /**
     * 商品高度
     */
    @Column(name = "DET_HEIGHT")
    private String detHeight;

    /**
     * 商品宽度
     */
    @Column(name = "DET_WIDTH")
    private String detWidth;

    /**
     * 商品质量
     */
    @Column(name = "DET_MATYE")
    private String detMatye;

    /**
     * 商品产地
     */
    @Column(name = "DET_ADDRESS")
    private String detAddress;

    /**
     * 生产日期
     */
    @Column(name = "DET_DATE")
    private Date detDate;

    /**
     * 详细介绍
     */
    @Column(name = "DET_DESC")
    private String detDesc;

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
     * 获取商品明细ID
     *
     * @return DET_ID - 商品明细ID
     */
    public Long getDetId() {
        return detId;
    }

    /**
     * 设置商品明细ID
     *
     * @param detId 商品明细ID
     */
    public void setDetId(Long detId) {
        this.detId = detId;
    }

    /**
     * 获取商品编号
     *
     * @return PRO_ID - 商品编号
     */
    public Long getProId() {
        return proId;
    }

    /**
     * 设置商品编号
     *
     * @param proId 商品编号
     */
    public void setProId(Long proId) {
        this.proId = proId;
    }

    /**
     * 获取商品长度
     *
     * @return DET_LENGTH - 商品长度
     */
    public String getDetLength() {
        return detLength;
    }

    /**
     * 设置商品长度
     *
     * @param detLength 商品长度
     */
    public void setDetLength(String detLength) {
        this.detLength = detLength;
    }

    /**
     * 获取商品高度
     *
     * @return DET_HEIGHT - 商品高度
     */
    public String getDetHeight() {
        return detHeight;
    }

    /**
     * 设置商品高度
     *
     * @param detHeight 商品高度
     */
    public void setDetHeight(String detHeight) {
        this.detHeight = detHeight;
    }

    /**
     * 获取商品宽度
     *
     * @return DET_WIDTH - 商品宽度
     */
    public String getDetWidth() {
        return detWidth;
    }

    /**
     * 设置商品宽度
     *
     * @param detWidth 商品宽度
     */
    public void setDetWidth(String detWidth) {
        this.detWidth = detWidth;
    }

    /**
     * 获取商品质量
     *
     * @return DET_MATYE - 商品质量
     */
    public String getDetMatye() {
        return detMatye;
    }

    /**
     * 设置商品质量
     *
     * @param detMatye 商品质量
     */
    public void setDetMatye(String detMatye) {
        this.detMatye = detMatye;
    }

    /**
     * 获取商品产地
     *
     * @return DET_ADDRESS - 商品产地
     */
    public String getDetAddress() {
        return detAddress;
    }

    /**
     * 设置商品产地
     *
     * @param detAddress 商品产地
     */
    public void setDetAddress(String detAddress) {
        this.detAddress = detAddress;
    }

    /**
     * 获取生产日期
     *
     * @return DET_DATE - 生产日期
     */
    public Date getDetDate() {
        return detDate;
    }

    /**
     * 设置生产日期
     *
     * @param detDate 生产日期
     */
    public void setDetDate(Date detDate) {
        this.detDate = detDate;
    }

    /**
     * 获取详细介绍
     *
     * @return DET_DESC - 详细介绍
     */
    public String getDetDesc() {
        return detDesc;
    }

    /**
     * 设置详细介绍
     *
     * @param detDesc 详细介绍
     */
    public void setDetDesc(String detDesc) {
        this.detDesc = detDesc;
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