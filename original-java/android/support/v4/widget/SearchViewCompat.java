package android.support.v4.widget;

import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.view.View;

public final class SearchViewCompat {
    private static final SearchViewCompatImpl IMPL;

    public interface OnCloseListener {
        boolean onClose();
    }

    @Deprecated
    public static abstract class OnCloseListenerCompat implements OnCloseListener {
        public boolean onClose() {
            return false;
        }
    }

    public interface OnQueryTextListener {
        boolean onQueryTextChange(String str);

        boolean onQueryTextSubmit(String str);
    }

    @Deprecated
    public static abstract class OnQueryTextListenerCompat implements OnQueryTextListener {
        public boolean onQueryTextSubmit(String str) {
            return false;
        }

        public boolean onQueryTextChange(String str) {
            return false;
        }
    }

    static class SearchViewCompatHoneycombImpl extends SearchViewCompatStubImpl {
        SearchViewCompatHoneycombImpl() {
        }

        public View newSearchView(Context context) {
            return SearchViewCompatHoneycomb.newSearchView(context);
        }

        public void setSearchableInfo(View view, ComponentName componentName) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setSearchableInfo(view, componentName);
        }

        public Object newOnQueryTextListener(final OnQueryTextListener onQueryTextListener) {
            return SearchViewCompatHoneycomb.newOnQueryTextListener(new OnQueryTextListenerCompatBridge() {
                public boolean onQueryTextSubmit(String str) {
                    return onQueryTextListener.onQueryTextSubmit(str);
                }

                public boolean onQueryTextChange(String str) {
                    return onQueryTextListener.onQueryTextChange(str);
                }
            });
        }

