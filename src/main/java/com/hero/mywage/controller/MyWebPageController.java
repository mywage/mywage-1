package com.hero.mywage.controller;
import com.hero.mywage.entity.MyWebPage;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mywebpages")
@Controller
@RooWebScaffold(path = "mywebpages", formBackingObject = MyWebPage.class)
public class MyWebPageController {
}
