package p048b.p065c.p066a.p070e;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteOpenHelper;
import com.tencent.open.SocialConstants;
import com.xiaomi.infra.galaxy.fds.Common;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;
import p048b.p065c.p066a.OkGo;

/* renamed from: b.c.a.e.d */
/* loaded from: classes2.dex */
class DBHelper extends SQLiteOpenHelper {

    /* renamed from: e */
    static final Lock f5345e = new ReentrantLock();

    /* renamed from: a */
    private TableEntity f5346a;

    /* renamed from: b */
    private TableEntity f5347b;

    /* renamed from: c */
    private TableEntity f5348c;

    /* renamed from: d */
    private TableEntity f5349d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DBHelper() {
        this(OkGo.m21114h().m21116f());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onCreate(SQLiteDatabase sQLiteDatabase) {
        sQLiteDatabase.execSQL(this.f5346a.m21074b());
        sQLiteDatabase.execSQL(this.f5347b.m21074b());
        sQLiteDatabase.execSQL(this.f5348c.m21074b());
        sQLiteDatabase.execSQL(this.f5349d.m21074b());
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onDowngrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        onUpgrade(sQLiteDatabase, i, i2);
    }

    @Override // android.database.sqlite.SQLiteOpenHelper
    public void onUpgrade(SQLiteDatabase sQLiteDatabase, int i, int i2) {
        if (DBUtils.m21077a(sQLiteDatabase, this.f5346a)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cache");
        }
        if (DBUtils.m21077a(sQLiteDatabase, this.f5347b)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS cookie");
        }
        if (DBUtils.m21077a(sQLiteDatabase, this.f5348c)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS download");
        }
        if (DBUtils.m21077a(sQLiteDatabase, this.f5349d)) {
            sQLiteDatabase.execSQL("DROP TABLE IF EXISTS upload");
        }
        onCreate(sQLiteDatabase);
    }

    DBHelper(Context context) {
        super(context, "okgo.db", (SQLiteDatabase.CursorFactory) null, 1);
        this.f5346a = new TableEntity("cache");
        this.f5347b = new TableEntity("cookie");
        this.f5348c = new TableEntity("download");
        this.f5349d = new TableEntity("upload");
        TableEntity tableEntity = this.f5346a;
        tableEntity.m21075a(new ColumnEntity("key", "VARCHAR", true, true));
        tableEntity.m21075a(new ColumnEntity("localExpire", "INTEGER"));
        tableEntity.m21075a(new ColumnEntity("head", "BLOB"));
        tableEntity.m21075a(new ColumnEntity("data", "BLOB"));
        TableEntity tableEntity2 = this.f5347b;
        tableEntity2.m21075a(new ColumnEntity("host", "VARCHAR"));
        tableEntity2.m21075a(new ColumnEntity("name", "VARCHAR"));
        tableEntity2.m21075a(new ColumnEntity("domain", "VARCHAR"));
        tableEntity2.m21075a(new ColumnEntity("cookie", "BLOB"));
        tableEntity2.m21075a(new ColumnEntity("host", "name", "domain"));
        TableEntity tableEntity3 = this.f5348c;
        tableEntity3.m21075a(new ColumnEntity("tag", "VARCHAR", true, true));
        tableEntity3.m21075a(new ColumnEntity(SocialConstants.PARAM_URL, "VARCHAR"));
        tableEntity3.m21075a(new ColumnEntity("folder", "VARCHAR"));
        tableEntity3.m21075a(new ColumnEntity("filePath", "VARCHAR"));
        tableEntity3.m21075a(new ColumnEntity("fileName", "VARCHAR"));
        tableEntity3.m21075a(new ColumnEntity("fraction", "VARCHAR"));
        tableEntity3.m21075a(new ColumnEntity("totalSize", "INTEGER"));
        tableEntity3.m21075a(new ColumnEntity("currentSize", "INTEGER"));
        tableEntity3.m21075a(new ColumnEntity("status", "INTEGER"));
        tableEntity3.m21075a(new ColumnEntity("priority", "INTEGER"));
        tableEntity3.m21075a(new ColumnEntity(Common.DATE, "INTEGER"));
        tableEntity3.m21075a(new ColumnEntity(SocialConstants.TYPE_REQUEST, "BLOB"));
        tableEntity3.m21075a(new ColumnEntity("extra1", "BLOB"));
        tableEntity3.m21075a(new ColumnEntity("extra2", "BLOB"));
        tableEntity3.m21075a(new ColumnEntity("extra3", "BLOB"));
        TableEntity tableEntity4 = this.f5349d;
        tableEntity4.m21075a(new ColumnEntity("tag", "VARCHAR", true, true));
        tableEntity4.m21075a(new ColumnEntity(SocialConstants.PARAM_URL, "VARCHAR"));
        tableEntity4.m21075a(new ColumnEntity("folder", "VARCHAR"));
        tableEntity4.m21075a(new ColumnEntity("filePath", "VARCHAR"));
        tableEntity4.m21075a(new ColumnEntity("fileName", "VARCHAR"));
        tableEntity4.m21075a(new ColumnEntity("fraction", "VARCHAR"));
        tableEntity4.m21075a(new ColumnEntity("totalSize", "INTEGER"));
        tableEntity4.m21075a(new ColumnEntity("currentSize", "INTEGER"));
        tableEntity4.m21075a(new ColumnEntity("status", "INTEGER"));
        tableEntity4.m21075a(new ColumnEntity("priority", "INTEGER"));
        tableEntity4.m21075a(new ColumnEntity(Common.DATE, "INTEGER"));
        tableEntity4.m21075a(new ColumnEntity(SocialConstants.TYPE_REQUEST, "BLOB"));
        tableEntity4.m21075a(new ColumnEntity("extra1", "BLOB"));
        tableEntity4.m21075a(new ColumnEntity("extra2", "BLOB"));
        tableEntity4.m21075a(new ColumnEntity("extra3", "BLOB"));
    }
}
