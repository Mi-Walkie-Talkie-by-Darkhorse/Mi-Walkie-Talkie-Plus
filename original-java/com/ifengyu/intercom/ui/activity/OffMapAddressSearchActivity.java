package com.ifengyu.intercom.ui.activity;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnTouchListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.amap.api.services.district.DistrictSearchQuery;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.ifengyu.intercom.R;
import com.ifengyu.intercom.b.t;
import com.ifengyu.intercom.b.w;
import com.ifengyu.intercom.network.a.c;
import com.ifengyu.intercom.network.a.d;
import com.ifengyu.intercom.ui.adapter.j;
import com.ifengyu.intercom.ui.baseui.BaseActivity;
import com.tencent.tauth.AuthActivity;
import com.xiaomi.account.openauth.AuthorizeActivityBase;
import com.xiaomi.mistatistic.sdk.MiStatInterface;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.HashMap;
import org.jboss.netty.handler.codec.rtsp.RtspHeaders.Values;

public class OffMapAddressSearchActivity extends BaseActivity implements OnClickListener {
    /* access modifiers changed from: private */
    public EditText a;
    /* access modifiers changed from: private */
    public ArrayList<HashMap<String, String>> b;
    private RecyclerView c;
    /* access modifiers changed from: private */
    public a d;
    /* access modifiers changed from: private */
    public View q;
    /* access modifiers changed from: private */
    public InputMethodManager r;
    /* access modifiers changed from: private */
    public d s = new d() {
        public void a() {
        }

        public void b() {
            OffMapAddressSearchActivity.this.d.notifyDataSetChanged();
        }

        public void a(boolean z) {
            if (OffMapAddressSearchActivity.this.a.getText().toString().trim().length() == 0) {
                OffMapAddressSearchActivity.this.b.clear();
                OffMapAddressSearchActivity.this.d.notifyDataSetChanged();
            }
        }
    };

    class a extends Adapter<C0029a> {

        /* renamed from: com.ifengyu.intercom.ui.activity.OffMapAddressSearchActivity$a$a reason: collision with other inner class name */
        class C0029a extends ViewHolder implements OnClickListener {
            /* access modifiers changed from: private */
            public TextView b;
            /* access modifiers changed from: private */
            public TextView c;

            public C0029a(View view) {
                super(view);
                this.b = (TextView) view.findViewById(R.id.address_name);
                this.c = (TextView) view.findViewById(R.id.address_district);
                view.setOnClickListener(this);
            }

            public void onClick(View view) {
                Intent intent = new Intent();
                intent.putExtra("locationArr", new String[]{(String) ((HashMap) OffMapAddressSearchActivity.this.b.get(getAdapterPosition())).get("lat"), (String) ((HashMap) OffMapAddressSearchActivity.this.b.get(getAdapterPosition())).get("lng")});
                OffMapAddressSearchActivity.this.setResult(-1, intent);
                OffMapAddressSearchActivity.this.finish();
            }
        }

        a() {
        }

        /* renamed from: a */
        public C0029a onCreateViewHolder(ViewGroup viewGroup, int i) {
            return new C0029a(LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.offmap_address_item, viewGroup, false));
        }

        /* renamed from: a */
        public void onBindViewHolder(C0029a aVar, int i) {
            aVar.b.setText((CharSequence) ((HashMap) OffMapAddressSearchActivity.this.b.get(i)).get(HttpPostBodyUtil.NAME));
            aVar.c.setText((CharSequence) ((HashMap) OffMapAddressSearchActivity.this.b.get(i)).get(DistrictSearchQuery.KEYWORDS_DISTRICT));
        }

        public int getItemCount() {
            return OffMapAddressSearchActivity.this.b.size();
        }
    }

    /* access modifiers changed from: protected */
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView((int) R.layout.activity_off_map_address_search);
        c();
        this.b = new ArrayList<>();
    }

    /* access modifiers changed from: protected */
    public void onResume() {
        super.onResume();
        MiStatInterface.recordPageStart((Activity) this, this.e);
    }

    /* access modifiers changed from: protected */
    public void onPause() {
        super.onPause();
        MiStatInterface.recordPageEnd();
    }

    public void onClick(View view) {
        switch (view.getId()) {
            case R.id.delete_text_btn /*2131755259*/:
                this.a.setText("");
                return;
            default:
                return;
        }
    }

    private void c() {
        c_();
        this.c = (RecyclerView) findViewById(R.id.address_rv);
        this.c.setLayoutManager(new LinearLayoutManager(this));
        this.d = new a();
        this.c.setAdapter(this.d);
        this.c.setItemAnimator(new j());
        this.a = (EditText) findViewById(R.id.search_et);
        this.r = (InputMethodManager) getSystemService("input_method");
        this.c.setOnTouchListener(new OnTouchListener() {
            public boolean onTouch(View view, MotionEvent motionEvent) {
                return OffMapAddressSearchActivity.this.r.hideSoftInputFromWindow(view.getWindowToken(), 0);
            }
        });
        this.q = findViewById(R.id.delete_text_btn);
        this.q.setOnClickListener(this);
        if (this.a.getText().toString().trim().length() == 0) {
            this.q.setVisibility(4);
        } else {
            this.q.setVisibility(0);
        }
        this.a.addTextChangedListener(new TextWatcher() {
            public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
            }

            public void afterTextChanged(Editable editable) {
                String trim = OffMapAddressSearchActivity.this.a.getText().toString().trim();
                if (trim.length() == 0) {
                    OffMapAddressSearchActivity.this.q.setVisibility(4);
                } else {
                    OffMapAddressSearchActivity.this.q.setVisibility(0);
                }
                OffMapAddressSearchActivity.this.b.clear();
                if (trim.length() == 0) {
                    OffMapAddressSearchActivity.this.d.notifyDataSetChanged();
                    return;
                }
                try {
                    HashMap hashMap = new HashMap();
                    hashMap.put(AuthActivity.ACTION_KEY, "locationSug");
                    hashMap.put(AuthorizeActivityBase.KEY_USERID, w.K());
                    hashMap.put("query", URLEncoder.encode(trim, "utf-8"));
                    String V = w.V();
                    if (V != null && V.length() > 0) {
                        hashMap.put(DistrictSearchQuery.KEYWORDS_CITY, URLEncoder.encode(V, "utf-8"));
                    }
                    long currentTimeMillis = System.currentTimeMillis();
                    String str = w.L() + currentTimeMillis;
                    hashMap.put(Values.TIME, String.valueOf(currentTimeMillis));
                    hashMap.put("sign", t.a(str));
                    new c(com.ifengyu.intercom.network.d.c, hashMap).a(new com.ifengyu.intercom.network.a.a() {
                        public boolean a(String str) {
                            return com.ifengyu.intercom.network.c.a(str, OffMapAddressSearchActivity.this.b);
                        }
                    }, OffMapAddressSearchActivity.this.s);
                } catch (UnsupportedEncodingException e) {
                    ThrowableExtension.printStackTrace(e);
                }
            }
        });
    }

    /* access modifiers changed from: protected */
    public void c_() {
        this.g = (ImageView) c(R.id.title_bar_left);
        this.g.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                OffMapAddressSearchActivity.this.finish();
            }
        });
    }
}
