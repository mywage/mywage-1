// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hero.mywage.entity;

import com.hero.mywage.entity.UserInfo;
import java.math.BigInteger;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect UserInfo_Roo_Mongo_Entity {
    
    declare @type: UserInfo: @Persistent;
    
    @Id
    private BigInteger UserInfo.id;
    
    public BigInteger UserInfo.getId() {
        return this.id;
    }
    
    public void UserInfo.setId(BigInteger id) {
        this.id = id;
    }
    
}