package br.com.camelcase.kotlintemplate

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class KotlinTemplateApplication

fun main(args: Array<String>) {
	runApplication<KotlinTemplateApplication>(*args)
}
