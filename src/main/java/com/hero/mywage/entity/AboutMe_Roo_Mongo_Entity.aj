// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hero.mywage.entity;

import com.hero.mywage.entity.AboutMe;
import java.math.BigInteger;
import org.springframework.data.annotation.Id;
import org.springframework.data.annotation.Persistent;

privileged aspect AboutMe_Roo_Mongo_Entity {
    
    declare @type: AboutMe: @Persistent;
    
    @Id
    private BigInteger AboutMe.id;
    
    public BigInteger AboutMe.getId() {
        return this.id;
    }
    
    public void AboutMe.setId(BigInteger id) {
        this.id = id;
    }
    
}
