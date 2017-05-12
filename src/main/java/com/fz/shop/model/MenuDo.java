package com.fz.shop.model;

import com.thoughtworks.xstream.annotations.XStreamAlias;
import com.thoughtworks.xstream.annotations.XStreamAsAttribute;
import lombok.Data;

import java.util.Date;
import javax.persistence.*;

@Data
@XStreamAlias("menu")
@Table(name = "tb_pro_type")
public class MenuDo extends BaseDo{
    /**
     * 商品类型编号
     */
    @Id
    @Column(name = "P_TYPE_ID")
    @GeneratedValue(strategy = GenerationType.IDENTITY)

    //    @SequenceGenerator(name = "seq_employee_id",
//            allocationSize = 1, initialValue = 1,
//            sequenceName = "seq_employee_id")
//    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "seq_employee_id")

    @XStreamAsAttribute
    @XStreamAlias("pTypeId")
    private Long pTypeId;

    /**
     * 商品类型名称
     */
    @Column(name = "P_TYPE_NAME")
    private String pTypeName;

    /**
     * 商品类型父类编号
     */
    @Column(name = "P_TYPE_P_ID")
    private Long pTypePId;

    /**
     * 菜单URL
     */
    @Column(name = "MENU_URI")
    private String menuUri;

    /**
     * 菜单样式 1:平铺, 2:层级菜单, 3:图片, 4:仅链接
     */
    @Column(name = "MENU_STYLE")
    private Byte menuStyle;

    /**
     *  1:是菜单  0:不是菜单
     */
    @Column(name = "IS_MENU")
    private Byte isMenu;

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


}