        public void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setOnQueryTextListener(view, newOnQueryTextListener(onQueryTextListener));
        }

        public Object newOnCloseListener(final OnCloseListener onCloseListener) {
            return SearchViewCompatHoneycomb.newOnCloseListener(new OnCloseListenerCompatBridge() {
                public boolean onClose() {
                    return onCloseListener.onClose();
                }
            });
        }

        public void setOnCloseListener(View view, OnCloseListener onCloseListener) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setOnCloseListener(view, newOnCloseListener(onCloseListener));
        }

        public CharSequence getQuery(View view) {
            checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.getQuery(view);
        }

        public void setQuery(View view, CharSequence charSequence, boolean z) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQuery(view, charSequence, z);
        }

        public void setQueryHint(View view, CharSequence charSequence) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQueryHint(view, charSequence);
        }

        public void setIconified(View view, boolean z) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setIconified(view, z);
        }

        public boolean isIconified(View view) {
            checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isIconified(view);
        }

        public void setSubmitButtonEnabled(View view, boolean z) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setSubmitButtonEnabled(view, z);
        }

        public boolean isSubmitButtonEnabled(View view) {
            checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isSubmitButtonEnabled(view);
        }

        public void setQueryRefinementEnabled(View view, boolean z) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setQueryRefinementEnabled(view, z);
        }

        public boolean isQueryRefinementEnabled(View view) {
            checkIfLegalArg(view);
            return SearchViewCompatHoneycomb.isQueryRefinementEnabled(view);
        }

        public void setMaxWidth(View view, int i) {
            checkIfLegalArg(view);
            SearchViewCompatHoneycomb.setMaxWidth(view, i);
        }

        /* access modifiers changed from: protected */
        public void checkIfLegalArg(View view) {
            SearchViewCompatHoneycomb.checkIfLegalArg(view);
        }
    }

    static class SearchViewCompatIcsImpl extends SearchViewCompatHoneycombImpl {
        SearchViewCompatIcsImpl() {
        }

        public View newSearchView(Context context) {
            return SearchViewCompatIcs.newSearchView(context);
        }

        public void setImeOptions(View view, int i) {
            checkIfLegalArg(view);
            SearchViewCompatIcs.setImeOptions(view, i);
        }

        public void setInputType(View view, int i) {
            checkIfLegalArg(view);
            SearchViewCompatIcs.setInputType(view, i);
        }
    }

    interface SearchViewCompatImpl {
        CharSequence getQuery(View view);

        boolean isIconified(View view);

        boolean isQueryRefinementEnabled(View view);

        boolean isSubmitButtonEnabled(View view);

        Object newOnCloseListener(OnCloseListener onCloseListener);

        Object newOnQueryTextListener(OnQueryTextListener onQueryTextListener);

        View newSearchView(Context context);

        void setIconified(View view, boolean z);

        void setImeOptions(View view, int i);

        void setInputType(View view, int i);

        void setMaxWidth(View view, int i);

        void setOnCloseListener(View view, OnCloseListener onCloseListener);

        void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener);

        void setQuery(View view, CharSequence charSequence, boolean z);

        void setQueryHint(View view, CharSequence charSequence);

        void setQueryRefinementEnabled(View view, boolean z);

        void setSearchableInfo(View view, ComponentName componentName);

        void setSubmitButtonEnabled(View view, boolean z);
    }

    static class SearchViewCompatStubImpl implements SearchViewCompatImpl {
        SearchViewCompatStubImpl() {
        }

        public View newSearchView(Context context) {
            return null;
        }

        public void setSearchableInfo(View view, ComponentName componentName) {
        }

        public void setImeOptions(View view, int i) {
        }

        public void setInputType(View view, int i) {
        }

        public Object newOnQueryTextListener(OnQueryTextListener onQueryTextListener) {
            return null;
        }

        public void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
        }

        public Object newOnCloseListener(OnCloseListener onCloseListener) {
            return null;
        }

        public void setOnCloseListener(View view, OnCloseListener onCloseListener) {
        }

        public CharSequence getQuery(View view) {
            return null;
        }

        public void setQuery(View view, CharSequence charSequence, boolean z) {
        }

        public void setQueryHint(View view, CharSequence charSequence) {
        }

        public void setIconified(View view, boolean z) {
        }

        public boolean isIconified(View view) {
            return true;
        }

        public void setSubmitButtonEnabled(View view, boolean z) {
        }

        public boolean isSubmitButtonEnabled(View view) {
            return false;
        }

        public void setQueryRefinementEnabled(View view, boolean z) {
        }

        public boolean isQueryRefinementEnabled(View view) {
            return false;
        }

        public void setMaxWidth(View view, int i) {
        }
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new SearchViewCompatIcsImpl();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new SearchViewCompatHoneycombImpl();
        } else {
            IMPL = new SearchViewCompatStubImpl();
        }
    }

    private SearchViewCompat(Context context) {
    }

    public static View newSearchView(Context context) {
        return IMPL.newSearchView(context);
    }

    public static void setSearchableInfo(View view, ComponentName componentName) {
        IMPL.setSearchableInfo(view, componentName);
    }

    public static void setImeOptions(View view, int i) {
        IMPL.setImeOptions(view, i);
    }

    public static void setInputType(View view, int i) {
        IMPL.setInputType(view, i);
    }

    public static void setOnQueryTextListener(View view, OnQueryTextListener onQueryTextListener) {
        IMPL.setOnQueryTextListener(view, onQueryTextListener);
    }

    public static void setOnCloseListener(View view, OnCloseListener onCloseListener) {
        IMPL.setOnCloseListener(view, onCloseListener);
    }

    public static CharSequence getQuery(View view) {
        return IMPL.getQuery(view);
    }

    public static void setQuery(View view, CharSequence charSequence, boolean z) {
        IMPL.setQuery(view, charSequence, z);
    }

    public static void setQueryHint(View view, CharSequence charSequence) {
        IMPL.setQueryHint(view, charSequence);
    }

    public static void setIconified(View view, boolean z) {
        IMPL.setIconified(view, z);
    }

    public static boolean isIconified(View view) {
        return IMPL.isIconified(view);
    }

    public static void setSubmitButtonEnabled(View view, boolean z) {
        IMPL.setSubmitButtonEnabled(view, z);
    }

    public static boolean isSubmitButtonEnabled(View view) {
        return IMPL.isSubmitButtonEnabled(view);
    }

    public static void setQueryRefinementEnabled(View view, boolean z) {
        IMPL.setQueryRefinementEnabled(view, z);
    }

    public static boolean isQueryRefinementEnabled(View view) {
        return IMPL.isQueryRefinementEnabled(view);
    }

    public static void setMaxWidth(View view, int i) {
        IMPL.setMaxWidth(view, i);
    }
}
