package com.afollestad.materialdialogs;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.support.annotation.LayoutRes;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.view.ViewGroup;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.LinearLayout;
import android.widget.RadioButton;
import android.widget.TextView;
import com.afollestad.materialdialogs.internal.c;

/* compiled from: DefaultRvAdapter */
class a extends Adapter<C0001a> {
    /* access modifiers changed from: private */
    public final MaterialDialog a;
    @LayoutRes
    private final int b;
    private final GravityEnum c;
    /* access modifiers changed from: private */
    public b d;

    /* renamed from: com.afollestad.materialdialogs.a$a reason: collision with other inner class name */
    /* compiled from: DefaultRvAdapter */
    static class C0001a extends ViewHolder implements OnClickListener, OnLongClickListener {
        final CompoundButton a;
        final TextView b;
        final a c;

        C0001a(View view, a aVar) {
            super(view);
            this.a = (CompoundButton) view.findViewById(R.id.md_control);
            this.b = (TextView) view.findViewById(R.id.md_title);
            this.c = aVar;
            view.setOnClickListener(this);
            if (aVar.a.b.F != null) {
                view.setOnLongClickListener(this);
            }
        }

        public void onClick(View view) {
            if (this.c.d != null && getAdapterPosition() != -1) {
                CharSequence charSequence = null;
                if (this.c.a.b.l != null && getAdapterPosition() < this.c.a.b.l.size()) {
                    charSequence = (CharSequence) this.c.a.b.l.get(getAdapterPosition());
                }
                this.c.d.a(this.c.a, view, getAdapterPosition(), charSequence, false);
            }
        }

        public boolean onLongClick(View view) {
            if (this.c.d == null || getAdapterPosition() == -1) {
                return false;
            }
            CharSequence charSequence = null;
            if (this.c.a.b.l != null && getAdapterPosition() < this.c.a.b.l.size()) {
                charSequence = (CharSequence) this.c.a.b.l.get(getAdapterPosition());
            }
            return this.c.d.a(this.c.a, view, getAdapterPosition(), charSequence, true);
        }
    }

    /* compiled from: DefaultRvAdapter */
    interface b {
        boolean a(MaterialDialog materialDialog, View view, int i, CharSequence charSequence, boolean z);
    }

    a(MaterialDialog materialDialog, @LayoutRes int i) {
        this.a = materialDialog;
        this.b = i;
        this.c = materialDialog.b.f;
    }

    /* access modifiers changed from: 0000 */
    public void a(b bVar) {
        this.d = bVar;
    }

    /* renamed from: a */
    public C0001a onCreateViewHolder(ViewGroup viewGroup, int i) {
        View inflate = LayoutInflater.from(viewGroup.getContext()).inflate(this.b, viewGroup, false);
        com.afollestad.materialdialogs.a.a.a(inflate, this.a.e());
        return new C0001a(inflate, this);
    }

    /* renamed from: a */
    public void onBindViewHolder(C0001a aVar, int i) {
        boolean z;
        boolean z2;
        boolean z3;
        View view = aVar.itemView;
        boolean a2 = com.afollestad.materialdialogs.a.a.a(Integer.valueOf(i), (T[]) this.a.b.Q);
        int i2 = a2 ? com.afollestad.materialdialogs.a.a.a(this.a.b.ah, 0.4f) : this.a.b.ah;
        View view2 = aVar.itemView;
        if (!a2) {
            z = true;
        } else {
            z = false;
        }
        view2.setEnabled(z);
        switch (this.a.r) {
            case SINGLE:
                RadioButton radioButton = (RadioButton) aVar.a;
                boolean z4 = this.a.b.O == i;
                if (this.a.b.u != null) {
                    c.a(radioButton, this.a.b.u);
                } else {
                    c.a(radioButton, this.a.b.t);
                }
                radioButton.setChecked(z4);
                if (!a2) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                radioButton.setEnabled(z3);
                break;
            case MULTI:
                CheckBox checkBox = (CheckBox) aVar.a;
                boolean contains = this.a.s.contains(Integer.valueOf(i));
                if (this.a.b.u != null) {
                    c.a(checkBox, this.a.b.u);
                } else {
                    c.a(checkBox, this.a.b.t);
                }
                checkBox.setChecked(contains);
                if (!a2) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                checkBox.setEnabled(z2);
                break;
        }
        aVar.b.setText((CharSequence) this.a.b.l.get(i));
        aVar.b.setTextColor(i2);
        this.a.a(aVar.b, this.a.b.S);
        a((ViewGroup) view);
        if (this.a.b.av != null) {
            if (i < this.a.b.av.length) {
                view.setId(this.a.b.av[i]);
            } else {
                view.setId(-1);
            }
        }
        if (VERSION.SDK_INT >= 21) {
            ViewGroup viewGroup = (ViewGroup) view;
            if (viewGroup.getChildCount() != 2) {
                return;
            }
            if (viewGroup.getChildAt(0) instanceof CompoundButton) {
                viewGroup.getChildAt(0).setBackground(null);
            } else if (viewGroup.getChildAt(1) instanceof CompoundButton) {
                viewGroup.getChildAt(1).setBackground(null);
            }
        }
    }

    public int getItemCount() {
        if (this.a.b.l != null) {
            return this.a.b.l.size();
        }
        return 0;
    }

    @TargetApi(17)
    private void a(ViewGroup viewGroup) {
        ((LinearLayout) viewGroup).setGravity(this.c.a() | 16);
        if (viewGroup.getChildCount() != 2) {
            return;
        }
        if (this.c == GravityEnum.END && !a() && (viewGroup.getChildAt(0) instanceof CompoundButton)) {
            CompoundButton compoundButton = (CompoundButton) viewGroup.getChildAt(0);
            viewGroup.removeView(compoundButton);
            TextView textView = (TextView) viewGroup.getChildAt(0);
            viewGroup.removeView(textView);
            textView.setPadding(textView.getPaddingRight(), textView.getPaddingTop(), textView.getPaddingLeft(), textView.getPaddingBottom());
            viewGroup.addView(textView);
            viewGroup.addView(compoundButton);
        } else if (this.c == GravityEnum.START && a() && (viewGroup.getChildAt(1) instanceof CompoundButton)) {
            CompoundButton compoundButton2 = (CompoundButton) viewGroup.getChildAt(1);
            viewGroup.removeView(compoundButton2);
            TextView textView2 = (TextView) viewGroup.getChildAt(0);
            viewGroup.removeView(textView2);
            textView2.setPadding(textView2.getPaddingRight(), textView2.getPaddingTop(), textView2.getPaddingRight(), textView2.getPaddingBottom());
            viewGroup.addView(compoundButton2);
            viewGroup.addView(textView2);
        }
    }

    @TargetApi(17)
    private boolean a() {
        boolean z = true;
        if (VERSION.SDK_INT < 17) {
            return false;
        }
        if (this.a.b().a().getResources().getConfiguration().getLayoutDirection() != 1) {
            z = false;
        }
        return z;
    }
}
