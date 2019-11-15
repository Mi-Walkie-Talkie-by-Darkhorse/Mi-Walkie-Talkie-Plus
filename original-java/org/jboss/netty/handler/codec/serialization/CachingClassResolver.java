package org.jboss.netty.handler.codec.serialization;

import java.util.Map;

class CachingClassResolver implements ClassResolver {
    private final Map<String, Class<?>> classCache;
    private final ClassResolver delegate;

    CachingClassResolver(ClassResolver classResolver, Map<String, Class<?>> map) {
        this.delegate = classResolver;
        this.classCache = map;
    }

    public Class<?> resolve(String str) throws ClassNotFoundException {
        Class<?> cls = (Class) this.classCache.get(str);
        if (cls != null) {
            return cls;
        }
        Class<?> resolve = this.delegate.resolve(str);
        this.classCache.put(str, resolve);
        return resolve;
    }
}
