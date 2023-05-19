package p000a.p010d.p011a;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.Filterable;
import androidx.annotation.RestrictTo;
import com.umeng.analytics.pro.Constants;
import p000a.p010d.p011a.CursorFilter;

/* renamed from: a.d.a.a */
/* loaded from: classes.dex */
public abstract class CursorAdapter extends BaseAdapter implements Filterable, CursorFilter.InterfaceC0020a {
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: a */
    protected boolean f139a;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: b */
    protected boolean f140b;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: c */
    protected Cursor f141c;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: d */
    protected Context f142d;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: e */
    protected int f143e;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: f */
    protected C0018a f144f;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: g */
    protected DataSetObserver f145g;
    @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})

    /* renamed from: h */
    protected CursorFilter f146h;

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* renamed from: a.d.a.a$a */
    /* loaded from: classes.dex */
    public class C0018a extends ContentObserver {
        C0018a() {
            super(new Handler());
        }

        @Override // android.database.ContentObserver
        public boolean deliverSelfNotifications() {
            return true;
        }

        @Override // android.database.ContentObserver
        public void onChange(boolean z) {
            CursorAdapter.this.m26393i();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: CursorAdapter.java */
    /* renamed from: a.d.a.a$b */
    /* loaded from: classes.dex */
    public class C0019b extends DataSetObserver {
        C0019b() {
        }

        @Override // android.database.DataSetObserver
        public void onChanged() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f139a = true;
            cursorAdapter.notifyDataSetChanged();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            CursorAdapter cursorAdapter = CursorAdapter.this;
            cursorAdapter.f139a = false;
            cursorAdapter.notifyDataSetInvalidated();
        }
    }

    public CursorAdapter(Context context, Cursor cursor, boolean z) {
        m26394f(context, cursor, z ? 1 : 2);
    }

    @Override // p000a.p010d.p011a.CursorFilter.InterfaceC0020a
    /* renamed from: a */
    public void mo25149a(Cursor cursor) {
        Cursor m26392j = m26392j(cursor);
        if (m26392j != null) {
            m26392j.close();
        }
    }

    @Override // p000a.p010d.p011a.CursorFilter.InterfaceC0020a
    /* renamed from: b */
    public Cursor mo26391b() {
        return this.f141c;
    }

    @Override // p000a.p010d.p011a.CursorFilter.InterfaceC0020a
    /* renamed from: c */
    public abstract CharSequence mo25148c(Cursor cursor);

    /* renamed from: e */
    public abstract void mo25146e(View view, Context context, Cursor cursor);

    /* renamed from: f */
    void m26394f(Context context, Cursor cursor, int i) {
        if ((i & 1) == 1) {
            i |= 2;
            this.f140b = true;
        } else {
            this.f140b = false;
        }
        boolean z = cursor != null;
        this.f141c = cursor;
        this.f139a = z;
        this.f142d = context;
        this.f143e = z ? cursor.getColumnIndexOrThrow(Constants.f19494d) : -1;
        if ((i & 2) == 2) {
            this.f144f = new C0018a();
            this.f145g = new C0019b();
        } else {
            this.f144f = null;
            this.f145g = null;
        }
        if (z) {
            C0018a c0018a = this.f144f;
            if (c0018a != null) {
                cursor.registerContentObserver(c0018a);
            }
            DataSetObserver dataSetObserver = this.f145g;
            if (dataSetObserver != null) {
                cursor.registerDataSetObserver(dataSetObserver);
            }
        }
    }

    /* renamed from: g */
    public abstract View mo26390g(Context context, Cursor cursor, ViewGroup viewGroup);

    @Override // android.widget.Adapter
    public int getCount() {
        Cursor cursor;
        if (!this.f139a || (cursor = this.f141c) == null) {
            return 0;
        }
        return cursor.getCount();
    }

    @Override // android.widget.BaseAdapter, android.widget.SpinnerAdapter
    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (this.f139a) {
            this.f141c.moveToPosition(i);
            if (view == null) {
                view = mo26390g(this.f142d, this.f141c, viewGroup);
            }
            mo25146e(view, this.f142d, this.f141c);
            return view;
        }
        return null;
    }

    @Override // android.widget.Filterable
    public Filter getFilter() {
        if (this.f146h == null) {
            this.f146h = new CursorFilter(this);
        }
        return this.f146h;
    }

    @Override // android.widget.Adapter
    public Object getItem(int i) {
        Cursor cursor;
        if (!this.f139a || (cursor = this.f141c) == null) {
            return null;
        }
        cursor.moveToPosition(i);
        return this.f141c;
    }

    @Override // android.widget.Adapter
    public long getItemId(int i) {
        Cursor cursor;
        if (this.f139a && (cursor = this.f141c) != null && cursor.moveToPosition(i)) {
            return this.f141c.getLong(this.f143e);
        }
        return 0L;
    }

    @Override // android.widget.Adapter
    public View getView(int i, View view, ViewGroup viewGroup) {
        if (this.f139a) {
            if (this.f141c.moveToPosition(i)) {
                if (view == null) {
                    view = mo25145h(this.f142d, this.f141c, viewGroup);
                }
                mo25146e(view, this.f142d, this.f141c);
                return view;
            }
            throw new IllegalStateException("couldn't move cursor to position " + i);
        }
        throw new IllegalStateException("this should only be called when the cursor is valid");
    }

    /* renamed from: h */
    public abstract View mo25145h(Context context, Cursor cursor, ViewGroup viewGroup);

    /* renamed from: i */
    protected void m26393i() {
        Cursor cursor;
        if (!this.f140b || (cursor = this.f141c) == null || cursor.isClosed()) {
            return;
        }
        this.f139a = this.f141c.requery();
    }

    /* renamed from: j */
    public Cursor m26392j(Cursor cursor) {
        Cursor cursor2 = this.f141c;
        if (cursor == cursor2) {
            return null;
        }
        if (cursor2 != null) {
            C0018a c0018a = this.f144f;
            if (c0018a != null) {
                cursor2.unregisterContentObserver(c0018a);
            }
            DataSetObserver dataSetObserver = this.f145g;
            if (dataSetObserver != null) {
                cursor2.unregisterDataSetObserver(dataSetObserver);
            }
        }
        this.f141c = cursor;
        if (cursor != null) {
            C0018a c0018a2 = this.f144f;
            if (c0018a2 != null) {
                cursor.registerContentObserver(c0018a2);
            }
            DataSetObserver dataSetObserver2 = this.f145g;
            if (dataSetObserver2 != null) {
                cursor.registerDataSetObserver(dataSetObserver2);
            }
            this.f143e = cursor.getColumnIndexOrThrow(Constants.f19494d);
            this.f139a = true;
            notifyDataSetChanged();
        } else {
            this.f143e = -1;
            this.f139a = false;
            notifyDataSetInvalidated();
        }
        return cursor2;
    }
}
