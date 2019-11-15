package com.ifengyu.library.widget.a;

import android.content.Context;
import android.support.annotation.AttrRes;
import android.support.annotation.MenuRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.StyleRes;
import android.support.v7.appcompat.R;
import android.support.v7.view.SupportMenuInflater;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuBuilder.Callback;
import android.support.v7.view.menu.MenuPopupHelper;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.widget.PopupWindow.OnDismissListener;

/* compiled from: PopupMenu */
public class a {
    final MenuPopupHelper a;
    b b;
    C0040a c;
    private final Context d;
    private final MenuBuilder e;
    private final View f;

    /* renamed from: com.ifengyu.library.widget.a.a$a reason: collision with other inner class name */
    /* compiled from: PopupMenu */
    public interface C0040a {
        void a(a aVar);
    }

    /* compiled from: PopupMenu */
    public interface b {
        boolean a(MenuItem menuItem);
    }

    public a(@NonNull Context context, @NonNull View view, int i) {
        this(context, view, i, R.attr.popupMenuStyle, 0);
    }

    public a(@NonNull Context context, @NonNull View view, int i, @AttrRes int i2, @StyleRes int i3) {
        this.d = context;
        this.f = view;
        this.e = new MenuBuilder(context);
        this.e.setCallback(new Callback() {
            public boolean onMenuItemSelected(MenuBuilder menuBuilder, MenuItem menuItem) {
                if (a.this.b != null) {
                    return a.this.b.a(menuItem);
                }
                return false;
            }

            public void onMenuModeChange(MenuBuilder menuBuilder) {
            }
        });
        this.a = new MenuPopupHelper(context, this.e, view, false, i2, i3);
        this.a.setForceShowIcon(true);
        this.a.setGravity(i);
        this.a.setOnDismissListener(new OnDismissListener() {
            public void onDismiss() {
                if (a.this.c != null) {
                    a.this.c.a(a.this);
                }
            }
        });
    }

    @NonNull
    public MenuInflater a() {
        return new SupportMenuInflater(this.d);
    }

    public void a(@MenuRes int i) {
        a().inflate(i, this.e);
    }

    public void b() {
        this.a.show();
    }

    public void setOnMenuItemClickListener(@Nullable b bVar) {
        this.b = bVar;
    }

    public void setOnDismissListener(@Nullable C0040a aVar) {
        this.c = aVar;
    }
}
