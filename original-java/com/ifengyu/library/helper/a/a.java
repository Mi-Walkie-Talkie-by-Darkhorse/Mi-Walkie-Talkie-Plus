package com.ifengyu.library.helper.a;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import java.util.List;

/* compiled from: BackHandlerHelper */
public class a {
    public static boolean a(FragmentManager fragmentManager) {
        List fragments = fragmentManager.getFragments();
        if (fragments == null) {
            return false;
        }
        for (int size = fragments.size() - 1; size >= 0; size--) {
            if (a((Fragment) fragments.get(size))) {
                return true;
            }
        }
        if (fragmentManager.getBackStackEntryCount() <= 0) {
            return false;
        }
        fragmentManager.popBackStack();
        return true;
    }

    public static boolean a(FragmentActivity fragmentActivity) {
        return a(fragmentActivity.getSupportFragmentManager());
    }

    public static boolean a(Fragment fragment) {
        return fragment != null && fragment.isVisible() && fragment.getUserVisibleHint() && (fragment instanceof b) && ((b) fragment).a();
    }
}
