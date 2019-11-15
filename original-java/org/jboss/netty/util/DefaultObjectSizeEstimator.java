package org.jboss.netty.util;

import java.lang.reflect.Field;
import java.nio.ByteBuffer;
import java.util.HashSet;
import java.util.Set;
import java.util.concurrent.ConcurrentMap;
import org.jboss.netty.buffer.ChannelBuffer;
import org.jboss.netty.channel.MessageEvent;
import org.jboss.netty.util.internal.ConcurrentIdentityWeakKeyHashMap;

public class DefaultObjectSizeEstimator implements ObjectSizeEstimator {
    private final ConcurrentMap<Class<?>, Integer> class2size = new ConcurrentIdentityWeakKeyHashMap();

    public DefaultObjectSizeEstimator() {
        this.class2size.put(Boolean.TYPE, Integer.valueOf(4));
        this.class2size.put(Byte.TYPE, Integer.valueOf(1));
        this.class2size.put(Character.TYPE, Integer.valueOf(2));
        this.class2size.put(Integer.TYPE, Integer.valueOf(4));
        this.class2size.put(Short.TYPE, Integer.valueOf(2));
        this.class2size.put(Long.TYPE, Integer.valueOf(8));
        this.class2size.put(Float.TYPE, Integer.valueOf(4));
        this.class2size.put(Double.TYPE, Integer.valueOf(8));
        this.class2size.put(Void.TYPE, Integer.valueOf(0));
    }

    public int estimateSize(Object obj) {
        if (obj == null) {
            return 8;
        }
        int estimateSize = estimateSize(obj.getClass(), null) + 8;
        if (obj instanceof EstimatableObjectWrapper) {
            estimateSize += estimateSize(((EstimatableObjectWrapper) obj).unwrap());
        } else if (obj instanceof MessageEvent) {
            estimateSize += estimateSize(((MessageEvent) obj).getMessage());
        } else if (obj instanceof ChannelBuffer) {
            estimateSize += ((ChannelBuffer) obj).capacity();
        } else if (obj instanceof byte[]) {
            estimateSize += ((byte[]) obj).length;
        } else if (obj instanceof ByteBuffer) {
            estimateSize += ((ByteBuffer) obj).remaining();
        } else if (obj instanceof CharSequence) {
            estimateSize += ((CharSequence) obj).length() << 1;
        } else if (obj instanceof Iterable) {
            for (Object estimateSize2 : (Iterable) obj) {
                estimateSize += estimateSize(estimateSize2);
            }
        }
        return align(estimateSize);
    }

    private int estimateSize(Class<?> cls, Set<Class<?>> set) {
        Field[] declaredFields;
        Integer num = (Integer) this.class2size.get(cls);
        if (num != null) {
            return num.intValue();
        }
        if (set == null) {
            set = new HashSet<>();
        } else if (set.contains(cls)) {
            return 0;
        }
        set.add(cls);
        int i = 8;
        for (Class<?> cls2 = cls; cls2 != null; cls2 = cls2.getSuperclass()) {
            for (Field field : cls2.getDeclaredFields()) {
                if ((field.getModifiers() & 8) == 0) {
                    i += estimateSize(field.getType(), set);
                }
            }
        }
        set.remove(cls);
        int align = align(i);
        this.class2size.putIfAbsent(cls, Integer.valueOf(align));
        return align;
    }

    private static int align(int i) {
        int i2 = i % 8;
        if (i2 != 0) {
            return i + (8 - i2);
        }
        return i;
    }
}
