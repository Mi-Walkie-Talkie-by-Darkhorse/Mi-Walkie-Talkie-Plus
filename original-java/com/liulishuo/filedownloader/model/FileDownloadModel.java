package com.liulishuo.filedownloader.model;

import android.content.ContentValues;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.liulishuo.filedownloader.e.g;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;
import org.apache.http.cookie.ClientCookie;

public class FileDownloadModel implements Parcelable {
    public static final Creator<FileDownloadModel> CREATOR = new Creator<FileDownloadModel>() {
        /* renamed from: a */
        public FileDownloadModel createFromParcel(Parcel parcel) {
            return new FileDownloadModel(parcel);
        }

        /* renamed from: a */
        public FileDownloadModel[] newArray(int i) {
            return new FileDownloadModel[i];
        }
    };
    private int a;
    private String b;
    private String c;
    private boolean d;
    private String e;
    private final AtomicInteger f;
    private final AtomicLong g;
    private long h;
    private String i;
    private String j;
    private int k;
    private boolean l;

    public void a(int i2) {
        this.a = i2;
    }

    public void a(String str) {
        this.b = str;
    }

    public void a(String str, boolean z) {
        this.c = str;
        this.d = z;
    }

    public void a(byte b2) {
        this.f.set(b2);
    }

    public void a(long j2) {
        this.g.set(j2);
    }

    public void b(long j2) {
        this.g.addAndGet(j2);
    }

    public void c(long j2) {
        this.l = j2 > 2147483647L;
        this.h = j2;
    }

    public int a() {
        return this.a;
    }

    public String b() {
        return this.b;
    }

    public String c() {
        return this.c;
    }

    public String d() {
        return g.a(c(), l(), m());
    }

    public String e() {
        if (d() == null) {
            return null;
        }
        return g.d(d());
    }

    public byte f() {
        return (byte) this.f.get();
    }

    public long g() {
        return this.g.get();
    }

    public long h() {
        return this.h;
    }

    public boolean i() {
        return this.h == -1;
    }

    public String j() {
        return this.j;
    }

    public void b(String str) {
        this.j = str;
    }

    public String k() {
        return this.i;
    }

    public void c(String str) {
        this.i = str;
    }

    public void d(String str) {
        this.e = str;
    }

    public boolean l() {
        return this.d;
    }

    public String m() {
        return this.e;
    }

    public void b(int i2) {
        this.k = i2;
    }

    public int n() {
        return this.k;
    }

    public void o() {
        this.k = 1;
    }

    public ContentValues p() {
        ContentValues contentValues = new ContentValues();
        contentValues.put("_id", Integer.valueOf(a()));
        contentValues.put("url", b());
        contentValues.put(ClientCookie.PATH_ATTR, c());
        contentValues.put("status", Byte.valueOf(f()));
        contentValues.put("sofar", Long.valueOf(g()));
        contentValues.put("total", Long.valueOf(h()));
        contentValues.put("errMsg", k());
        contentValues.put("etag", j());
        contentValues.put("connectionCount", Integer.valueOf(n()));
        contentValues.put("pathAsDirectory", Boolean.valueOf(l()));
        if (l() && m() != null) {
            contentValues.put(HttpPostBodyUtil.FILENAME, m());
        }
        return contentValues;
    }

    public boolean q() {
        return this.l;
    }

    public String toString() {
        return g.a("id[%d], url[%s], path[%s], status[%d], sofar[%s], total[%d], etag[%s], %s", Integer.valueOf(this.a), this.b, this.c, Integer.valueOf(this.f.get()), this.g, Long.valueOf(this.h), this.j, super.toString());
    }

    public int describeContents() {
        return 0;
    }

    public void writeToParcel(Parcel parcel, int i2) {
        byte b2 = 1;
        parcel.writeInt(this.a);
        parcel.writeString(this.b);
        parcel.writeString(this.c);
        parcel.writeByte(this.d ? (byte) 1 : 0);
        parcel.writeString(this.e);
        parcel.writeByte((byte) this.f.get());
        parcel.writeLong(this.g.get());
        parcel.writeLong(this.h);
        parcel.writeString(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k);
        if (!this.l) {
            b2 = 0;
        }
        parcel.writeByte(b2);
    }

    public FileDownloadModel() {
        this.g = new AtomicLong();
        this.f = new AtomicInteger();
    }

    protected FileDownloadModel(Parcel parcel) {
        boolean z = true;
        this.a = parcel.readInt();
        this.b = parcel.readString();
        this.c = parcel.readString();
        this.d = parcel.readByte() != 0;
        this.e = parcel.readString();
        this.f = new AtomicInteger(parcel.readByte());
        this.g = new AtomicLong(parcel.readLong());
        this.h = parcel.readLong();
        this.i = parcel.readString();
        this.j = parcel.readString();
        this.k = parcel.readInt();
        if (parcel.readByte() == 0) {
            z = false;
        }
        this.l = z;
    }
}
