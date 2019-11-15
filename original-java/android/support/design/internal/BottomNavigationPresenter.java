package android.support.design.internal;

import android.content.Context;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.view.ViewGroup;

@RestrictTo({Scope.LIBRARY_GROUP})
public class BottomNavigationPresenter implements MenuPresenter {
    private MenuBuilder a;
    private BottomNavigationMenuView b;
    private boolean c = false;
    private int d;

    static class SavedState implements Parcelable {
        public static final Creator<SavedState> CREATOR = new Creator<SavedState>() {
            /* renamed from: a */
            public SavedState createFromParcel(Parcel parcel) {
                return new SavedState(parcel);
            }

            /* renamed from: a */
            public SavedState[] newArray(int i) {
                return new SavedState[i];
            }
        };
        int a;

        SavedState() {
        }

        SavedState(Parcel parcel) {
            this.a = parcel.readInt();
        }

        public int describeContents() {
            return 0;
        }

        public void writeToParcel(@NonNull Parcel parcel, int i) {
            parcel.writeInt(this.a);
        }
    }

    public void a(BottomNavigationMenuView bottomNavigationMenuView) {
        this.b = bottomNavigationMenuView;
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.b.initialize(this.a);
        this.a = menuBuilder;
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        return this.b;
    }

    public void updateMenuView(boolean z) {
        if (!this.c) {
            if (z) {
                this.b.a();
            } else {
                this.b.b();
            }
        }
    }

    public void setCallback(Callback callback) {
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
    }

    public boolean flagActionItems() {
        return false;
    }

    public boolean expandItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public boolean collapseItemActionView(MenuBuilder menuBuilder, MenuItemImpl menuItemImpl) {
        return false;
    }

    public void a(int i) {
        this.d = i;
    }

    public int getId() {
        return this.d;
    }

    public Parcelable onSaveInstanceState() {
        SavedState savedState = new SavedState();
        savedState.a = this.b.getSelectedItemId();
        return savedState;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof SavedState) {
            this.b.a(((SavedState) parcelable).a);
        }
    }

    public void a(boolean z) {
        this.c = z;
    }
}
