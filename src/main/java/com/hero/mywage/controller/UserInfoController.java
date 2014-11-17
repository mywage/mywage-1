package com.hero.mywage.controller;
import com.hero.mywage.entity.UserInfo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/userinfoes")
@Controller
@RooWebScaffold(path = "userinfoes", formBackingObject = UserInfo.class)
public class UserInfoController {
}
