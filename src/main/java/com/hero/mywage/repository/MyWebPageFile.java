package com.hero.mywage.repository;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = com.hero.mywage.entity.MyWebPageFile.class)
public interface MyWebPageFile {

    List<com.hero.mywage.entity.MyWebPageFile> findAll();
}
