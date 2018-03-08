package com.ljq.cs.dao;

import com.ljq.cs.entity.Payment;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * @description: 支付方式 DAO 接口
 * @author: lujunqiang
 * @email: flying9001@gmail.com
 * @date: 2017/12/17
 */
@Repository
public interface PaymentDao {

    //	添加支付方式
    boolean addOne(@Param("payment") Payment payment);
    //	删除支付方式
    boolean delOne(@Param("payment") Payment payment);
    //	查询所有的支付方式
    List queryAll();
    //	查询一种支付方式
    Payment queryOne(@Param("payment") Payment payment);


}
