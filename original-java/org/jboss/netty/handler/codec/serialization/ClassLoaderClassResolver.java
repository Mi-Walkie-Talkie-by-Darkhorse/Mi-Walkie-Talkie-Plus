package org.jboss.netty.handler.codec.serialization;

class ClassLoaderClassResolver implements ClassResolver {
    private final ClassLoader classLoader;

    ClassLoaderClassResolver(ClassLoader classLoader2) {
        this.classLoader = classLoader2;
    }

    public Class<?> resolve(String str) throws ClassNotFoundException {
        try {
            return this.classLoader.loadClass(str);
        } catch (ClassNotFoundException e) {
            return Class.forName(str, false, this.classLoader);
        }
    }
}
