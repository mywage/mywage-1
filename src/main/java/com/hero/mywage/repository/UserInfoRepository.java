package com.hero.mywage.repository;
import com.hero.mywage.entity.UserInfo;
import java.util.List;
import org.springframework.roo.addon.layers.repository.mongo.RooMongoRepository;

@RooMongoRepository(domainType = UserInfo.class)
public interface UserInfoRepository {

    List<UserInfo> findAll();
}
