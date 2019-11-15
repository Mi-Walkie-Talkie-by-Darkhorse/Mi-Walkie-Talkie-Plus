package com.google.gson;

import com.google.gson.internal.C$Gson$Preconditions;
import java.lang.annotation.Annotation;
import java.lang.reflect.Field;
import java.lang.reflect.Type;
import java.util.Arrays;
import java.util.Collection;

public final class FieldAttributes {
    private final Field field;

    public FieldAttributes(Field field2) {
        C$Gson$Preconditions.checkNotNull(field2);
        this.field = field2;
    }

    public Class<?> getDeclaringClass() {
        return this.field.getDeclaringClass();
    }

    public String getName() {
        return this.field.getName();
    }

    public Type getDeclaredType() {
        return this.field.getGenericType();
    }

    public Class<?> getDeclaredClass() {
        return this.field.getType();
    }

    public <T extends Annotation> T getAnnotation(Class<T> cls) {
        return this.field.getAnnotation(cls);
    }

    public Collection<Annotation> getAnnotations() {
        return Arrays.asList(this.field.getAnnotations());
    }

    public boolean hasModifier(int i) {
        return (this.field.getModifiers() & i) != 0;
    }

    /* access modifiers changed from: 0000 */
    public Object get(Object obj) throws IllegalAccessException {
        return this.field.get(obj);
    }

    /* access modifiers changed from: 0000 */
    public boolean isSynthetic() {
        return this.field.isSynthetic();
    }
}
