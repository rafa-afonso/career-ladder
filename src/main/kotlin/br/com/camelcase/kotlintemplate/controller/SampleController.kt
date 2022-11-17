package br.com.camelcase.kotlintemplate.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/docker")
class SampleController {

    @GetMapping
    fun sampleGet(): String {
        return "Hello camelCase World!"
    }

}