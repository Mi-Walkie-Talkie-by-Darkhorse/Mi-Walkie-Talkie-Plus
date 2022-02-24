package com.xiaomi.push.providers;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import com.umeng.analytics.pro.c;
import com.xiaomi.push.ho;

/* loaded from: classes2.dex */
public class TrafficProvider extends ContentProvider {

    /* renamed from: a  reason: collision with root package name */
    private static final UriMatcher f9189a;

    /* renamed from: a  reason: collision with other field name */
    public static final Uri f839a = Uri.parse("content://com.xiaomi.push.providers.TrafficProvider/traffic");

    /* renamed from: a  reason: collision with other field name */
    private SQLiteOpenHelper f840a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f9189a = uriMatcher;
        uriMatcher.addURI("com.xiaomi.push.providers.TrafficProvider", c.F, 1);
        f9189a.addURI("com.xiaomi.push.providers.TrafficProvider", "update_imsi", 2);
    }

    @Override // android.content.ContentProvider
    public int bulkInsert(Uri uri, ContentValues[] contentValuesArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public int delete(Uri uri, String str, String[] strArr) {
        return 0;
    }

    @Override // android.content.ContentProvider
    public String getType(Uri uri) {
        if (f9189a.match(uri) == 1) {
            return "vnd.android.cursor.dir/vnd.xiaomi.push.traffic";
        }
        throw new IllegalArgumentException("Unknown URI " + uri);
    }

    @Override // android.content.ContentProvider
    public Uri insert(Uri uri, ContentValues contentValues) {
        return null;
    }

    @Override // android.content.ContentProvider
    public boolean onCreate() {
        this.f840a = new a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query;
        synchronized (a.f841a) {
            if (f9189a.match(uri) == 1) {
                query = this.f840a.getReadableDatabase().query(c.F, strArr, str, strArr2, null, null, str2);
            } else {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
        }
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (f9189a.match(uri) != 2 || contentValues == null || !contentValues.containsKey("imsi")) {
            return 0;
        }
        ho.m350a(contentValues.getAsString("imsi"));
        return 0;
    }
}
