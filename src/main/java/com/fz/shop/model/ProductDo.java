package com.fz.shop.model;

import java.util.Date;
import javax.persistence.*;

@Table(name = "tb_product")
public class ProductDo {
    /**
     * 商品编号
     */
    @Id
    @Column(name = "P_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long pId;

    /**
     * 商品名称
     */
    @Column(name = "P_NAME")
    private String pName;

    /**
     * 商品原价
     */
    @Column(name = "P_REAL_PRICE")
    private Double pRealPrice;

    /**
     * 商品现价
     */
    @Column(name = "P_NOW_PRICE")
    private Double pNowPrice;

    /**
     * 是否有库存 1:有 0:无
     */
    @Column(name = "IS_STOCK")
    private Byte isStock;

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
     * 评价分数
     */
    @Column(name = "P_SCORE")
    private Double pScore;

    /**
     * 商品类型ID
     */
    @Column(name = "P_TYPE_ID")
    private Long pTypeId;

    /**
     * 商品默认图片ID
     */
    @Column(name = "P_PIC_ID")
    private Long pPicId;

    /**
     * 商品默认图片URL
     */
    @Column(name = "P_PIC_URI")
    private String pPicUri;

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
     * 获取商品原价
     *
     * @return P_REAL_PRICE - 商品原价
     */
    public Double getpRealPrice() {
        return pRealPrice;
    }

    /**
     * 设置商品原价
     *
     * @param pRealPrice 商品原价
     */
    public void setpRealPrice(Double pRealPrice) {
        this.pRealPrice = pRealPrice;
    }

    /**
     * 获取商品现价
     *
     * @return P_NOW_PRICE - 商品现价
     */
    public Double getpNowPrice() {
        return pNowPrice;
    }

    /**
     * 设置商品现价
     *
     * @param pNowPrice 商品现价
     */
    public void setpNowPrice(Double pNowPrice) {
        this.pNowPrice = pNowPrice;
    }

    /**
     * 获取是否有库存 1:有 0:无
     *
     * @return IS_STOCK - 是否有库存 1:有 0:无
     */
    public Byte getIsStock() {
        return isStock;
    }

    /**
     * 设置是否有库存 1:有 0:无
     *
     * @param isStock 是否有库存 1:有 0:无
     */
    public void setIsStock(Byte isStock) {
        this.isStock = isStock;
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
     * 获取评价分数
     *
     * @return P_SCORE - 评价分数
     */
    public Double getpScore() {
        return pScore;
    }

    /**
     * 设置评价分数
     *
     * @param pScore 评价分数
     */
    public void setpScore(Double pScore) {
        this.pScore = pScore;
    }

    /**
     * 获取商品类型ID
     *
     * @return P_TYPE_ID - 商品类型ID
     */
    public Long getpTypeId() {
        return pTypeId;
    }

    /**
     * 设置商品类型ID
     *
     * @param pTypeId 商品类型ID
     */
    public void setpTypeId(Long pTypeId) {
        this.pTypeId = pTypeId;
    }

    /**
     * 获取商品默认图片ID
     *
     * @return P_PIC_ID - 商品默认图片ID
     */
    public Long getpPicId() {
        return pPicId;
    }

    /**
     * 设置商品默认图片ID
     *
     * @param pPicId 商品默认图片ID
     */
    public void setpPicId(Long pPicId) {
        this.pPicId = pPicId;
    }

    /**
     * 获取商品默认图片URL
     *
     * @return P_PIC_URI - 商品默认图片URL
     */
    public String getpPicUri() {
        return pPicUri;
    }

    /**
     * 设置商品默认图片URL
     *
     * @param pPicUri 商品默认图片URL
     */
    public void setpPicUri(String pPicUri) {
        this.pPicUri = pPicUri;
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