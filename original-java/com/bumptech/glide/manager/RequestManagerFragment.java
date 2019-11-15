package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.Activity;
import android.app.Fragment;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.annotation.Nullable;
import android.util.Log;
import com.bumptech.glide.c;
import com.bumptech.glide.g;
import java.util.HashSet;

public class RequestManagerFragment extends Fragment {
    private final a a;
    private final l b;
    private final HashSet<RequestManagerFragment> c;
    @Nullable
    private g d;
    @Nullable
    private RequestManagerFragment e;
    @Nullable
    private Fragment f;

    private class a implements l {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + RequestManagerFragment.this + "}";
        }
    }

    public RequestManagerFragment() {
        this(new a());
    }

    @SuppressLint({"ValidFragment"})
    RequestManagerFragment(a aVar) {
        this.b = new a();
        this.c = new HashSet<>();
        this.a = aVar;
    }

    public void a(g gVar) {
        this.d = gVar;
    }

    /* access modifiers changed from: 0000 */
    public a a() {
        return this.a;
    }

    @Nullable
    public g b() {
        return this.d;
    }

    public l c() {
        return this.b;
    }

    private void a(RequestManagerFragment requestManagerFragment) {
        this.c.add(requestManagerFragment);
    }

    private void b(RequestManagerFragment requestManagerFragment) {
        this.c.remove(requestManagerFragment);
    }

    /* access modifiers changed from: 0000 */
    public void a(Fragment fragment) {
        this.f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment.getActivity());
        }
    }

    @TargetApi(17)
    private Fragment d() {
        Fragment fragment;
        if (VERSION.SDK_INT >= 17) {
            fragment = getParentFragment();
        } else {
            fragment = null;
        }
        return fragment != null ? fragment : this.f;
    }

    private void a(Activity activity) {
        e();
        this.e = c.a((Context) activity).g().a(activity.getFragmentManager(), (Fragment) null);
        if (this.e != this) {
            this.e.a(this);
        }
    }

    private void e() {
        if (this.e != null) {
            this.e.b(this);
            this.e = null;
        }
    }

    public void onAttach(Activity activity) {
        super.onAttach(activity);
        try {
            a(activity);
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("RMFragment", 5)) {
                Log.w("RMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    public void onDetach() {
        super.onDetach();
        e();
    }

    public void onStart() {
        super.onStart();
        this.a.a();
    }

    public void onStop() {
        super.onStop();
        this.a.b();
    }

    public void onDestroy() {
        super.onDestroy();
        this.a.c();
        e();
    }

    public String toString() {
        return super.toString() + "{parent=" + d() + "}";
    }
}
