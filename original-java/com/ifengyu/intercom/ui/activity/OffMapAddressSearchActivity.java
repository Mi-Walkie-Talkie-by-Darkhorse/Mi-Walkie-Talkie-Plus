package com.ifengyu.intercom.ui.activity;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.i.a0;
import com.ifengyu.intercom.i.d0;
import com.ifengyu.intercom.ui.adapter.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;

/* loaded from: classes2.dex */
public class OffMapAddressSearchActivity extends BaseActivity implements View.OnClickListener {
    private EditText q;
    private ArrayList<HashMap<String, String>> r;
    private RecyclerView s;
    private e t;
    private View u;
    private InputMethodManager v;
    private com.ifengyu.intercom.network.d.d w = new c();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class a implements View.OnTouchListener {
        a() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return OffMapAddressSearchActivity.this.v.hideSoftInputFromWindow(view.getWindowToken(), 0);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class b implements TextWatcher {

        /* loaded from: classes2.dex */
        class a implements com.ifengyu.intercom.network.d.a {
            a() {
            }

            @Override // com.ifengyu.intercom.network.d.a
            public boolean a(String str) {
                return com.ifengyu.intercom.network.c.a(str, OffMapAddressSearchActivity.this.r);
            }
        }

        b() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
            String trim = OffMapAddressSearchActivity.this.q.getText().toString().trim();
            if (trim.length() == 0) {
                OffMapAddressSearchActivity.this.u.setVisibility(4);
            } else {
                OffMapAddressSearchActivity.this.u.setVisibility(0);
            }
            OffMapAddressSearchActivity.this.r.clear();
            if (trim.length() == 0) {
                OffMapAddressSearchActivity.this.t.notifyDataSetChanged();
                return;
            }
            try {
                HashMap hashMap = new HashMap();
                hashMap.put("action", "locationSug");
                hashMap.put(AuthorizeActivityBase.KEY_USERID, d0.N());
                hashMap.put("query", URLEncoder.encode(trim, "utf-8"));
                String e = d0.e();
                if (e != null && e.length() > 0) {
                    hashMap.put("city", URLEncoder.encode(e, "utf-8"));
                }
                long currentTimeMillis = System.currentTimeMillis();
                hashMap.put("time", String.valueOf(currentTimeMillis));
                hashMap.put("sign", a0.b(d0.O() + currentTimeMillis));
                new com.ifengyu.intercom.network.d.c("https://api.ifengyu.com", hashMap).a(new a(), OffMapAddressSearchActivity.this.w);
            } catch (UnsupportedEncodingException e2) {
                e2.printStackTrace();
            }
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        }
    }

    /* loaded from: classes2.dex */
    class c extends com.ifengyu.intercom.network.d.d {
        c() {
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void a() {
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void a(boolean z) {
            if (OffMapAddressSearchActivity.this.q.getText().toString().trim().length() == 0) {
                OffMapAddressSearchActivity.this.r.clear();
                OffMapAddressSearchActivity.this.t.notifyDataSetChanged();
            }
        }

        @Override // com.ifengyu.intercom.network.d.d
        public void c() {
            OffMapAddressSearchActivity.this.t.notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            OffMapAddressSearchActivity.this.finish();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class e extends RecyclerView.g<a> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2.dex */
        public class a extends RecyclerView.y implements View.OnClickListener {

            /* renamed from: a  reason: collision with root package name */
            private TextView f6120a;

            /* renamed from: b  reason: collision with root package name */
            private TextView f6121b;

            public a(View view) {
                super(view);
                this.f6120a = (TextView) view.findViewById(R.id.address_name);
                this.f6121b = (TextView) view.findViewById(R.id.address_district);
                view.setOnClickListener(this);
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("locationArr", new String[]{(String) ((HashMap) OffMapAddressSearchActivity.this.r.get(getAdapterPosition())).get(com.umeng.analytics.pro.c.C), (String) ((HashMap) OffMapAddressSearchActivity.this.r.get(getAdapterPosition())).get(com.umeng.analytics.pro.c.D)});
                OffMapAddressSearchActivity.this.setResult(-1, intent);
                OffMapAddressSearchActivity.this.finish();
            }
        }

        e() {
        }

        /* renamed from: a */
        public void onBindViewHolder(a aVar, int i) {
            aVar.f6120a.setText((CharSequence) ((HashMap) OffMapAddressSearchActivity.this.r.get(i)).get("name"));
            aVar.f6121b.setText((CharSequence) ((HashMap) OffMapAddressSearchActivity.this.r.get(i)).get("district"));
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public int getItemCount() {
            return OffMapAddressSearchActivity.this.r.size();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.g
        public a onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.offmap_address_item, viewGroup, false));
        }
    }

    private void w() {
        r();
        RecyclerView recyclerView = (RecyclerView) findViewById(R.id.address_rv);
        this.s = recyclerView;
        recyclerView.setLayoutManager(new LinearLayoutManager(this));
        e eVar = new e();
        this.t = eVar;
        this.s.setAdapter(eVar);
        this.s.setItemAnimator(new j());
        this.q = (EditText) findViewById(R.id.search_et);
        this.v = (InputMethodManager) getSystemService("input_method");
        this.s.setOnTouchListener(new a());
        View findViewById = findViewById(R.id.delete_text_btn);
        this.u = findViewById;
        findViewById.setOnClickListener(this);
        if (this.q.getText().toString().trim().length() == 0) {
            this.u.setVisibility(4);
        } else {
            this.u.setVisibility(0);
        }
        this.q.addTextChangedListener(new b());
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view.getId() == R.id.delete_text_btn) {
            this.q.setText("");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_off_map_address_search);
        w();
        this.r = new ArrayList<>();
    }

    @Override // com.ifengyu.intercom.ui.baseui.BaseActivity
    protected void r() {
        ImageView imageView = (ImageView) a(R.id.title_bar_left);
        this.f6372c = imageView;
        imageView.setOnClickListener(new d());
    }
}
