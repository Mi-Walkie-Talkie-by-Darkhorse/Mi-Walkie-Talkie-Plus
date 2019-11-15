package com.bumptech.glide.manager;

import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Application;
import android.app.FragmentManager;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.util.ArrayMap;
import android.util.Log;
import android.view.View;
import com.bumptech.glide.c;
import com.bumptech.glide.g;
import com.bumptech.glide.util.h;
import com.bumptech.glide.util.i;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;

/* compiled from: RequestManagerRetriever */
public class k implements Callback {
    private static final a i = new a() {
        public g a(c cVar, h hVar, l lVar) {
            return new g(cVar, hVar, lVar);
        }
    };
    final Map<FragmentManager, RequestManagerFragment> a = new HashMap();
    final Map<android.support.v4.app.FragmentManager, SupportRequestManagerFragment> b = new HashMap();
    private volatile g c;
    private final Handler d;
    private final a e;
    private final ArrayMap<View, Fragment> f = new ArrayMap<>();
    private final ArrayMap<View, android.app.Fragment> g = new ArrayMap<>();
    private final Bundle h = new Bundle();

    /* compiled from: RequestManagerRetriever */
    public interface a {
        g a(c cVar, h hVar, l lVar);
    }

    public k(@Nullable a aVar) {
        if (aVar == null) {
            aVar = i;
        }
        this.e = aVar;
        this.d = new Handler(Looper.getMainLooper(), this);
    }

    private g b(Context context) {
        if (this.c == null) {
            synchronized (this) {
                if (this.c == null) {
                    this.c = this.e.a(c.a(context), new b(), new g());
                }
            }
        }
        return this.c;
    }

