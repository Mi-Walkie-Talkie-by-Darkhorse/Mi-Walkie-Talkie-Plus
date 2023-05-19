package com.xiaomi.push.providers;

import android.content.ContentProvider;
import android.content.ContentValues;
import android.content.UriMatcher;
import android.database.Cursor;
import android.database.sqlite.SQLiteOpenHelper;
import android.net.Uri;
import com.umeng.analytics.pro.UContent;
import com.xiaomi.push.C6228ho;

/* loaded from: classes2.dex */
public class TrafficProvider extends ContentProvider {

    /* renamed from: a */
    private static final UriMatcher f22839a;

    /* renamed from: a */
    public static final Uri f22840a = Uri.parse("content://com.xiaomi.push.providers.TrafficProvider/traffic");

    /* renamed from: a */
    private SQLiteOpenHelper f22841a;

    static {
        UriMatcher uriMatcher = new UriMatcher(-1);
        f22839a = uriMatcher;
        uriMatcher.addURI("com.xiaomi.push.providers.TrafficProvider", UContent.f19641F, 1);
        uriMatcher.addURI("com.xiaomi.push.providers.TrafficProvider", "update_imsi", 2);
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
        if (f22839a.match(uri) == 1) {
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
        this.f22841a = new C6311a(getContext());
        return true;
    }

    @Override // android.content.ContentProvider
    public Cursor query(Uri uri, String[] strArr, String str, String[] strArr2, String str2) {
        Cursor query;
        synchronized (C6311a.f22843a) {
            if (f22839a.match(uri) != 1) {
                throw new IllegalArgumentException("Unknown URI " + uri);
            }
            query = this.f22841a.getReadableDatabase().query(UContent.f19641F, strArr, str, strArr2, null, null, str2);
        }
        return query;
    }

    @Override // android.content.ContentProvider
    public int update(Uri uri, ContentValues contentValues, String str, String[] strArr) {
        if (f22839a.match(uri) == 2 && contentValues != null && contentValues.containsKey("imsi")) {
            C6228ho.m2592a(contentValues.getAsString("imsi"));
            return 0;
        }
        return 0;
    }
}
