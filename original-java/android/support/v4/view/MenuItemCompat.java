package android.support.v4.view;

import android.os.Build.VERSION;
import android.support.v4.internal.view.SupportMenuItem;
import android.util.Log;
import android.view.MenuItem;
import android.view.View;

public final class MenuItemCompat {
    static final MenuVersionImpl IMPL;
    public static final int SHOW_AS_ACTION_ALWAYS = 2;
    public static final int SHOW_AS_ACTION_COLLAPSE_ACTION_VIEW = 8;
    public static final int SHOW_AS_ACTION_IF_ROOM = 1;
    public static final int SHOW_AS_ACTION_NEVER = 0;
    public static final int SHOW_AS_ACTION_WITH_TEXT = 4;
    private static final String TAG = "MenuItemCompat";

    static class BaseMenuVersionImpl implements MenuVersionImpl {
        BaseMenuVersionImpl() {
        }

        public void setShowAsAction(MenuItem menuItem, int i) {
        }

        public MenuItem setActionView(MenuItem menuItem, View view) {
            return menuItem;
        }

        public MenuItem setActionView(MenuItem menuItem, int i) {
            return menuItem;
        }

        public View getActionView(MenuItem menuItem) {
            return null;
        }

        public boolean expandActionView(MenuItem menuItem) {
            return false;
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return false;
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return false;
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }
    }

    static class HoneycombMenuVersionImpl implements MenuVersionImpl {
        HoneycombMenuVersionImpl() {
        }

        public void setShowAsAction(MenuItem menuItem, int i) {
            MenuItemCompatHoneycomb.setShowAsAction(menuItem, i);
        }

        public MenuItem setActionView(MenuItem menuItem, View view) {
            return MenuItemCompatHoneycomb.setActionView(menuItem, view);
        }

        public MenuItem setActionView(MenuItem menuItem, int i) {
            return MenuItemCompatHoneycomb.setActionView(menuItem, i);
        }

        public View getActionView(MenuItem menuItem) {
            return MenuItemCompatHoneycomb.getActionView(menuItem);
        }

        public boolean expandActionView(MenuItem menuItem) {
            return false;
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return false;
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return false;
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
            return menuItem;
        }
    }

    static class IcsMenuVersionImpl extends HoneycombMenuVersionImpl {
        IcsMenuVersionImpl() {
        }

        public boolean expandActionView(MenuItem menuItem) {
            return MenuItemCompatIcs.expandActionView(menuItem);
        }

        public boolean collapseActionView(MenuItem menuItem) {
            return MenuItemCompatIcs.collapseActionView(menuItem);
        }

        public boolean isActionViewExpanded(MenuItem menuItem) {
            return MenuItemCompatIcs.isActionViewExpanded(menuItem);
        }

        public MenuItem setOnActionExpandListener(MenuItem menuItem, final OnActionExpandListener onActionExpandListener) {
            if (onActionExpandListener == null) {
                return MenuItemCompatIcs.setOnActionExpandListener(menuItem, null);
            }
            return MenuItemCompatIcs.setOnActionExpandListener(menuItem, new SupportActionExpandProxy() {
                public boolean onMenuItemActionExpand(MenuItem menuItem) {
                    return onActionExpandListener.onMenuItemActionExpand(menuItem);
                }

                public boolean onMenuItemActionCollapse(MenuItem menuItem) {
                    return onActionExpandListener.onMenuItemActionCollapse(menuItem);
                }
            });
        }
    }

    interface MenuVersionImpl {
        boolean collapseActionView(MenuItem menuItem);

        boolean expandActionView(MenuItem menuItem);

        View getActionView(MenuItem menuItem);

        boolean isActionViewExpanded(MenuItem menuItem);

        MenuItem setActionView(MenuItem menuItem, int i);

        MenuItem setActionView(MenuItem menuItem, View view);

        MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener);

        void setShowAsAction(MenuItem menuItem, int i);
    }

    public interface OnActionExpandListener {
        boolean onMenuItemActionCollapse(MenuItem menuItem);

        boolean onMenuItemActionExpand(MenuItem menuItem);
    }

    static {
        if (VERSION.SDK_INT >= 14) {
            IMPL = new IcsMenuVersionImpl();
        } else if (VERSION.SDK_INT >= 11) {
            IMPL = new HoneycombMenuVersionImpl();
        } else {
            IMPL = new BaseMenuVersionImpl();
        }
    }

    public static void setShowAsAction(MenuItem menuItem, int i) {
        if (menuItem instanceof SupportMenuItem) {
            ((SupportMenuItem) menuItem).setShowAsAction(i);
        } else {
            IMPL.setShowAsAction(menuItem, i);
        }
    }

    public static MenuItem setActionView(MenuItem menuItem, View view) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setActionView(view);
        }
        return IMPL.setActionView(menuItem, view);
    }

    public static MenuItem setActionView(MenuItem menuItem, int i) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setActionView(i);
        }
        return IMPL.setActionView(menuItem, i);
    }

    public static View getActionView(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).getActionView();
        }
        return IMPL.getActionView(menuItem);
    }

    public static MenuItem setActionProvider(MenuItem menuItem, ActionProvider actionProvider) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setSupportActionProvider(actionProvider);
        }
        Log.w(TAG, "setActionProvider: item does not implement SupportMenuItem; ignoring");
        return menuItem;
    }

    public static ActionProvider getActionProvider(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).getSupportActionProvider();
        }
        Log.w(TAG, "getActionProvider: item does not implement SupportMenuItem; returning null");
        return null;
    }

    public static boolean expandActionView(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).expandActionView();
        }
        return IMPL.expandActionView(menuItem);
    }

    public static boolean collapseActionView(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).collapseActionView();
        }
        return IMPL.collapseActionView(menuItem);
    }

    public static boolean isActionViewExpanded(MenuItem menuItem) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).isActionViewExpanded();
        }
        return IMPL.isActionViewExpanded(menuItem);
    }

    public static MenuItem setOnActionExpandListener(MenuItem menuItem, OnActionExpandListener onActionExpandListener) {
        if (menuItem instanceof SupportMenuItem) {
            return ((SupportMenuItem) menuItem).setSupportOnActionExpandListener(onActionExpandListener);
        }
        return IMPL.setOnActionExpandListener(menuItem, onActionExpandListener);
    }

    private MenuItemCompat() {
    }
}
