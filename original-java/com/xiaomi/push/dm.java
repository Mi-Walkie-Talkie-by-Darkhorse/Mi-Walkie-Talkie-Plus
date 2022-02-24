package com.xiaomi.push;

/* loaded from: classes2.dex */
public class dm {

    /* renamed from: a  reason: collision with root package name */
    private static volatile dm f8853a;

    /* renamed from: a  reason: collision with other field name */
    private dl f218a;

    public static dm a() {
        if (f8853a == null) {
            synchronized (dm.class) {
                if (f8853a == null) {
                    f8853a = new dm();
                }
            }
        }
        return f8853a;
    }

    /* renamed from: a  reason: collision with other method in class */
    public dl m163a() {
        return this.f218a;
    }

    public void a(dl dlVar) {
        this.f218a = dlVar;
    }
}
