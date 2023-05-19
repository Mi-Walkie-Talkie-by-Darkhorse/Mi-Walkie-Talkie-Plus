package com.ifengyu.intercom.p216ui.base;

import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.chad.library.adapter.base.BaseQuickAdapter;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.p216ui.widget.view.FixedEditText;
import com.ifengyu.library.utils.C4968d;
import com.ifengyu.library.utils.UIUtils;

/* renamed from: com.ifengyu.intercom.ui.base.o */
/* loaded from: classes2.dex */
public abstract class BaseSearchFragment extends BaseFragment {

    /* renamed from: A */
    protected View f15051A;

    /* renamed from: z */
    protected TextView f15052z;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSearchFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.base.o$a */
    /* loaded from: classes2.dex */
    public class C4455a implements FixedEditText.InterfaceC4948a {
        C4455a() {
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.FixedEditText.InterfaceC4948a
        /* renamed from: a */
        public void mo8844a() {
            if (BaseSearchFragment.this.mo9450l3().getText() == null || BaseSearchFragment.this.mo9451k3() == null) {
                return;
            }
            BaseSearchFragment.this.mo9448n3(BaseSearchFragment.this.mo9450l3().getText().toString().trim());
        }

        @Override // com.ifengyu.intercom.p216ui.widget.view.FixedEditText.InterfaceC4948a
        /* renamed from: b */
        public void mo8843b(boolean z) {
            if (!z || BaseSearchFragment.this.mo9449m3().getVisibility() == 0) {
                return;
            }
            BaseSearchFragment.this.mo9449m3().setVisibility(0);
            BaseSearchFragment.this.m10296p3();
            BaseSearchFragment.this.mo9451k3().m17034i0(BaseSearchFragment.this.f15051A);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseSearchFragment.java */
    /* renamed from: com.ifengyu.intercom.ui.base.o$b */
    /* loaded from: classes2.dex */
    public class C4456b extends RecyclerView.AbstractC0837p {
        C4456b() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AbstractC0837p
        public void onScrollStateChanged(@NonNull RecyclerView recyclerView, int i) {
            if (i == 1) {
                C4968d.m8692c(BaseSearchFragment.this.mo9450l3(), BaseSearchFragment.this.mo9452j3());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: p3 */
    public void m10296p3() {
        if (mo9451k3() == null) {
            mo9453i3();
        }
        if (this.f15052z == null) {
            mo9447q3();
        }
        if (this.f15051A == null) {
            m10295r3();
        }
        mo9449m3().setLayoutManager(new LinearLayoutManager(getContext()));
        mo9449m3().setAdapter(mo9451k3());
        mo9449m3().addOnScrollListener(new C4456b());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: s3 */
    public /* synthetic */ boolean m10293t3(TextView textView, int i, KeyEvent keyEvent) {
        if (i == 6) {
            m10298h3();
            return true;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: u3 */
    public /* synthetic */ void m10291v3(View view) {
        m10298h3();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: h3 */
    public void m10298h3() {
        if (mo9449m3().getVisibility() == 0) {
            C4968d.m8692c(mo9450l3(), mo9452j3());
            mo9449m3().setVisibility(8);
            mo9450l3().setText((CharSequence) null);
            mo9451k3().m17070D().clear();
        }
    }

    /* renamed from: i3 */
    protected abstract void mo9453i3();

    /* renamed from: j3 */
    protected abstract View mo9452j3();

    /* renamed from: k3 */
    protected abstract BaseQuickAdapter mo9451k3();

    /* renamed from: l3 */
    protected abstract FixedEditText mo9450l3();

    /* renamed from: m3 */
    protected abstract RecyclerView mo9449m3();

    /* renamed from: n3 */
    protected void mo9448n3(String str) {
        if (TextUtils.isEmpty(str)) {
            mo9449m3().setBackgroundColor(UIUtils.m8614d(R.color.transparent));
            mo9451k3().m17034i0(this.f15051A);
            mo9451k3().m17070D().clear();
            mo9451k3().notifyDataSetChanged();
            return;
        }
        mo9449m3().setBackgroundColor(UIUtils.m8614d(R.color.white));
        mo9451k3().m17034i0(this.f15052z);
        mo9446w3(str.toUpperCase());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qmuiteam.qmui.arch.QMUIFragment
    /* renamed from: o2 */
    public void mo8048o2() {
        m10298h3();
        super.mo8048o2();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: o3 */
    public void m10297o3() {
        mo9450l3().setListener(new C4455a());
        mo9450l3().setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.ifengyu.intercom.ui.base.h
            @Override // android.widget.TextView.OnEditorActionListener
            public final boolean onEditorAction(TextView textView, int i, KeyEvent keyEvent) {
                return BaseSearchFragment.this.m10293t3(textView, i, keyEvent);
            }
        });
    }

    @Override // com.qmuiteam.qmui.arch.QMUIFragment, androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        if (mo9450l3() != null) {
            mo9450l3().setListener(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: q3 */
    public void mo9447q3() {
        TextView textView = new TextView(getContext());
        this.f15052z = textView;
        textView.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
        this.f15052z.setTextColor(UIUtils.m8614d(R.color.black));
        this.f15052z.setGravity(1);
        this.f15052z.setPadding(0, UIUtils.m8616b(20.0f), 0, 0);
    }

    /* renamed from: r3 */
    protected void m10295r3() {
        View view = new View(getContext());
        this.f15051A = view;
        view.setLayoutParams(new RecyclerView.LayoutParams(-1, -1));
        this.f15051A.setBackgroundColor(UIUtils.m8614d(R.color.search_bg));
        this.f15051A.setOnClickListener(new View.OnClickListener() { // from class: com.ifengyu.intercom.ui.base.i
            @Override // android.view.View.OnClickListener
            public final void onClick(View view2) {
                BaseSearchFragment.this.m10291v3(view2);
            }
        });
    }

    /* renamed from: w3 */
    protected abstract void mo9446w3(String str);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: x3 */
    public void m10290x3(String str) {
        this.f15052z.setText(str);
    }
}
