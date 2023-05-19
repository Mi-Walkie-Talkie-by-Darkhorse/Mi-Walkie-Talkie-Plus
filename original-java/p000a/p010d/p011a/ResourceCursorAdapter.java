package p000a.p010d.p011a;

import android.content.Context;
import android.database.Cursor;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;

/* renamed from: a.d.a.c */
/* loaded from: classes.dex */
public abstract class ResourceCursorAdapter extends CursorAdapter {

    /* renamed from: i */
    private int f150i;

    /* renamed from: j */
    private int f151j;

    /* renamed from: k */
    private LayoutInflater f152k;

    @Deprecated
    public ResourceCursorAdapter(Context context, int i, Cursor cursor, boolean z) {
        super(context, cursor, z);
        this.f151j = i;
        this.f150i = i;
        this.f152k = (LayoutInflater) context.getSystemService("layout_inflater");
    }

    @Override // p000a.p010d.p011a.CursorAdapter
    /* renamed from: g */
    public View mo26390g(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f152k.inflate(this.f151j, viewGroup, false);
    }

    @Override // p000a.p010d.p011a.CursorAdapter
    /* renamed from: h */
    public View mo25145h(Context context, Cursor cursor, ViewGroup viewGroup) {
        return this.f152k.inflate(this.f150i, viewGroup, false);
    }
}
