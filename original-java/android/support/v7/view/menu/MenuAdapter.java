package android.support.v7.view.menu;

import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v7.appcompat.R;
import android.support.v7.view.menu.MenuView.ItemView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import java.util.ArrayList;

@RestrictTo({Scope.LIBRARY_GROUP})
public class MenuAdapter extends BaseAdapter {
    static final int ITEM_LAYOUT = R.layout.abc_popup_menu_item_layout;
    MenuBuilder mAdapterMenu;
    private int mExpandedIndex = -1;
    private boolean mForceShowIcon;
    private final LayoutInflater mInflater;
    private final boolean mOverflowOnly;

    public MenuAdapter(MenuBuilder menuBuilder, LayoutInflater layoutInflater, boolean z) {
        this.mOverflowOnly = z;
        this.mInflater = layoutInflater;
        this.mAdapterMenu = menuBuilder;
        findExpandedIndex();
    }

    public boolean getForceShowIcon() {
        return this.mForceShowIcon;
    }

    public void setForceShowIcon(boolean z) {
        this.mForceShowIcon = z;
    }

    public int getCount() {
        ArrayList visibleItems = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        if (this.mExpandedIndex < 0) {
            return visibleItems.size();
        }
        return visibleItems.size() - 1;
    }

    public MenuBuilder getAdapterMenu() {
        return this.mAdapterMenu;
    }

    public MenuItemImpl getItem(int i) {
        ArrayList visibleItems = this.mOverflowOnly ? this.mAdapterMenu.getNonActionItems() : this.mAdapterMenu.getVisibleItems();
        if (this.mExpandedIndex >= 0 && i >= this.mExpandedIndex) {
            i++;
        }
        return (MenuItemImpl) visibleItems.get(i);
    }

    public long getItemId(int i) {
        return (long) i;
    }

    public View getView(int i, View view, ViewGroup viewGroup) {
        View view2;
        if (view == null) {
            view2 = this.mInflater.inflate(ITEM_LAYOUT, viewGroup, false);
        } else {
            view2 = view;
        }
        ItemView itemView = (ItemView) view2;
        if (this.mForceShowIcon) {
            ((ListMenuItemView) view2).setForceShowIcon(true);
        }
        itemView.initialize(getItem(i), 0);
        return view2;
    }

    /* access modifiers changed from: 0000 */
    public void findExpandedIndex() {
        MenuItemImpl expandedItem = this.mAdapterMenu.getExpandedItem();
        if (expandedItem != null) {
            ArrayList nonActionItems = this.mAdapterMenu.getNonActionItems();
            int size = nonActionItems.size();
            for (int i = 0; i < size; i++) {
                if (((MenuItemImpl) nonActionItems.get(i)) == expandedItem) {
                    this.mExpandedIndex = i;
                    return;
                }
            }
        }
        this.mExpandedIndex = -1;
    }

    public void notifyDataSetChanged() {
        findExpandedIndex();
        super.notifyDataSetChanged();
    }
}
