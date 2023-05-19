package p000a.p010d.p011a;

import android.database.Cursor;
import android.widget.Filter;

/* renamed from: a.d.a.b */
/* loaded from: classes.dex */
class CursorFilter extends Filter {

    /* renamed from: a */
    InterfaceC0020a f149a;

    /* compiled from: CursorFilter.java */
    /* renamed from: a.d.a.b$a */
    /* loaded from: classes.dex */
    interface InterfaceC0020a {
        /* renamed from: a */
        void mo25149a(Cursor cursor);

        /* renamed from: b */
        Cursor mo26391b();

        /* renamed from: c */
        CharSequence mo25148c(Cursor cursor);

        /* renamed from: d */
        Cursor mo25147d(CharSequence charSequence);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public CursorFilter(InterfaceC0020a interfaceC0020a) {
        this.f149a = interfaceC0020a;
    }

    @Override // android.widget.Filter
    public CharSequence convertResultToString(Object obj) {
        return this.f149a.mo25148c((Cursor) obj);
    }

    @Override // android.widget.Filter
    protected Filter.FilterResults performFiltering(CharSequence charSequence) {
        Cursor mo25147d = this.f149a.mo25147d(charSequence);
        Filter.FilterResults filterResults = new Filter.FilterResults();
        if (mo25147d != null) {
            filterResults.count = mo25147d.getCount();
            filterResults.values = mo25147d;
        } else {
            filterResults.count = 0;
            filterResults.values = null;
        }
        return filterResults;
    }

    @Override // android.widget.Filter
    protected void publishResults(CharSequence charSequence, Filter.FilterResults filterResults) {
        Cursor mo26391b = this.f149a.mo26391b();
        Object obj = filterResults.values;
        if (obj == null || obj == mo26391b) {
            return;
        }
        this.f149a.mo25149a((Cursor) obj);
    }
}
