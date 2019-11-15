package com.ifengyu.library.widget.dialog;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.v4.content.ContextCompat;
import android.support.v4.widget.Space;
import android.text.TextUtils;
import android.text.TextUtils.TruncateAt;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.ifengyu.library.R;
import com.ifengyu.library.util.l;

public class DialogMenuItemView extends RelativeLayout {
    private int a = -1;
    private a b;
    private boolean c = false;

    @SuppressLint({"ViewConstructor"})
    public static class CheckItemView extends DialogMenuItemView {
        private TextView a;
        private ImageView b;

        public void setText(CharSequence charSequence) {
            this.a.setText(charSequence);
        }

        /* access modifiers changed from: protected */
        public void a(boolean z) {
            this.b.setSelected(z);
        }
    }

    public static class MarkItemView extends DialogMenuItemView {
        private Context a;
        private TextView b;
        private ImageView c;
        private TextView d;

        public MarkItemView(Context context) {
            this(context, null);
        }

        public MarkItemView(Context context, CharSequence charSequence) {
            this(context, charSequence, null);
        }

        public MarkItemView(Context context, CharSequence charSequence, CharSequence charSequence2) {
            super(context);
            this.a = context;
            this.c = new ImageView(this.a);
            this.c.setImageResource(R.drawable.checkbox_selector);
            this.c.setId(l.g());
            LayoutParams layoutParams = new LayoutParams(-2, -2);
            layoutParams.addRule(15);
            this.b = a(this.a);
            this.b.setId(l.g());
            LayoutParams layoutParams2 = new LayoutParams(-2, -2);
            layoutParams2.addRule(1, this.c.getId());
            layoutParams2.leftMargin = l.a(16.0f);
            if (!TextUtils.isEmpty(charSequence)) {
                if (!TextUtils.isEmpty(charSequence2)) {
                    Space space = new Space(this.a);
                    LayoutParams layoutParams3 = new LayoutParams(-2, -2);
                    layoutParams3.addRule(15, -1);
                    layoutParams3.addRule(1, this.c.getId());
                    space.setId(l.g());
                    addView(space, layoutParams3);
                    layoutParams2.addRule(2, space.getId());
                    this.d = b(this.a);
                    LayoutParams layoutParams4 = new LayoutParams(-2, -2);
                    layoutParams4.addRule(3, this.b.getId());
                    layoutParams4.addRule(1, this.c.getId());
                    layoutParams4.leftMargin = l.a(16.0f);
                    addView(this.c, layoutParams);
                    addView(this.b, layoutParams2);
                    addView(this.d, layoutParams4);
                    setDescText(charSequence2);
                } else {
                    layoutParams2.addRule(15);
                    addView(this.c, layoutParams);
                    addView(this.b, layoutParams2);
                }
                setText(charSequence);
            }
        }

        private void setDescText(CharSequence charSequence) {
            this.d.setText(charSequence);
        }

        public void setText(CharSequence charSequence) {
            this.b.setText(charSequence);
        }

        /* access modifiers changed from: protected */
        public void a(boolean z) {
            this.c.setSelected(z);
            setSelected(z);
        }
    }

    public static class TextItemView extends DialogMenuItemView {
        protected TextView a;
        protected TextView b;

        public TextItemView(Context context) {
            this(context, null);
        }

        public TextItemView(Context context, CharSequence charSequence) {
            this(context, charSequence, null);
        }

        public TextItemView(Context context, CharSequence charSequence, CharSequence charSequence2) {
            super(context);
            a(charSequence, charSequence2);
        }

        private void a(CharSequence charSequence, CharSequence charSequence2) {
            if (!TextUtils.isEmpty(charSequence)) {
                this.a = a(getContext());
                this.a.setId(l.g());
                setText(charSequence);
                LayoutParams layoutParams = new LayoutParams(-2, -2);
                if (!TextUtils.isEmpty(charSequence2)) {
                    Space space = new Space(getContext());
                    LayoutParams layoutParams2 = new LayoutParams(-2, -2);
                    layoutParams2.addRule(15, -1);
                    space.setId(l.g());
                    addView(space, layoutParams2);
                    layoutParams.addRule(2, space.getId());
                    this.b = b(getContext());
                    setExtraText(charSequence2);
                    LayoutParams layoutParams3 = new LayoutParams(-2, -2);
                    layoutParams3.addRule(3, this.a.getId());
                    addView(this.a, layoutParams);
                    addView(this.b, layoutParams3);
                    return;
                }
                layoutParams.addRule(15);
                addView(this.a, layoutParams);
            }
        }

        public void setText(CharSequence charSequence) {
            this.a.setText(charSequence);
        }

        public void setExtraText(CharSequence charSequence) {
            this.b.setText(charSequence);
        }

        public void setTextColor(int i) {
            this.a.setTextColor(i);
        }

        public void setExtraTextColor(int i) {
            this.b.setTextColor(i);
        }
    }

    public interface a {
        void a(int i);
    }

    public DialogMenuItemView(Context context) {
        super(context);
        setPadding(l.a(21.0f), 0, l.a(21.0f), 0);
    }

    public static TextView a(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(ContextCompat.getColor(context, 17170444));
        textView.setGravity(19);
        textView.setTextSize(0, (float) l.b(14.0f));
        textView.setSingleLine(true);
        textView.setEllipsize(TruncateAt.MIDDLE);
        textView.setDuplicateParentStateEnabled(false);
        return textView;
    }

    public static TextView b(Context context) {
        TextView textView = new TextView(context);
        textView.setTextColor(ContextCompat.getColor(context, R.color.black80));
        textView.setGravity(19);
        textView.setTextSize(0, (float) l.b(12.0f));
        textView.setSingleLine(true);
        textView.setEllipsize(TruncateAt.MIDDLE);
        textView.setDuplicateParentStateEnabled(false);
        return textView;
    }

    public int getMenuIndex() {
        return this.a;
    }

    public void setMenuIndex(int i) {
        this.a = i;
    }

    /* access modifiers changed from: protected */
    public void a(boolean z) {
    }

    public void setChecked(boolean z) {
        this.c = z;
        a(this.c);
    }

    public void setListener(a aVar) {
        if (!isClickable()) {
            setClickable(true);
        }
        this.b = aVar;
    }

    public boolean performClick() {
        if (this.b != null) {
            this.b.a(this.a);
        }
        return super.performClick();
    }
}
