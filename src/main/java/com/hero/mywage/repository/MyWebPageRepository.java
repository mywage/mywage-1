package com.hero.mywage.repository;
import com.hero.mywage.entity.MyWebPage;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = MyWebPage.class)
public interface MyWebPageRepository {

    List<MyWebPage> findAll();
}
