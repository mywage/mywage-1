// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hero.mywage.entity;

import com.hero.mywage.entity.ContentType;
import com.hero.mywage.entity.MyWebPageFile;
import com.hero.mywage.entity.MyWebPageFileDataOnDemand;
import com.hero.mywage.service.MyWebPageFileService;
import java.math.BigInteger;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.GregorianCalendar;
import java.util.Iterator;
import java.util.List;
import java.util.Random;
import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

privileged aspect MyWebPageFileDataOnDemand_Roo_DataOnDemand {
    
    declare @type: MyWebPageFileDataOnDemand: @Component;
    
    private Random MyWebPageFileDataOnDemand.rnd = new SecureRandom();
    
    private List<MyWebPageFile> MyWebPageFileDataOnDemand.data;
    
    @Autowired
    MyWebPageFileService MyWebPageFileDataOnDemand.myWebPageFileService;
    
    public MyWebPageFile MyWebPageFileDataOnDemand.getNewTransientMyWebPageFile(int index) {
        MyWebPageFile obj = new MyWebPageFile();
        setContentType(obj, index);
        setCreateTime(obj, index);
        setIsMain(obj, index);
        setPriority(obj, index);
        setUpdateTime(obj, index);
        setWebPageContent(obj, index);
        return obj;
    }
    
    public void MyWebPageFileDataOnDemand.setContentType(MyWebPageFile obj, int index) {
        ContentType contentType = ContentType.class.getEnumConstants()[0];
        obj.setContentType(contentType);
    }
    
    public void MyWebPageFileDataOnDemand.setCreateTime(MyWebPageFile obj, int index) {
        Date createTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setCreateTime(createTime);
    }
    
    public void MyWebPageFileDataOnDemand.setIsMain(MyWebPageFile obj, int index) {
        Boolean isMain = Boolean.TRUE;
        obj.setIsMain(isMain);
    }
    
    public void MyWebPageFileDataOnDemand.setPriority(MyWebPageFile obj, int index) {
        Integer priority = new Integer(index);
        obj.setPriority(priority);
    }
    
    public void MyWebPageFileDataOnDemand.setUpdateTime(MyWebPageFile obj, int index) {
        Date updateTime = new GregorianCalendar(Calendar.getInstance().get(Calendar.YEAR), Calendar.getInstance().get(Calendar.MONTH), Calendar.getInstance().get(Calendar.DAY_OF_MONTH), Calendar.getInstance().get(Calendar.HOUR_OF_DAY), Calendar.getInstance().get(Calendar.MINUTE), Calendar.getInstance().get(Calendar.SECOND) + new Double(Math.random() * 1000).intValue()).getTime();
        obj.setUpdateTime(updateTime);
    }
    
    public void MyWebPageFileDataOnDemand.setWebPageContent(MyWebPageFile obj, int index) {
        byte[] webPageContent = String.valueOf(index).getBytes();
        obj.setWebPageContent(webPageContent);
    }
    
    public MyWebPageFile MyWebPageFileDataOnDemand.getSpecificMyWebPageFile(int index) {
        init();
        if (index < 0) {
            index = 0;
        }
        if (index > (data.size() - 1)) {
            index = data.size() - 1;
        }
        MyWebPageFile obj = data.get(index);
        BigInteger id = obj.getId();
        return myWebPageFileService.findMyWebPageFile(id);
    }
    
    public MyWebPageFile MyWebPageFileDataOnDemand.getRandomMyWebPageFile() {
        init();
        MyWebPageFile obj = data.get(rnd.nextInt(data.size()));
        BigInteger id = obj.getId();
        return myWebPageFileService.findMyWebPageFile(id);
    }
    
    public boolean MyWebPageFileDataOnDemand.modifyMyWebPageFile(MyWebPageFile obj) {
        return false;
    }
    
    public void MyWebPageFileDataOnDemand.init() {
        int from = 0;
        int to = 10;
        data = myWebPageFileService.findMyWebPageFileEntries(from, to);
        if (data == null) {
            throw new IllegalStateException("Find entries implementation for 'MyWebPageFile' illegally returned null");
        }
        if (!data.isEmpty()) {
            return;
        }
        
        data = new ArrayList<MyWebPageFile>();
        for (int i = 0; i < 10; i++) {
            MyWebPageFile obj = getNewTransientMyWebPageFile(i);
            try {
                myWebPageFileService.saveMyWebPageFile(obj);
            } catch (final ConstraintViolationException e) {
                final StringBuilder msg = new StringBuilder();
                for (Iterator<ConstraintViolation<?>> iter = e.getConstraintViolations().iterator(); iter.hasNext();) {
                    final ConstraintViolation<?> cv = iter.next();
                    msg.append("[").append(cv.getRootBean().getClass().getName()).append(".").append(cv.getPropertyPath()).append(": ").append(cv.getMessage()).append(" (invalid value = ").append(cv.getInvalidValue()).append(")").append("]");
                }
                throw new IllegalStateException(msg.toString(), e);
            }
            data.add(obj);
        }
    }
    
}
