package com.shadowofthecross.shadow.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class MusicController {
    @GetMapping("/music")
    public String music() {
        return "music";
    }
}