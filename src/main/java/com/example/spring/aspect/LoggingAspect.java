package com.example.spring.aspect;

import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.reflect.MethodSignature;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class LoggingAspect {
    @Around("execution(* com.example.spring.DAO.CarDAOImpl.*(..))")
    public Object logAllMethods(ProceedingJoinPoint joinPoint) throws Throwable {
        MethodSignature methodSignature = (MethodSignature) joinPoint.getSignature();
        String name = methodSignature.getName();

        System.out.println("Метод " + name + "стартовал");

        Object returnObj = joinPoint.proceed();

        System.out.println("Метод " + name + "закончил работу");

        return returnObj;
    }
}
