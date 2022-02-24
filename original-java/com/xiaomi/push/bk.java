package com.xiaomi.push;

import java.util.LinkedList;

/* loaded from: classes2.dex */
public class bk {

    /* renamed from: a  reason: collision with root package name */
    private LinkedList<a> f8783a = new LinkedList<>();

    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        private static final bk f8784a = new bk();

        /* renamed from: a  reason: collision with other field name */
        public int f132a;

        /* renamed from: a  reason: collision with other field name */
        public Object f133a;

        /* renamed from: a  reason: collision with other field name */
        public String f134a;

        a(int i, Object obj) {
            this.f132a = i;
            this.f133a = obj;
        }
    }

    public static bk a() {
        return a.f8784a;
    }

    /* renamed from: a  reason: collision with other method in class */
    private void m99a() {
        if (this.f8783a.size() > 100) {
            this.f8783a.removeFirst();
        }
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized int m100a() {
        return this.f8783a.size();
    }

    /* renamed from: a  reason: collision with other method in class */
    public synchronized LinkedList<a> m101a() {
        LinkedList<a> linkedList;
        linkedList = this.f8783a;
        this.f8783a = new LinkedList<>();
        return linkedList;
    }

    public synchronized void a(Object obj) {
        this.f8783a.add(new a(0, obj));
        m99a();
    }
}
