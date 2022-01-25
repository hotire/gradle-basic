package com.github.hotire.gradlebasic

import org.springframework.boot.autoconfigure.SpringBootApplication
import org.springframework.boot.runApplication

@SpringBootApplication
class GradleBasicApplication

fun main(args: Array<String>) {
    runApplication<GradleBasicApplication>(*args)
}
