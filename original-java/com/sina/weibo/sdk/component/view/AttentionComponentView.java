package com.sina.weibo.sdk.component.view;

import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.StateListDrawable;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.b.g;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.k;
import com.sina.weibo.sdk.exception.WeiboException;
import com.sina.weibo.sdk.net.c;
import com.sina.weibo.sdk.net.d;
import com.sina.weibo.sdk.utils.f;
import com.sina.weibo.sdk.utils.i;
import org.json.JSONException;
import org.json.JSONObject;

public class AttentionComponentView extends FrameLayout {
    /* access modifiers changed from: private */
    public static final String a = AttentionComponentView.class.getName();
    private a b;
    /* access modifiers changed from: private */
    public volatile boolean c = false;
    private FrameLayout d;
    private TextView e;
    private ProgressBar f;

    public static class a {
        /* access modifiers changed from: private */
        public String a;
        /* access modifiers changed from: private */
        public String b;
        /* access modifiers changed from: private */
        public String c;
        /* access modifiers changed from: private */
        public String d;
        /* access modifiers changed from: private */
        public b e;

        /* access modifiers changed from: private */
        public boolean a() {
            if (!TextUtils.isEmpty(this.b)) {
                return true;
            }
            return false;
        }
    }

    public AttentionComponentView(Context context) {
        super(context);
        a(context);
    }

    public AttentionComponentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    public AttentionComponentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        StateListDrawable a2 = f.a(context, "common_button_white.9.png", "common_button_white_highlighted.9.png");
        this.d = new FrameLayout(context);
        this.d.setBackgroundDrawable(a2);
        this.d.setPadding(0, f.a(getContext(), 6), f.a(getContext(), 2), f.a(getContext(), 6));
        this.d.setLayoutParams(new LayoutParams(f.a(getContext(), 66), -2));
        addView(this.d);
        this.e = new TextView(getContext());
        this.e.setIncludeFontPadding(false);
        this.e.setSingleLine(true);
        this.e.setTextSize(2, 13.0f);
        LayoutParams layoutParams = new LayoutParams(-2, -2);
        layoutParams.gravity = 17;
        this.e.setLayoutParams(layoutParams);
        this.d.addView(this.e);
        this.f = new ProgressBar(getContext(), null, 16842873);
        this.f.setVisibility(8);
        LayoutParams layoutParams2 = new LayoutParams(-2, -2);
        layoutParams2.gravity = 17;
        this.f.setLayoutParams(layoutParams2);
        this.d.addView(this.f);
        this.d.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                AttentionComponentView.this.d();
            }
        });
        a(false);
    }

    public void setAttentionParam(a aVar) {
        this.b = aVar;
        if (aVar.a()) {
            a(aVar);
        }
    }

    private void b() {
        this.d.setEnabled(false);
        this.e.setVisibility(8);
        this.f.setVisibility(0);
    }

    private void c() {
        this.d.setEnabled(true);
        this.e.setVisibility(0);
        this.f.setVisibility(8);
    }

    /* access modifiers changed from: private */
    public void a(boolean z) {
        c();
        if (z) {
            this.e.setText(f.a(getContext(), "Following", "已关注", "已關注"));
            this.e.setTextColor(-13421773);
            this.e.setCompoundDrawablesWithIntrinsicBounds(f.a(getContext(), "timeline_relationship_icon_attention.png"), null, null, null);
            this.d.setEnabled(false);
            return;
        }
        this.e.setText(f.a(getContext(), "Follow", "关注", "關注"));
        this.e.setTextColor(-32256);
        this.e.setCompoundDrawablesWithIntrinsicBounds(f.a(getContext(), "timeline_relationship_icon_addattention.png"), null, null, null);
        this.d.setEnabled(true);
    }

    private void a(a aVar) {
        if (!this.c) {
            g.a(getContext(), aVar.a).a();
            this.c = true;
            b();
            com.sina.weibo.sdk.net.f fVar = new com.sina.weibo.sdk.net.f(aVar.a);
            fVar.a("access_token", aVar.b);
            fVar.a("target_id", aVar.c);
            fVar.a("target_screen_name", aVar.d);
            c.a(getContext(), "https://api.weibo.com/2/friendships/show.json", fVar, "GET", new d() {
                public void a(WeiboException weiboException) {
                    com.sina.weibo.sdk.utils.c.a(AttentionComponentView.a, "error : " + weiboException.getMessage());
                    AttentionComponentView.this.c = false;
                }

                public void a(String str) {
                    com.sina.weibo.sdk.utils.c.a(AttentionComponentView.a, "json : " + str);
                    try {
                        final JSONObject optJSONObject = new JSONObject(str).optJSONObject("target");
                        AttentionComponentView.this.getHandler().post(new Runnable() {
                            public void run() {
                                if (optJSONObject != null) {
                                    AttentionComponentView.this.a(optJSONObject.optBoolean("followed_by", false));
                                }
                                AttentionComponentView.this.c = false;
                            }
                        });
                    } catch (JSONException e) {
                    }
                }
            });
        }
    }

    /* access modifiers changed from: private */
    public void d() {
        k kVar = new k(getContext());
        kVar.a("http://widget.weibo.com/relationship/followsdk.php");
        kVar.b(f.a(getContext(), "Follow", "关注", "關注"));
        kVar.h(this.b.a);
        kVar.c(this.b.c);
        kVar.a(this.b.e);
        kVar.g(this.b.b);
        kVar.a((com.sina.weibo.sdk.component.k.a) new com.sina.weibo.sdk.component.k.a() {
            public void a(String str) {
                String string = i.b(str).getString("result");
                if (!TextUtils.isEmpty(string)) {
                    try {
                        long parseInt = (long) Integer.parseInt(string);
                        if (parseInt == 1) {
                            AttentionComponentView.this.a(true);
                        } else if (parseInt == 0) {
                            AttentionComponentView.this.a(false);
                        }
                    } catch (NumberFormatException e) {
                    }
                }
            }
        });
        Bundle d2 = kVar.d();
        Intent intent = new Intent(getContext(), WeiboSdkBrowser.class);
        intent.putExtras(d2);
        getContext().startActivity(intent);
    }
}
