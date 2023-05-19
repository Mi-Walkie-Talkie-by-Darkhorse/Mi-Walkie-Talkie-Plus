package p000a.p017g.p018a;

import android.database.Cursor;
import android.database.SQLException;
import android.os.CancellationSignal;
import android.util.Pair;
import androidx.annotation.RequiresApi;
import java.io.Closeable;
import java.util.List;

/* renamed from: a.g.a.b */
/* loaded from: classes.dex */
public interface SupportSQLiteDatabase extends Closeable {
    /* renamed from: A */
    boolean mo21779A();

    @RequiresApi(api = 16)
    /* renamed from: B */
    boolean mo21778B();

    String getPath();

    boolean isOpen();

    /* renamed from: n */
    void mo21773n();

    /* renamed from: o */
    List<Pair<String, String>> mo21772o();

    /* renamed from: p */
    void mo21771p(String str) throws SQLException;

    /* renamed from: r */
    SupportSQLiteStatement mo21770r(String str);

    @RequiresApi(api = 16)
    /* renamed from: s */
    Cursor mo21769s(SupportSQLiteQuery supportSQLiteQuery, CancellationSignal cancellationSignal);

    /* renamed from: t */
    void mo21768t();

    /* renamed from: u */
    void mo21767u();

    /* renamed from: x */
    Cursor mo21766x(String str);

    /* renamed from: y */
    void mo21765y();

    /* renamed from: z */
    Cursor mo21764z(SupportSQLiteQuery supportSQLiteQuery);
}
