package p287d.p292c.p296b.p302c.p303a;

import android.database.ContentObserver;
import android.util.Log;

/* renamed from: d.c.b.c.a.c */
/* loaded from: classes3.dex */
public class IdentifierIdObserver extends ContentObserver {

    /* renamed from: a */
    private String f23726a;

    /* renamed from: b */
    private int f23727b;

    /* renamed from: c */
    private IdentifierIdClient f23728c;

    public IdentifierIdObserver(IdentifierIdClient identifierIdClient, int i, String str) {
        super(null);
        this.f23728c = identifierIdClient;
        this.f23727b = i;
        this.f23726a = str;
    }

    @Override // android.database.ContentObserver
    public void onChange(boolean z) {
        IdentifierIdClient identifierIdClient = this.f23728c;
        if (identifierIdClient != null) {
            identifierIdClient.m824c(this.f23727b, this.f23726a);
        } else {
            Log.e("VMS_IDLG_SDK_Observer", "mIdentifierIdClient is null");
        }
    }
}
