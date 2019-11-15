package android.support.v4.widget;

import android.content.Context;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.DataSetObserver;
import android.os.Handler;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.Filter;
import android.widget.FilterQueryProvider;
import android.widget.Filterable;

public abstract class CursorAdapter extends BaseAdapter implements CursorFilterClient, Filterable {
    @Deprecated
    public static final int FLAG_AUTO_REQUERY = 1;
    public static final int FLAG_REGISTER_CONTENT_OBSERVER = 2;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected boolean mAutoRequery;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected ChangeObserver mChangeObserver;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected Context mContext;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected Cursor mCursor;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected CursorFilter mCursorFilter;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected DataSetObserver mDataSetObserver;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected boolean mDataValid;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected FilterQueryProvider mFilterQueryProvider;
    @RestrictTo({Scope.LIBRARY_GROUP})
    protected int mRowIDColumn;

    private class ChangeObserver extends ContentObserver {
        ChangeObserver() {
            super(new Handler());
        }

        public boolean deliverSelfNotifications() {
            return true;
        }

        public void onChange(boolean z) {
            CursorAdapter.this.onContentChanged();
        }
    }

    private class MyDataSetObserver extends DataSetObserver {
        MyDataSetObserver() {
        }

        public void onChanged() {
            CursorAdapter.this.mDataValid = true;
            CursorAdapter.this.notifyDataSetChanged();
        }

        public void onInvalidated() {
            CursorAdapter.this.mDataValid = false;
            CursorAdapter.this.notifyDataSetInvalidated();
        }
    }

    public abstract void bindView(View view, Context context, Cursor cursor);

    public abstract View newView(Context context, Cursor cursor, ViewGroup viewGroup);

    @Deprecated
    public CursorAdapter(Context context, Cursor cursor) {
        init(context, cursor, 1);
    }

    public CursorAdapter(Context context, Cursor cursor, boolean z) {
        init(context, cursor, z ? 1 : 2);
    }

    public CursorAdapter(Context context, Cursor cursor, int i) {
        init(context, cursor, i);
    }

    /* access modifiers changed from: protected */
    @Deprecated
    public void init(Context context, Cursor cursor, boolean z) {
        init(context, cursor, z ? 1 : 2);
    }

    /* access modifiers changed from: 0000 */
    public void init(Context context, Cursor cursor, int i) {
        boolean z = true;
        if ((i & 1) == 1) {
            i |= 2;
            this.mAutoRequery = true;
        } else {
            this.mAutoRequery = false;
        }
        if (cursor == null) {
            z = false;
        }
        this.mCursor = cursor;
        this.mDataValid = z;
        this.mContext = context;
        this.mRowIDColumn = z ? cursor.getColumnIndexOrThrow("_id") : -1;
        if ((i & 2) == 2) {
            this.mChangeObserver = new ChangeObserver();
            this.mDataSetObserver = new MyDataSetObserver();
        } else {
            this.mChangeObserver = null;
            this.mDataSetObserver = null;
        }
        if (z) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
        }
    }

    public Cursor getCursor() {
        return this.mCursor;
    }

    public int getCount() {
        if (!this.mDataValid || this.mCursor == null) {
            return 0;
        }
        return this.mCursor.getCount();
    }

    public Object getItem(int i) {
        if (!this.mDataValid || this.mCursor == null) {
            return null;
        }
        this.mCursor.moveToPosition(i);
        return this.mCursor;
    }

    public long getItemId(int i) {
        if (!this.mDataValid || this.mCursor == null || !this.mCursor.moveToPosition(i)) {
            return 0;
        }
        return this.mCursor.getLong(this.mRowIDColumn);
    }

    public boolean hasStableIds() {
        return true;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            throw new IllegalStateException("this should only be called when the cursor is valid");
        } else if (!this.mCursor.moveToPosition(i)) {
            throw new IllegalStateException("couldn't move cursor to position " + i);
        } else {
            if (view == null) {
                view = newView(this.mContext, this.mCursor, viewGroup);
            }
            bindView(view, this.mContext, this.mCursor);
            return view;
        }
    }

    public View getDropDownView(int i, View view, ViewGroup viewGroup) {
        if (!this.mDataValid) {
            return null;
        }
        this.mCursor.moveToPosition(i);
        if (view == null) {
            view = newDropDownView(this.mContext, this.mCursor, viewGroup);
        }
        bindView(view, this.mContext, this.mCursor);
        return view;
    }

    public View newDropDownView(Context context, Cursor cursor, ViewGroup viewGroup) {
        return newView(context, cursor, viewGroup);
    }

    public void changeCursor(Cursor cursor) {
        Cursor swapCursor = swapCursor(cursor);
        if (swapCursor != null) {
            swapCursor.close();
        }
    }

    public Cursor swapCursor(Cursor cursor) {
        if (cursor == this.mCursor) {
            return null;
        }
        Cursor cursor2 = this.mCursor;
        if (cursor2 != null) {
            if (this.mChangeObserver != null) {
                cursor2.unregisterContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor2.unregisterDataSetObserver(this.mDataSetObserver);
            }
        }
        this.mCursor = cursor;
        if (cursor != null) {
            if (this.mChangeObserver != null) {
                cursor.registerContentObserver(this.mChangeObserver);
            }
            if (this.mDataSetObserver != null) {
                cursor.registerDataSetObserver(this.mDataSetObserver);
            }
            this.mRowIDColumn = cursor.getColumnIndexOrThrow("_id");
            this.mDataValid = true;
            notifyDataSetChanged();
            return cursor2;
        }
        this.mRowIDColumn = -1;
        this.mDataValid = false;
        notifyDataSetInvalidated();
        return cursor2;
    }

    public CharSequence convertToString(Cursor cursor) {
        return cursor == null ? "" : cursor.toString();
    }

    public Cursor runQueryOnBackgroundThread(CharSequence charSequence) {
        if (this.mFilterQueryProvider != null) {
            return this.mFilterQueryProvider.runQuery(charSequence);
        }
        return this.mCursor;
    }

    public Filter getFilter() {
        if (this.mCursorFilter == null) {
            this.mCursorFilter = new CursorFilter(this);
        }
        return this.mCursorFilter;
    }

    public FilterQueryProvider getFilterQueryProvider() {
        return this.mFilterQueryProvider;
    }

    public void setFilterQueryProvider(FilterQueryProvider filterQueryProvider) {
        this.mFilterQueryProvider = filterQueryProvider;
    }

    /* access modifiers changed from: protected */
    public void onContentChanged() {
        if (this.mAutoRequery && this.mCursor != null && !this.mCursor.isClosed()) {
            this.mDataValid = this.mCursor.requery();
        }
    }
}
