package br.com.camelcase.kotlintemplate.controller

import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

@RestController
@RequestMapping("/")
class SampleController {

    @GetMapping
    fun sampleGet(): String {
        val primo: String = System.getenv("DB_HOST") ?: ""
        val seccondo: String = System.getenv("PROP1") ?: ""

        return "Hello camelCase World! $primo || $seccondo"
    }

}
