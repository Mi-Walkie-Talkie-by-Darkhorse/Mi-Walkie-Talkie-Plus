package com.ifengyu.intercom.i;

import com.ifengyu.intercom.MiTalkiApp;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.lite.c.b.e;
import com.qmuiteam.qmui.widget.dialog.QMUIDialogAction;
import com.qmuiteam.qmui.widget.dialog.b;

/* compiled from: GlobalDialogUtil.java */
/* loaded from: classes2.dex */
public class w {
    private static w d;

    /* renamed from: a  reason: collision with root package name */
    private b f5330a;

    /* renamed from: b  reason: collision with root package name */
    private b f5331b;

    /* renamed from: c  reason: collision with root package name */
    private b f5332c;

    private w() {
    }

    public static w b() {
        if (d == null) {
            d = new w();
        }
        return d;
    }

    public void a() {
        try {
            if (MiTalkiApp.b().f() != null) {
                if (this.f5330a != null) {
                    this.f5330a.dismiss();
                    this.f5330a = null;
                }
                e eVar = new e(MiTalkiApp.b().f());
                eVar.d(R.string.check_device_vox_is_opened);
                eVar.a(0, R.string.user_guide_i_know, 0, new QMUIDialogAction.b() { // from class: com.ifengyu.intercom.i.a
                    @Override // com.qmuiteam.qmui.widget.dialog.QMUIDialogAction.b
                    public final void a(b bVar, int i) {
                        w.this.a(bVar, i);
                    }
                });
                b a2 = eVar.a(R.style.DialogTheme2);
                this.f5330a = a2;
                a2.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void b(QMUIDialogAction.b bVar) {
        try {
            if (MiTalkiApp.b().f() != null) {
                if (this.f5331b != null) {
                    this.f5331b.dismiss();
                    this.f5331b = null;
                }
                e eVar = new e(MiTalkiApp.b().f());
                eVar.c(R.string.login_time_out);
                e eVar2 = eVar;
                eVar2.d(R.string.account_login_info_had_time_out);
                eVar2.a(false);
                e eVar3 = eVar2;
                eVar3.b(false);
                e eVar4 = eVar3;
                eVar4.a(0, R.string.common_ok, 1, bVar);
                b a2 = eVar4.a(R.style.DialogTheme2);
                this.f5331b = a2;
                a2.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public /* synthetic */ void a(b bVar, int i) {
        bVar.dismiss();
        this.f5330a = null;
    }

    public void a(QMUIDialogAction.b bVar) {
        try {
            if (MiTalkiApp.b().f() != null) {
                if (this.f5332c != null) {
                    this.f5332c.dismiss();
                    this.f5332c = null;
                }
                e eVar = new e(MiTalkiApp.b().f());
                eVar.c(R.string.offline_notification);
                e eVar2 = eVar;
                eVar2.d(R.string.account_login_on_another_phone);
                eVar2.a(false);
                e eVar3 = eVar2;
                eVar3.b(false);
                e eVar4 = eVar3;
                eVar4.a(0, R.string.common_ok, 1, bVar);
                b a2 = eVar4.a(R.style.DialogTheme2);
                this.f5332c = a2;
                a2.show();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
