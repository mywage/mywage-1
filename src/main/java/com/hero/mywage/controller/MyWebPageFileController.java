package com.hero.mywage.controller;
import com.hero.mywage.entity.MyWebPageFile;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/mywebpagefiles")
@Controller
@RooWebScaffold(path = "mywebpagefiles", formBackingObject = MyWebPageFile.class)
public class MyWebPageFileController {
}
