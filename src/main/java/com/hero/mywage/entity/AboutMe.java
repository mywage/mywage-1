package com.hero.mywage.entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.ManyToOne;
import javax.validation.constraints.Size;
import javax.persistence.Lob;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;

@RooJavaBean
@RooToString
@RooMongoEntity
public class AboutMe {

    /**
     */
    @ManyToOne
    private UserInfo userInfo;

    /**
     */
    @Size(max = 200)
    private String selfIntroduction;

    /**
     */
    @RooUploadedFile(contentType = "image/gif")
    @Lob
    private byte[] myPhoto;
}
