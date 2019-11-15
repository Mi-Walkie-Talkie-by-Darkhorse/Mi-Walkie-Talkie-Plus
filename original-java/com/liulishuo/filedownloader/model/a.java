package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import com.liulishuo.filedownloader.e.g;
import java.util.Iterator;
import java.util.List;

/* compiled from: ConnectionModel */
public class a {
    private int a;
    private int b;
    private long c;
    private long d;
    private long e;

    public int a() {
        return this.a;
    }

    public void a(int i) {
        this.a = i;
    }

    public int b() {
        return this.b;
    }

    public void b(int i) {
        this.b = i;
    }

    public long c() {
        return this.c;
    }

    public void a(long j) {
        this.c = j;
    }

    public long d() {
        return this.d;
    }

    public void b(long j) {
        this.d = j;
    }

    public long e() {
        return this.e;
    }

    public void c(long j) {
        this.e = j;
    }

    public ContentValues f() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("id", Integer.valueOf(this.a));
        contentValues.put("connectionIndex", Integer.valueOf(this.b));
        contentValues.put("startOffset", Long.valueOf(this.c));
        contentValues.put("currentOffset", Long.valueOf(this.d));
        contentValues.put("endOffset", Long.valueOf(this.e));
        return contentValues;
    }

    public static long a(List<a> list) {
        long j = 0;
        Iterator it = list.iterator();
        while (true) {
            long j2 = j;
            if (!it.hasNext()) {
                return j2;
            }
            a aVar = (a) it.next();
            j = (aVar.d() - aVar.c()) + j2;
        }
    }

    public String toString() {
        return g.a("id[%d] index[%d] range[%d, %d) current offset(%d)", Integer.valueOf(this.a), Integer.valueOf(this.b), Long.valueOf(this.c), Long.valueOf(this.e), Long.valueOf(this.d));
    }
}
