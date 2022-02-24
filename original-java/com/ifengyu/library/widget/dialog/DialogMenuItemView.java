package com.ifengyu.library.widget.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.core.content.b;
import androidx.legacy.widget.Space;
import com.ifengyu.library.R$color;
import com.ifengyu.library.R$drawable;
import com.ifengyu.library.a.m;

/* loaded from: classes2.dex */
public class DialogMenuItemView extends RelativeLayout {

    /* renamed from: b  reason: collision with root package name */
    private a f7192b;

    /* renamed from: a  reason: collision with root package name */
    private int f7191a = -1;

    /* renamed from: c  reason: collision with root package name */
    private boolean f7193c = false;

    @SuppressLint({"ViewConstructor"})
    /* loaded from: classes2.dex */
    public static class CheckItemView extends DialogMenuItemView {
        private TextView d;
        private ImageView e;

        @Override // com.ifengyu.library.widget.dialog.DialogMenuItemView
        protected void a(boolean z) {
            this.e.setSelected(z);
        }

        public void setText(CharSequence charSequence) {
            this.d.setText(charSequence);
        }
    }

    /* loaded from: classes2.dex */
    public static class MarkItemView extends DialogMenuItemView {
        private Context d;
        private TextView e;
        private ImageView f;
        private TextView g;

        public MarkItemView(Context context) {
            this(context, null);
        }

        private void setDescText(CharSequence charSequence) {
            this.g.setText(charSequence);
        }

        @Override // com.ifengyu.library.widget.dialog.DialogMenuItemView
        protected void a(boolean z) {
            this.f.setSelected(z);
            setSelected(z);
        }

        public void setText(CharSequence charSequence) {
            this.e.setText(charSequence);
        }

        public MarkItemView(Context context, CharSequence charSequence) {
            this(context, charSequence, null);
        }

        public MarkItemView(Context context, CharSequence charSequence, CharSequence charSequence2) {
            super(context);
            this.d = context;
            ImageView imageView = new ImageView(this.d);
            this.f = imageView;
            imageView.setImageResource(R$drawable.checkbox_selector);
            this.f.setId(m.b());
            RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams.addRule(15);
            TextView b2 = DialogMenuItemView.b(this.d);
            this.e = b2;
            b2.setId(m.b());
            RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
            layoutParams2.addRule(1, this.f.getId());
            layoutParams2.leftMargin = m.a(16.0f);
            if (!TextUtils.isEmpty(charSequence)) {
                if (!TextUtils.isEmpty(charSequence2)) {
                    View space = new Space(this.d);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams3.addRule(15, -1);
                    layoutParams3.addRule(1, this.f.getId());
                    space.setId(m.b());
                    addView(space, layoutParams3);
                    layoutParams2.addRule(2, space.getId());
                    this.g = DialogMenuItemView.a(this.d);
                    RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams4.addRule(3, this.e.getId());
                    layoutParams4.addRule(1, this.f.getId());
                    layoutParams4.leftMargin = m.a(16.0f);
                    addView(this.f, layoutParams);
                    addView(this.e, layoutParams2);
                    addView(this.g, layoutParams4);
                    setDescText(charSequence2);
                } else {
                    layoutParams2.addRule(15);
                    addView(this.f, layoutParams);
                    addView(this.e, layoutParams2);
                }
                setText(charSequence);
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class TextItemView extends DialogMenuItemView {
        protected TextView d;
        protected TextView e;

        public TextItemView(Context context) {
            this(context, null);
        }

        private void a(CharSequence charSequence, CharSequence charSequence2) {
            if (!TextUtils.isEmpty(charSequence)) {
                TextView b2 = DialogMenuItemView.b(getContext());
                this.d = b2;
                b2.setId(m.b());
                setText(charSequence);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-2, -2);
                if (!TextUtils.isEmpty(charSequence2)) {
                    View space = new Space(getContext());
                    RelativeLayout.LayoutParams layoutParams2 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams2.addRule(15, -1);
                    space.setId(m.b());
                    addView(space, layoutParams2);
                    layoutParams.addRule(2, space.getId());
                    this.e = DialogMenuItemView.a(getContext());
                    setExtraText(charSequence2);
                    RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-2, -2);
                    layoutParams3.addRule(3, this.d.getId());
                    addView(this.d, layoutParams);
                    addView(this.e, layoutParams3);
                    return;
                }
                layoutParams.addRule(15);
                addView(this.d, layoutParams);
            }
        }

        public void setExtraText(CharSequence charSequence) {
            this.e.setText(charSequence);
        }

        public void setExtraTextColor(int i) {
            this.e.setTextColor(i);
        }

        public void setText(CharSequence charSequence) {
            this.d.setText(charSequence);
        }

        public void setTextColor(int i) {
            this.d.setTextColor(i);
        }

        public TextItemView(Context context, CharSequence charSequence) {
            this(context, charSequence, null);
        }

        public TextItemView(Context context, CharSequence charSequence, CharSequence charSequence2) {
            super(context);
            a(charSequence, charSequence2);
        }
    }

    /* loaded from: classes2.dex */
    public interface a {
        void a(int i);
    }

    public DialogMenuItemView(Context context) {
        super(context);
        setPadding(m.a(21.0f), 0, m.a(21.0f), 0);
    }

    public static TextView a(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(b.a(context, R$color.black80));
        textView.setGravity(19);
        textView.setTextSize(0, m.b(12.0f));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setDuplicateParentStateEnabled(false);
        return textView;
    }

    public static TextView b(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(b.a(context, 17170444));
        textView.setGravity(19);
        textView.setTextSize(0, m.b(14.0f));
        textView.setSingleLine(true);
        textView.setEllipsize(TextUtils.TruncateAt.MIDDLE);
        textView.setDuplicateParentStateEnabled(false);
        return textView;
    }

    protected void a(boolean z) {
    }

    public int getMenuIndex() {
        return this.f7191a;
    }

    @Override // android.view.View
    public boolean performClick() {
        a aVar = this.f7192b;
        if (aVar != null) {
            aVar.a(this.f7191a);
        }
        return super.performClick();
    }

    public void setChecked(boolean z) {
        this.f7193c = z;
        a(z);
    }

    public void setListener(a aVar) {
        if (!isClickable()) {
            setClickable(true);
        }
        this.f7192b = aVar;
    }

    public void setMenuIndex(int i) {
        this.f7191a = i;
    }
}
