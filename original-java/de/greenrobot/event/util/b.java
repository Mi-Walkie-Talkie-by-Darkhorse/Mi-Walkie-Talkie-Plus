package de.greenrobot.event.util;

import android.os.Bundle;

/* compiled from: ErrorDialogFragmentFactory */
public abstract class b<T> {
    protected final a a;

    /* access modifiers changed from: protected */
    public abstract T a(d dVar, Bundle bundle);

    /* access modifiers changed from: protected */
    public T a(d dVar, boolean z, Bundle bundle) {
        Bundle bundle2;
        if (dVar.a()) {
            return null;
        }
        if (bundle != null) {
            bundle2 = (Bundle) bundle.clone();
        } else {
            bundle2 = new Bundle();
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.title")) {
            bundle2.putString("de.greenrobot.eventbus.errordialog.title", b(dVar, bundle2));
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.message")) {
            bundle2.putString("de.greenrobot.eventbus.errordialog.message", c(dVar, bundle2));
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.finish_after_dialog")) {
            bundle2.putBoolean("de.greenrobot.eventbus.errordialog.finish_after_dialog", z);
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.event_type_on_close") && this.a.i != null) {
            bundle2.putSerializable("de.greenrobot.eventbus.errordialog.event_type_on_close", this.a.i);
        }
        if (!bundle2.containsKey("de.greenrobot.eventbus.errordialog.icon_id") && this.a.h != 0) {
            bundle2.putInt("de.greenrobot.eventbus.errordialog.icon_id", this.a.h);
        }
        return a(dVar, bundle2);
    }

    /* access modifiers changed from: protected */
    public String b(d dVar, Bundle bundle) {
        return this.a.a.getString(this.a.b);
    }

    /* access modifiers changed from: protected */
    public String c(d dVar, Bundle bundle) {
        return this.a.a.getString(this.a.a(dVar.a));
    }
}
