// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.hero.mywage.controller;

import com.hero.mywage.controller.ApplicationConversionServiceFactoryBean;
import com.hero.mywage.entity.AboutMe;
import com.hero.mywage.entity.MyWebPage;
import com.hero.mywage.entity.MyWebPageFile;
import com.hero.mywage.entity.UserInfo;
import com.hero.mywage.service.AboutMeService;
import com.hero.mywage.service.MyWebPageFileService;
import com.hero.mywage.service.MyWebPageService;
import com.hero.mywage.service.UserInfoService;
import java.math.BigInteger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Configurable;
import org.springframework.core.convert.converter.Converter;
import org.springframework.format.FormatterRegistry;

privileged aspect ApplicationConversionServiceFactoryBean_Roo_ConversionService {
    
    declare @type: ApplicationConversionServiceFactoryBean: @Configurable;
    
    @Autowired
    AboutMeService ApplicationConversionServiceFactoryBean.aboutMeService;
    
    @Autowired
    MyWebPageService ApplicationConversionServiceFactoryBean.myWebPageService;
    
    @Autowired
    MyWebPageFileService ApplicationConversionServiceFactoryBean.myWebPageFileService;
    
    @Autowired
    UserInfoService ApplicationConversionServiceFactoryBean.userInfoService;
    
    public Converter<AboutMe, String> ApplicationConversionServiceFactoryBean.getAboutMeToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.hero.mywage.entity.AboutMe, java.lang.String>() {
            public String convert(AboutMe aboutMe) {
                return new StringBuilder().append(aboutMe.getSelfIntroduction()).toString();
            }
        };
    }
    
    public Converter<BigInteger, AboutMe> ApplicationConversionServiceFactoryBean.getIdToAboutMeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.hero.mywage.entity.AboutMe>() {
            public com.hero.mywage.entity.AboutMe convert(java.math.BigInteger id) {
                return aboutMeService.findAboutMe(id);
            }
        };
    }
    
    public Converter<String, AboutMe> ApplicationConversionServiceFactoryBean.getStringToAboutMeConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.hero.mywage.entity.AboutMe>() {
            public com.hero.mywage.entity.AboutMe convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), AboutMe.class);
            }
        };
    }
    
    public Converter<MyWebPage, String> ApplicationConversionServiceFactoryBean.getMyWebPageToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.hero.mywage.entity.MyWebPage, java.lang.String>() {
            public String convert(MyWebPage myWebPage) {
                return new StringBuilder().append(myWebPage.getCollectionName()).append(' ').append(myWebPage.getWebPageUrl()).append(' ').append(myWebPage.getStatus()).append(' ').append(myWebPage.getWebUrl()).toString();
            }
        };
    }
    
    public Converter<BigInteger, MyWebPage> ApplicationConversionServiceFactoryBean.getIdToMyWebPageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.hero.mywage.entity.MyWebPage>() {
            public com.hero.mywage.entity.MyWebPage convert(java.math.BigInteger id) {
                return myWebPageService.findMyWebPage(id);
            }
        };
    }
    
    public Converter<String, MyWebPage> ApplicationConversionServiceFactoryBean.getStringToMyWebPageConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.hero.mywage.entity.MyWebPage>() {
            public com.hero.mywage.entity.MyWebPage convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), MyWebPage.class);
            }
        };
    }
    
    public Converter<MyWebPageFile, String> ApplicationConversionServiceFactoryBean.getMyWebPageFileToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.hero.mywage.entity.MyWebPageFile, java.lang.String>() {
            public String convert(MyWebPageFile myWebPageFile) {
                return new StringBuilder().append(myWebPageFile.getPriority()).append(' ').append(myWebPageFile.getCreateTime()).append(' ').append(myWebPageFile.getUpdateTime()).toString();
            }
        };
    }
    
    public Converter<BigInteger, MyWebPageFile> ApplicationConversionServiceFactoryBean.getIdToMyWebPageFileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.hero.mywage.entity.MyWebPageFile>() {
            public com.hero.mywage.entity.MyWebPageFile convert(java.math.BigInteger id) {
                return myWebPageFileService.findMyWebPageFile(id);
            }
        };
    }
    
    public Converter<String, MyWebPageFile> ApplicationConversionServiceFactoryBean.getStringToMyWebPageFileConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.hero.mywage.entity.MyWebPageFile>() {
            public com.hero.mywage.entity.MyWebPageFile convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), MyWebPageFile.class);
            }
        };
    }
    
    public Converter<UserInfo, String> ApplicationConversionServiceFactoryBean.getUserInfoToStringConverter() {
        return new org.springframework.core.convert.converter.Converter<com.hero.mywage.entity.UserInfo, java.lang.String>() {
            public String convert(UserInfo userInfo) {
                return new StringBuilder().append(userInfo.getNickname()).append(' ').append(userInfo.getUserName()).append(' ').append(userInfo.getPassworld()).toString();
            }
        };
    }
    
    public Converter<BigInteger, UserInfo> ApplicationConversionServiceFactoryBean.getIdToUserInfoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.math.BigInteger, com.hero.mywage.entity.UserInfo>() {
            public com.hero.mywage.entity.UserInfo convert(java.math.BigInteger id) {
                return userInfoService.findUserInfo(id);
            }
        };
    }
    
    public Converter<String, UserInfo> ApplicationConversionServiceFactoryBean.getStringToUserInfoConverter() {
        return new org.springframework.core.convert.converter.Converter<java.lang.String, com.hero.mywage.entity.UserInfo>() {
            public com.hero.mywage.entity.UserInfo convert(String id) {
                return getObject().convert(getObject().convert(id, BigInteger.class), UserInfo.class);
            }
        };
    }
    
    public void ApplicationConversionServiceFactoryBean.installLabelConverters(FormatterRegistry registry) {
        registry.addConverter(getAboutMeToStringConverter());
        registry.addConverter(getIdToAboutMeConverter());
        registry.addConverter(getStringToAboutMeConverter());
        registry.addConverter(getMyWebPageToStringConverter());
        registry.addConverter(getIdToMyWebPageConverter());
        registry.addConverter(getStringToMyWebPageConverter());
        registry.addConverter(getMyWebPageFileToStringConverter());
        registry.addConverter(getIdToMyWebPageFileConverter());
        registry.addConverter(getStringToMyWebPageFileConverter());
        registry.addConverter(getUserInfoToStringConverter());
        registry.addConverter(getIdToUserInfoConverter());
        registry.addConverter(getStringToUserInfoConverter());
    }
    
    public void ApplicationConversionServiceFactoryBean.afterPropertiesSet() {
        super.afterPropertiesSet();
        installLabelConverters(getObject());
    }
    
}
