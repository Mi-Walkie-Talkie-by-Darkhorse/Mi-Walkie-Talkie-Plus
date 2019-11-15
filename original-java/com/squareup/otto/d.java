package com.squareup.otto;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* compiled from: EventHandler */
class d {
    private final Object a;
    private final Method b;
    private final int c;
    private boolean d = true;

    d(Object obj, Method method) {
        if (obj == null) {
            throw new NullPointerException("EventHandler target cannot be null.");
        } else if (method == null) {
            throw new NullPointerException("EventHandler method cannot be null.");
        } else {
            this.a = obj;
            this.b = method;
            method.setAccessible(true);
            this.c = ((method.hashCode() + 31) * 31) + obj.hashCode();
        }
    }

    public boolean a() {
        return this.d;
    }

    public void b() {
        this.d = false;
    }

    public void a(Object obj) throws InvocationTargetException {
        if (!this.d) {
            throw new IllegalStateException(toString() + " has been invalidated and can no longer handle events.");
        }
        try {
            this.b.invoke(this.a, new Object[]{obj});
        } catch (IllegalAccessException e) {
            throw new AssertionError(e);
        } catch (InvocationTargetException e2) {
            if (e2.getCause() instanceof Error) {
                throw ((Error) e2.getCause());
            }
            throw e2;
        }
    }

    public String toString() {
        return "[EventHandler " + this.b + "]";
    }

    public int hashCode() {
        return this.c;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (getClass() != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        if (!this.b.equals(dVar.b) || this.a != dVar.a) {
            return false;
        }
        return true;
    }
}
