package org.jboss.netty.handler.codec.serialization;

public interface ClassResolver {
    Class<?> resolve(String str) throws ClassNotFoundException;
}
