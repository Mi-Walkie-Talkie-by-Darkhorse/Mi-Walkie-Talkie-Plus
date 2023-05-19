package p287d.p292c.p296b.p302c.p303a;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.util.Log;

/* renamed from: d.c.b.c.a.a */
/* loaded from: classes3.dex */
public class DataBaseOperation {

    /* renamed from: a */
    private Context f23713a;

    public DataBaseOperation(Context context) {
        this.f23713a = context;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0058  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x006d  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String m827a(int i, String str) {
        Uri parse;
        Uri uri;
        Cursor query;
        if (i == 0) {
            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAID");
        } else if (i == 1) {
            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/VAID_" + str);
        } else if (i == 2) {
            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/AAID_" + str);
        } else if (i == 4) {
            parse = Uri.parse("content://com.vivo.vms.IdProvider/IdentifierId/OAIDSTATUS");
        } else {
            uri = null;
            query = this.f23713a.getContentResolver().query(uri, null, null, null, null);
            if (query == null) {
                r0 = query.moveToNext() ? query.getString(query.getColumnIndex("value")) : null;
                query.close();
            } else {
                Log.d("VMS_IDLG_SDK_DB", "return cursor is null,return");
            }
            return r0;
        }
        uri = parse;
        query = this.f23713a.getContentResolver().query(uri, null, null, null, null);
        if (query == null) {
        }
        return r0;
    }
}
