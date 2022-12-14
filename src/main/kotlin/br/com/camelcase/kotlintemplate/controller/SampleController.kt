package br.com.camelcase.kotlintemplate.controller

import mu.KotlinLogging
import org.springframework.web.bind.annotation.GetMapping
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RestController

// Place definition above class declaration to make field static
private val log = KotlinLogging.logger {}

@RestController
@RequestMapping("/")
class SampleController {

    @GetMapping
    fun sampleGet(): String {
        val logTest = "Log qualquer"
        log.error { "$logTest | error log" }
        log.warn { "$logTest | warn log" }
        log.info { "$logTest | info log" }
        log.debug { "$logTest | debug log" }
        log.trace { "$logTest | trace log" }
        return "Hello camelCase World!"
    }

}
