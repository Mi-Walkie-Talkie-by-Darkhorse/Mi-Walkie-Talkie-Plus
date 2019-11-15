package de.greenrobot.event;

import java.lang.reflect.Method;

/* compiled from: SubscriberMethod */
final class j {
    final Method a;
    final ThreadMode b;
    final Class<?> c;
    String d;

    j(Method method, ThreadMode threadMode, Class<?> cls) {
        this.a = method;
        this.b = threadMode;
        this.c = cls;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof j)) {
            return false;
        }
        a();
        j jVar = (j) obj;
        jVar.a();
        return this.d.equals(jVar.d);
    }

    private synchronized void a() {
        if (this.d == null) {
            StringBuilder sb = new StringBuilder(64);
            sb.append(this.a.getDeclaringClass().getName());
            sb.append('#').append(this.a.getName());
            sb.append('(').append(this.c.getName());
            this.d = sb.toString();
        }
    }

    public int hashCode() {
        return this.a.hashCode();
    }
}
