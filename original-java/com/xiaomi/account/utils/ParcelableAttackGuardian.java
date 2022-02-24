package com.xiaomi.account.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.BadParcelableException;
import android.util.Log;

/* loaded from: classes2.dex */
public class ParcelableAttackGuardian {
    private static final String TAG = "ParcelableAttackGuardian";

    public boolean safeCheck(Activity activity) {
        if (activity == null || activity.getIntent() == null) {
            return true;
        }
        try {
            unparcelIntent(new Intent(activity.getIntent()));
            return true;
        } catch (BadParcelableException unused) {
            String str = TAG;
            Log.w(str, "fail checking ParcelableAttack for Activity " + activity.getClass().getName());
            return false;
        } catch (RuntimeException e) {
            if (!(e.getCause() instanceof ClassNotFoundException)) {
                return true;
            }
            String str2 = TAG;
            Log.w(str2, "fail checking SerializableAttack for Activity " + activity.getClass().getName());
            return false;
        }
    }

    void unparcelIntent(Intent intent) throws BadParcelableException {
        intent.getStringExtra("");
    }
}
