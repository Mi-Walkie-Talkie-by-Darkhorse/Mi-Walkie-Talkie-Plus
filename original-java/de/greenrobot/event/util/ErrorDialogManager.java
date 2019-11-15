package de.greenrobot.event.util;

import android.annotation.TargetApi;
import android.app.DialogFragment;
import android.app.Fragment;
import android.app.FragmentManager;
import android.os.Bundle;
import android.util.Log;
import de.greenrobot.event.c;

public class ErrorDialogManager {
    public static b<?> a;

    @TargetApi(11)
    public static class HoneycombManagerFragment extends Fragment {
        protected boolean a;
        protected Bundle b;
        private c c;
        private Object d;

        public void onResume() {
            super.onResume();
            this.c = ErrorDialogManager.a.a.a();
            this.c.a((Object) this);
        }

        public void onPause() {
            this.c.d(this);
            super.onPause();
        }

        public void onEventMainThread(d dVar) {
            if (ErrorDialogManager.b(this.d, dVar)) {
                ErrorDialogManager.a(dVar);
                FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                DialogFragment dialogFragment = (DialogFragment) fragmentManager.findFragmentByTag("de.greenrobot.eventbus.error_dialog");
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                DialogFragment dialogFragment2 = (DialogFragment) ErrorDialogManager.a.a(dVar, this.a, this.b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, "de.greenrobot.eventbus.error_dialog");
                }
            }
        }
    }

    public static class SupportManagerFragment extends android.support.v4.app.Fragment {
        protected boolean a;
        protected Bundle b;
        private c c;
        private boolean d;
        private Object e;

        public void onCreate(Bundle bundle) {
            super.onCreate(bundle);
            this.c = ErrorDialogManager.a.a.a();
            this.c.a((Object) this);
            this.d = true;
        }

        public void onResume() {
            super.onResume();
            if (this.d) {
                this.d = false;
                return;
            }
            this.c = ErrorDialogManager.a.a.a();
            this.c.a((Object) this);
        }

        public void onPause() {
            this.c.d(this);
            super.onPause();
        }

        public void onEventMainThread(d dVar) {
            if (ErrorDialogManager.b(this.e, dVar)) {
                ErrorDialogManager.a(dVar);
                android.support.v4.app.FragmentManager fragmentManager = getFragmentManager();
                fragmentManager.executePendingTransactions();
                android.support.v4.app.DialogFragment dialogFragment = (android.support.v4.app.DialogFragment) fragmentManager.findFragmentByTag("de.greenrobot.eventbus.error_dialog");
                if (dialogFragment != null) {
                    dialogFragment.dismiss();
                }
                android.support.v4.app.DialogFragment dialogFragment2 = (android.support.v4.app.DialogFragment) ErrorDialogManager.a.a(dVar, this.a, this.b);
                if (dialogFragment2 != null) {
                    dialogFragment2.show(fragmentManager, "de.greenrobot.eventbus.error_dialog");
                }
            }
        }
    }

    protected static void a(d dVar) {
        if (a.a.f) {
            String str = a.a.g;
            if (str == null) {
                str = c.a;
            }
            Log.i(str, "Error dialog manager received exception", dVar.a);
        }
    }

    /* access modifiers changed from: private */
    public static boolean b(Object obj, d dVar) {
        if (dVar != null) {
            Object b = dVar.b();
            if (b != null && !b.equals(obj)) {
                return false;
            }
        }
        return true;
    }
}
