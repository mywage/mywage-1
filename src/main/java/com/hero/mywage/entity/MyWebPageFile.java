package com.hero.mywage.entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.persistence.Lob;
import javax.validation.constraints.NotNull;
import org.springframework.roo.classpath.operations.jsr303.RooUploadedFile;
import javax.persistence.Enumerated;
import org.springframework.beans.factory.annotation.Value;
import java.util.Date;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;
import org.springframework.format.annotation.DateTimeFormat;

@RooJavaBean
@RooToString
@RooMongoEntity
public class MyWebPageFile {

    /**
     */
    @NotNull
    @RooUploadedFile(contentType = "text/plain")
    @Lob
    private byte[] webPageContent;

    /**
     */
    @NotNull
    @Enumerated
    private ContentType contentType;

    /**
     */
    @NotNull
    @Value("false")
    private Boolean isMain;

    /**
     */
    private Integer priority;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date createTime;

    /**
     */
    @Temporal(TemporalType.TIMESTAMP)
    @DateTimeFormat(style = "M-")
    private Date updateTime;
}
