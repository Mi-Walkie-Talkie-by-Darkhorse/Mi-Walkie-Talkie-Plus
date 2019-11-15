package com.sina.weibo.sdk.component.view;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.sina.weibo.sdk.a.b;
import com.sina.weibo.sdk.b.g;
import com.sina.weibo.sdk.component.WeiboSdkBrowser;
import com.sina.weibo.sdk.component.k;
import com.sina.weibo.sdk.utils.f;

public class CommentComponentView extends FrameLayout {
    private a a;
    private LinearLayout b;

    public enum Category {
        MOVIE("1001"),
        TRAVEL("1002");
        
        private String c;

        private Category(String str) {
            this.c = str;
        }

        public String a() {
            return this.c;
        }
    }

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
        public Category e;
        /* access modifiers changed from: private */
        public b f;
    }

    public CommentComponentView(Context context) {
        super(context);
        a(context);
    }

    public CommentComponentView(Context context, AttributeSet attributeSet, int i) {
        super(context, attributeSet, i);
        a(context);
    }

    public CommentComponentView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        a(context);
    }

    private void a(Context context) {
        this.b = new LinearLayout(context);
        this.b.setOrientation(0);
        this.b.setLayoutParams(new LayoutParams(-2, -2));
        ImageView imageView = new ImageView(context);
        imageView.setImageDrawable(f.a(context, "sdk_weibo_logo.png"));
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(f.a(getContext(), 20), f.a(getContext(), 20));
        layoutParams.gravity = 16;
        imageView.setLayoutParams(layoutParams);
        TextView textView = new TextView(context);
        textView.setText(f.a(context, "Comment", "微博热评", "微博熱評"));
        textView.setTextColor(-32256);
        textView.setTextSize(2, 15.0f);
        textView.setIncludeFontPadding(false);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-2, -2);
        layoutParams2.gravity = 16;
        layoutParams2.leftMargin = f.a(getContext(), 4);
        textView.setLayoutParams(layoutParams2);
        this.b.addView(imageView);
        this.b.addView(textView);
        addView(this.b);
        textView.setOnClickListener(new OnClickListener() {
            public void onClick(View view) {
                CommentComponentView.this.a();
            }
        });
    }

    public void setCommentParam(a aVar) {
        this.a = aVar;
    }

    /* access modifiers changed from: private */
    public void a() {
        g.a(getContext(), this.a.a).a();
        k kVar = new k(getContext());
        kVar.a("http://widget.weibo.com/distribution/socail_comments_sdk.php");
        kVar.b(f.a(getContext(), "Comment", "微博热评", "微博熱評"));
        kVar.h(this.a.a);
        kVar.e(this.a.c);
        kVar.d(this.a.d);
        kVar.f(this.a.e.a());
        kVar.a(this.a.f);
        kVar.g(this.a.b);
        Bundle d = kVar.d();
        Intent intent = new Intent(getContext(), WeiboSdkBrowser.class);
        intent.putExtras(d);
        getContext().startActivity(intent);
    }
}