    public g a(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("You cannot start a load on a null Context");
        }
        if (i.b() && !(context instanceof Application)) {
            if (context instanceof FragmentActivity) {
                return a((FragmentActivity) context);
            }
            if (context instanceof Activity) {
                return a((Activity) context);
            }
            if (context instanceof ContextWrapper) {
                return a(((ContextWrapper) context).getBaseContext());
            }
        }
        return b(context);
    }

    public g a(FragmentActivity fragmentActivity) {
        if (i.c()) {
            return a(fragmentActivity.getApplicationContext());
        }
        b((Activity) fragmentActivity);
        return a((Context) fragmentActivity, fragmentActivity.getSupportFragmentManager(), (Fragment) null);
    }

    public g a(Fragment fragment) {
        h.a(fragment.getActivity(), "You cannot start a load on a fragment before it is attached or after it is destroyed");
        if (i.c()) {
            return a(fragment.getActivity().getApplicationContext());
        }
        return a((Context) fragment.getActivity(), fragment.getChildFragmentManager(), fragment);
    }

    public g a(Activity activity) {
        if (i.c()) {
            return a(activity.getApplicationContext());
        }
        b(activity);
        return a((Context) activity, activity.getFragmentManager(), (android.app.Fragment) null);
    }

    public g a(View view) {
        if (i.c()) {
            return a(view.getContext().getApplicationContext());
        }
        h.a(view);
        h.a(view.getContext(), "Unable to obtain a request manager for a view without a Context");
        Activity c2 = c(view.getContext());
        if (c2 == null) {
            return a(view.getContext().getApplicationContext());
        }
        if (c2 instanceof FragmentActivity) {
            Fragment a2 = a(view, (FragmentActivity) c2);
            return a2 != null ? a(a2) : a(c2);
        }
        android.app.Fragment a3 = a(view, c2);
        if (a3 == null) {
            return a(c2);
        }
        return a(a3);
    }

    private static void a(@Nullable Collection<Fragment> collection, Map<View, Fragment> map) {
        if (collection != null) {
            for (Fragment fragment : collection) {
                if (!(fragment == null || fragment.getView() == null)) {
                    map.put(fragment.getView(), fragment);
                    a((Collection<Fragment>) fragment.getChildFragmentManager().getFragments(), map);
                }
            }
        }
    }

    @Nullable
    private Fragment a(View view, FragmentActivity fragmentActivity) {
        this.f.clear();
        a((Collection<Fragment>) fragmentActivity.getSupportFragmentManager().getFragments(), (Map<View, Fragment>) this.f);
        Fragment fragment = null;
        View findViewById = fragmentActivity.findViewById(16908290);
        while (!view.equals(findViewById)) {
            fragment = (Fragment) this.f.get(view);
            if (fragment != null || !(view.getParent() instanceof View)) {
                break;
            }
            view = (View) view.getParent();
        }
        this.f.clear();
        return fragment;
    }

    @Nullable
    private android.app.Fragment a(View view, Activity activity) {
        this.g.clear();
        a(activity.getFragmentManager(), this.g);
        android.app.Fragment fragment = null;
        View findViewById = activity.findViewById(16908290);
        while (!view.equals(findViewById)) {
            fragment = (android.app.Fragment) this.g.get(view);
            if (fragment != null || !(view.getParent() instanceof View)) {
                break;
            }
            view = (View) view.getParent();
        }
        this.g.clear();
        return fragment;
    }

    @TargetApi(26)
    private void a(FragmentManager fragmentManager, ArrayMap<View, android.app.Fragment> arrayMap) {
        if (VERSION.SDK_INT >= 26) {
            for (android.app.Fragment fragment : fragmentManager.getFragments()) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    a(fragment.getChildFragmentManager(), arrayMap);
                }
            }
            return;
        }
        b(fragmentManager, arrayMap);
    }

    private void b(FragmentManager fragmentManager, ArrayMap<View, android.app.Fragment> arrayMap) {
        int i2 = 0;
        while (true) {
            int i3 = i2 + 1;
            this.h.putInt("key", i2);
            android.app.Fragment fragment = null;
            try {
                fragment = fragmentManager.getFragment(this.h, "key");
            } catch (Exception e2) {
            }
            if (fragment != null) {
                if (fragment.getView() != null) {
                    arrayMap.put(fragment.getView(), fragment);
                    if (VERSION.SDK_INT >= 17) {
                        a(fragment.getChildFragmentManager(), arrayMap);
                    }
                }
                i2 = i3;
            } else {
                return;
            }
        }
    }

    private Activity c(Context context) {
        if (context instanceof Activity) {
            return (Activity) context;
        }
        if (context instanceof ContextWrapper) {
            return c(((ContextWrapper) context).getBaseContext());
        }
        return null;
    }

    @TargetApi(17)
    private static void b(Activity activity) {
        if (VERSION.SDK_INT >= 17 && activity.isDestroyed()) {
            throw new IllegalArgumentException("You cannot start a load for a destroyed activity");
        }
    }

    @TargetApi(17)
    public g a(android.app.Fragment fragment) {
        if (fragment.getActivity() == null) {
            throw new IllegalArgumentException("You cannot start a load on a fragment before it is attached");
        } else if (i.c() || VERSION.SDK_INT < 17) {
            return a(fragment.getActivity().getApplicationContext());
        } else {
            return a((Context) fragment.getActivity(), fragment.getChildFragmentManager(), fragment);
        }
    }

    /* access modifiers changed from: 0000 */
    @TargetApi(17)
    public RequestManagerFragment a(FragmentManager fragmentManager, android.app.Fragment fragment) {
        RequestManagerFragment requestManagerFragment = (RequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (requestManagerFragment != null) {
            return requestManagerFragment;
        }
        RequestManagerFragment requestManagerFragment2 = (RequestManagerFragment) this.a.get(fragmentManager);
        if (requestManagerFragment2 != null) {
            return requestManagerFragment2;
        }
        RequestManagerFragment requestManagerFragment3 = new RequestManagerFragment();
        requestManagerFragment3.a(fragment);
        this.a.put(fragmentManager, requestManagerFragment3);
        fragmentManager.beginTransaction().add(requestManagerFragment3, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.d.obtainMessage(1, fragmentManager).sendToTarget();
        return requestManagerFragment3;
    }

    private g a(Context context, FragmentManager fragmentManager, android.app.Fragment fragment) {
        RequestManagerFragment a2 = a(fragmentManager, fragment);
        g b2 = a2.b();
        if (b2 != null) {
            return b2;
        }
        g a3 = this.e.a(c.a(context), a2.a(), a2.c());
        a2.a(a3);
        return a3;
    }

    /* access modifiers changed from: 0000 */
    public SupportRequestManagerFragment a(android.support.v4.app.FragmentManager fragmentManager, Fragment fragment) {
        SupportRequestManagerFragment supportRequestManagerFragment = (SupportRequestManagerFragment) fragmentManager.findFragmentByTag("com.bumptech.glide.manager");
        if (supportRequestManagerFragment != null) {
            return supportRequestManagerFragment;
        }
        SupportRequestManagerFragment supportRequestManagerFragment2 = (SupportRequestManagerFragment) this.b.get(fragmentManager);
        if (supportRequestManagerFragment2 != null) {
            return supportRequestManagerFragment2;
        }
        SupportRequestManagerFragment supportRequestManagerFragment3 = new SupportRequestManagerFragment();
        supportRequestManagerFragment3.a(fragment);
        this.b.put(fragmentManager, supportRequestManagerFragment3);
        fragmentManager.beginTransaction().add((Fragment) supportRequestManagerFragment3, "com.bumptech.glide.manager").commitAllowingStateLoss();
        this.d.obtainMessage(2, fragmentManager).sendToTarget();
        return supportRequestManagerFragment3;
    }

    private g a(Context context, android.support.v4.app.FragmentManager fragmentManager, Fragment fragment) {
        SupportRequestManagerFragment a2 = a(fragmentManager, fragment);
        g b2 = a2.b();
        if (b2 != null) {
            return b2;
        }
        g a3 = this.e.a(c.a(context), a2.a(), a2.c());
        a2.a(a3);
        return a3;
    }

    public boolean handleMessage(Message message) {
        Object remove;
        Object obj = null;
        boolean z = true;
        switch (message.what) {
            case 1:
                obj = (FragmentManager) message.obj;
                remove = this.a.remove(obj);
                break;
            case 2:
                obj = (android.support.v4.app.FragmentManager) message.obj;
                remove = this.b.remove(obj);
                break;
            default:
                z = false;
                remove = null;
                break;
        }
        if (z && remove == null && Log.isLoggable("RMRetriever", 5)) {
            Log.w("RMRetriever", "Failed to remove expected request manager fragment, manager: " + obj);
        }
        return z;
    }
}
