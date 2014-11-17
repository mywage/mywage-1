package com.hero.mywage.entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Size;
import javax.validation.constraints.Max;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.CascadeType;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import org.springframework.beans.factory.annotation.Value;

@RooJavaBean
@RooToString
@RooMongoEntity
public class MyWebPage {

    /**
     */
    @NotNull
    @Size(max = 100)
    private String collectionName;

    /**
     */
    @NotNull
    @Size(max = 500)
    private String webPageUrl;

    /**
     */
    @Max(100L)
    private Integer status;

    /**
     */
    @ManyToMany(cascade = CascadeType.ALL)
    private Set<MyWebPageFile> contentList = new HashSet<MyWebPageFile>();

    /**
     */
    private String webUrl;

    /**
     */
    @ManyToOne
    private MyWebPage parent;

    /**
     */
    @Value("true")
    private Boolean isPublic;
}
