package com.bumptech.glide.manager;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.Log;
import com.bumptech.glide.c;
import com.bumptech.glide.g;
import java.util.HashSet;

public class SupportRequestManagerFragment extends Fragment {
    private final a a;
    private final l b;
    private final HashSet<SupportRequestManagerFragment> c;
    @Nullable
    private SupportRequestManagerFragment d;
    @Nullable
    private g e;
    @Nullable
    private Fragment f;

    private class a implements l {
        a() {
        }

        public String toString() {
            return super.toString() + "{fragment=" + SupportRequestManagerFragment.this + "}";
        }
    }

    public SupportRequestManagerFragment() {
        this(new a());
    }

    @SuppressLint({"ValidFragment"})
    public SupportRequestManagerFragment(a aVar) {
        this.b = new a();
        this.c = new HashSet<>();
        this.a = aVar;
    }

    public void a(g gVar) {
        this.e = gVar;
    }

    /* access modifiers changed from: 0000 */
    public a a() {
        return this.a;
    }

    @Nullable
    public g b() {
        return this.e;
    }

    public l c() {
        return this.b;
    }

    private void a(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.c.add(supportRequestManagerFragment);
    }

    private void b(SupportRequestManagerFragment supportRequestManagerFragment) {
        this.c.remove(supportRequestManagerFragment);
    }

    /* access modifiers changed from: 0000 */
    public void a(Fragment fragment) {
        this.f = fragment;
        if (fragment != null && fragment.getActivity() != null) {
            a(fragment.getActivity());
        }
    }

    private Fragment d() {
        Fragment parentFragment = getParentFragment();
        return parentFragment != null ? parentFragment : this.f;
    }

    private void a(FragmentActivity fragmentActivity) {
        e();
        this.d = c.a((Context) fragmentActivity).g().a(fragmentActivity.getSupportFragmentManager(), (Fragment) null);
        if (this.d != this) {
            this.d.a(this);
        }
    }

    private void e() {
        if (this.d != null) {
            this.d.b(this);
            this.d = null;
        }
    }

    public void onAttach(Context context) {
        super.onAttach(context);
        try {
            a(getActivity());
        } catch (IllegalStateException e2) {
            if (Log.isLoggable("SupportRMFragment", 5)) {
                Log.w("SupportRMFragment", "Unable to register fragment with root", e2);
            }
        }
    }

    public void onDetach() {
        super.onDetach();
        this.f = null;
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
