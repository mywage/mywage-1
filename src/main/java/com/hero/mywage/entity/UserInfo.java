package com.hero.mywage.entity;
import org.springframework.roo.addon.javabean.RooJavaBean;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoEntity;
import org.springframework.roo.addon.tostring.RooToString;
import javax.validation.constraints.Size;
import javax.persistence.Column;
import javax.validation.constraints.NotNull;
import java.util.HashSet;
import java.util.Set;
import javax.persistence.ElementCollection;

@RooJavaBean
@RooToString
@RooMongoEntity
public class UserInfo {

    /**
     */
    @Size(max = 50)
    private String nickname;

    /**
     */
    @NotNull
    @Column(unique = true)
    @Size(max = 100)
    private String userName;

    /**
     */
    @NotNull
    @Size(max = 50)
    private String passworld;

    /**
     */
    @ElementCollection
    private Set<ContentType> myWebPage = new HashSet<ContentType>();
}
