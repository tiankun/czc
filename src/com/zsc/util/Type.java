/*
 * <p> Company: �ٷ����ӿƼ����޹�˾</p>
 * <p> Created on 2008-9-26</p>
 * <p> @author ShenChang zou</p>
 */
package com.zsc.util;

import java.lang.annotation.ElementType;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.annotation.Target;

@Retention(RetentionPolicy.RUNTIME)
@Target(ElementType.FIELD)
public @interface Type {
	String value();
}