package org.jboss.netty.util.internal;

import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

final class AtomicFieldUpdaterUtil {
    private static final boolean AVAILABLE;

    static final class Node {
        volatile Node next;

        Node() {
        }
    }

    static {
        boolean z = false;
        try {
            AtomicReferenceFieldUpdater newUpdater = AtomicReferenceFieldUpdater.newUpdater(Node.class, Node.class, "next");
            Node node = new Node();
            newUpdater.set(node, node);
            if (node.next != node) {
                throw new Exception();
            }
            z = true;
            AVAILABLE = z;
        } catch (Throwable th) {
        }
    }

    static <T, V> AtomicReferenceFieldUpdater<T, V> newRefUpdater(Class<T> cls, Class<V> cls2, String str) {
        if (AVAILABLE) {
            return AtomicReferenceFieldUpdater.newUpdater(cls, cls2, str);
        }
        return null;
    }

    static <T> AtomicIntegerFieldUpdater<T> newIntUpdater(Class<T> cls, String str) {
        if (AVAILABLE) {
            return AtomicIntegerFieldUpdater.newUpdater(cls, str);
        }
        return null;
    }

    static boolean isAvailable() {
        return AVAILABLE;
    }

    private AtomicFieldUpdaterUtil() {
    }
}
