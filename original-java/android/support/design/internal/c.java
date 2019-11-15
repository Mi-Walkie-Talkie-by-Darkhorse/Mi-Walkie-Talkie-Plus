package android.support.design.internal;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.annotation.LayoutRes;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.support.annotation.RestrictTo;
import android.support.annotation.RestrictTo.Scope;
import android.support.annotation.StyleRes;
import android.support.design.R;
import android.support.v4.view.ViewCompat;
import android.support.v4.view.WindowInsetsCompat;
import android.support.v7.view.menu.ListMenuPresenter;
import android.support.v7.view.menu.MenuBuilder;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuPresenter;
import android.support.v7.view.menu.MenuPresenter.Callback;
import android.support.v7.view.menu.MenuView;
import android.support.v7.view.menu.SubMenuBuilder;
import android.support.v7.widget.RecyclerView.Adapter;
import android.support.v7.widget.RecyclerView.ViewHolder;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.SubMenu;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;

@RestrictTo({Scope.LIBRARY_GROUP})
/* compiled from: NavigationMenuPresenter */
public class c implements MenuPresenter {
    LinearLayout a;
    MenuBuilder b;
    b c;
    LayoutInflater d;
    int e;
    boolean f;
    ColorStateList g;
    ColorStateList h;
    Drawable i;
    int j;
    final OnClickListener k = new OnClickListener() {
        public void onClick(View view) {
            NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) view;
            c.this.a(true);
            MenuItemImpl itemData = navigationMenuItemView.getItemData();
            boolean performItemAction = c.this.b.performItemAction(itemData, c.this, 0);
            if (itemData != null && itemData.isCheckable() && performItemAction) {
                c.this.c.a(itemData);
            }
            c.this.a(false);
            c.this.updateMenuView(false);
        }
    };
    private NavigationMenuView l;
    private Callback m;
    private int n;
    private int o;

    /* compiled from: NavigationMenuPresenter */
    private static class a extends j {
        public a(View view) {
            super(view);
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private class b extends Adapter<j> {
        private final ArrayList<d> b = new ArrayList<>();
        private MenuItemImpl c;
        private boolean d;

        b() {
            c();
        }

        public long getItemId(int i) {
            return (long) i;
        }

        public int getItemCount() {
            return this.b.size();
        }

        public int getItemViewType(int i) {
            d dVar = (d) this.b.get(i);
            if (dVar instanceof e) {
                return 2;
            }
            if (dVar instanceof C0000c) {
                return 3;
            }
            if (!(dVar instanceof f)) {
                throw new RuntimeException("Unknown item type.");
            } else if (((f) dVar).a().hasSubMenu()) {
                return 1;
            } else {
                return 0;
            }
        }

        /* renamed from: a */
        public j onCreateViewHolder(ViewGroup viewGroup, int i) {
            switch (i) {
                case 0:
                    return new g(c.this.d, viewGroup, c.this.k);
                case 1:
                    return new i(c.this.d, viewGroup);
                case 2:
                    return new h(c.this.d, viewGroup);
                case 3:
                    return new a(c.this.a);
                default:
                    return null;
            }
        }

        /* renamed from: a */
        public void onBindViewHolder(j jVar, int i) {
            switch (getItemViewType(i)) {
                case 0:
                    NavigationMenuItemView navigationMenuItemView = (NavigationMenuItemView) jVar.itemView;
                    navigationMenuItemView.setIconTintList(c.this.h);
                    if (c.this.f) {
                        navigationMenuItemView.setTextAppearance(c.this.e);
                    }
                    if (c.this.g != null) {
                        navigationMenuItemView.setTextColor(c.this.g);
                    }
                    ViewCompat.setBackground(navigationMenuItemView, c.this.i != null ? c.this.i.getConstantState().newDrawable() : null);
                    f fVar = (f) this.b.get(i);
                    navigationMenuItemView.setNeedsEmptyIcon(fVar.a);
                    navigationMenuItemView.initialize(fVar.a(), 0);
                    return;
                case 1:
                    ((TextView) jVar.itemView).setText(((f) this.b.get(i)).a().getTitle());
                    return;
                case 2:
                    e eVar = (e) this.b.get(i);
                    jVar.itemView.setPadding(0, eVar.a(), 0, eVar.b());
                    return;
                default:
                    return;
            }
        }

        /* renamed from: a */
        public void onViewRecycled(j jVar) {
            if (jVar instanceof g) {
                ((NavigationMenuItemView) jVar.itemView).a();
            }
        }

        public void a() {
            c();
            notifyDataSetChanged();
        }

        private void c() {
            boolean z;
            int i;
            int i2;
            if (!this.d) {
                this.d = true;
                this.b.clear();
                this.b.add(new C0000c());
                int i3 = -1;
                int i4 = 0;
                boolean z2 = false;
                int size = c.this.b.getVisibleItems().size();
                int i5 = 0;
                while (i5 < size) {
                    MenuItemImpl menuItemImpl = (MenuItemImpl) c.this.b.getVisibleItems().get(i5);
                    if (menuItemImpl.isChecked()) {
                        a(menuItemImpl);
                    }
                    if (menuItemImpl.isCheckable()) {
                        menuItemImpl.setExclusiveCheckable(false);
                    }
                    if (menuItemImpl.hasSubMenu()) {
                        SubMenu subMenu = menuItemImpl.getSubMenu();
                        if (subMenu.hasVisibleItems()) {
                            if (i5 != 0) {
                                this.b.add(new e(c.this.j, 0));
                            }
                            this.b.add(new f(menuItemImpl));
                            boolean z3 = false;
                            int size2 = this.b.size();
                            int size3 = subMenu.size();
                            for (int i6 = 0; i6 < size3; i6++) {
                                MenuItemImpl menuItemImpl2 = (MenuItemImpl) subMenu.getItem(i6);
                                if (menuItemImpl2.isVisible()) {
                                    if (!z3 && menuItemImpl2.getIcon() != null) {
                                        z3 = true;
                                    }
                                    if (menuItemImpl2.isCheckable()) {
                                        menuItemImpl2.setExclusiveCheckable(false);
                                    }
                                    if (menuItemImpl.isChecked()) {
                                        a(menuItemImpl);
                                    }
                                    this.b.add(new f(menuItemImpl2));
                                }
                            }
                            if (z3) {
                                a(size2, this.b.size());
                            }
                        }
                        i2 = i3;
                    } else {
                        int groupId = menuItemImpl.getGroupId();
                        if (groupId != i3) {
                            i = this.b.size();
                            z = menuItemImpl.getIcon() != null;
                            if (i5 != 0) {
                                i++;
                                this.b.add(new e(c.this.j, c.this.j));
                            }
                        } else if (z2 || menuItemImpl.getIcon() == null) {
                            z = z2;
                            i = i4;
                        } else {
                            z = true;
                            a(i4, this.b.size());
                            i = i4;
                        }
                        f fVar = new f(menuItemImpl);
                        fVar.a = z;
                        this.b.add(fVar);
                        z2 = z;
                        i4 = i;
                        i2 = groupId;
                    }
                    i5++;
                    i3 = i2;
                }
                this.d = false;
            }
        }

        private void a(int i, int i2) {
            while (i < i2) {
                ((f) this.b.get(i)).a = true;
                i++;
            }
        }

        public void a(MenuItemImpl menuItemImpl) {
            if (this.c != menuItemImpl && menuItemImpl.isCheckable()) {
                if (this.c != null) {
                    this.c.setChecked(false);
                }
                this.c = menuItemImpl;
                menuItemImpl.setChecked(true);
            }
        }

        public Bundle b() {
            Bundle bundle = new Bundle();
            if (this.c != null) {
                bundle.putInt("android:menu:checked", this.c.getItemId());
            }
            SparseArray sparseArray = new SparseArray();
            int size = this.b.size();
            for (int i = 0; i < size; i++) {
                d dVar = (d) this.b.get(i);
                if (dVar instanceof f) {
                    MenuItemImpl a2 = ((f) dVar).a();
                    View view = a2 != null ? a2.getActionView() : null;
                    if (view != null) {
                        ParcelableSparseArray parcelableSparseArray = new ParcelableSparseArray();
                        view.saveHierarchyState(parcelableSparseArray);
                        sparseArray.put(a2.getItemId(), parcelableSparseArray);
                    }
                }
            }
            bundle.putSparseParcelableArray("android:menu:action_views", sparseArray);
            return bundle;
        }

        public void a(Bundle bundle) {
            int i = bundle.getInt("android:menu:checked", 0);
            if (i != 0) {
                this.d = true;
                int size = this.b.size();
                int i2 = 0;
                while (true) {
                    if (i2 >= size) {
                        break;
                    }
                    d dVar = (d) this.b.get(i2);
                    if (dVar instanceof f) {
                        MenuItemImpl a2 = ((f) dVar).a();
                        if (a2 != null && a2.getItemId() == i) {
                            a(a2);
                            break;
                        }
                    }
                    i2++;
                }
                this.d = false;
                c();
            }
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray("android:menu:action_views");
            if (sparseParcelableArray != null) {
                int size2 = this.b.size();
                for (int i3 = 0; i3 < size2; i3++) {
                    d dVar2 = (d) this.b.get(i3);
                    if (dVar2 instanceof f) {
                        MenuItemImpl a3 = ((f) dVar2).a();
                        if (a3 != null) {
                            View actionView = a3.getActionView();
                            if (actionView != null) {
                                ParcelableSparseArray parcelableSparseArray = (ParcelableSparseArray) sparseParcelableArray.get(a3.getItemId());
                                if (parcelableSparseArray != null) {
                                    actionView.restoreHierarchyState(parcelableSparseArray);
                                }
                            }
                        }
                    }
                }
            }
        }

        public void a(boolean z) {
            this.d = z;
        }
    }

    /* renamed from: android.support.design.internal.c$c reason: collision with other inner class name */
    /* compiled from: NavigationMenuPresenter */
    private static class C0000c implements d {
        C0000c() {
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private interface d {
    }

    /* compiled from: NavigationMenuPresenter */
    private static class e implements d {
        private final int a;
        private final int b;

        public e(int i, int i2) {
            this.a = i;
            this.b = i2;
        }

        public int a() {
            return this.a;
        }

        public int b() {
            return this.b;
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private static class f implements d {
        boolean a;
        private final MenuItemImpl b;

        f(MenuItemImpl menuItemImpl) {
            this.b = menuItemImpl;
        }

        public MenuItemImpl a() {
            return this.b;
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private static class g extends j {
        public g(LayoutInflater layoutInflater, ViewGroup viewGroup, OnClickListener onClickListener) {
            super(layoutInflater.inflate(R.layout.design_navigation_item, viewGroup, false));
            this.itemView.setOnClickListener(onClickListener);
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private static class h extends j {
        public h(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_separator, viewGroup, false));
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private static class i extends j {
        public i(LayoutInflater layoutInflater, ViewGroup viewGroup) {
            super(layoutInflater.inflate(R.layout.design_navigation_item_subheader, viewGroup, false));
        }
    }

    /* compiled from: NavigationMenuPresenter */
    private static abstract class j extends ViewHolder {
        public j(View view) {
            super(view);
        }
    }

    public void initForMenu(Context context, MenuBuilder menuBuilder) {
        this.d = LayoutInflater.from(context);
        this.b = menuBuilder;
        this.j = context.getResources().getDimensionPixelOffset(R.dimen.design_navigation_separator_vertical_padding);
    }

    public MenuView getMenuView(ViewGroup viewGroup) {
        if (this.l == null) {
            this.l = (NavigationMenuView) this.d.inflate(R.layout.design_navigation_menu, viewGroup, false);
            if (this.c == null) {
                this.c = new b();
            }
            this.a = (LinearLayout) this.d.inflate(R.layout.design_navigation_item_header, this.l, false);
            this.l.setAdapter(this.c);
        }
        return this.l;
    }

    public void updateMenuView(boolean z) {
        if (this.c != null) {
            this.c.a();
        }
    }

    public void setCallback(Callback callback) {
        this.m = callback;
    }

    public boolean onSubMenuSelected(SubMenuBuilder subMenuBuilder) {
        return false;
    }

    public void onCloseMenu(MenuBuilder menuBuilder, boolean z) {
        if (this.m != null) {
            this.m.onCloseMenu(menuBuilder, z);
        }
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

    public int getId() {
        return this.n;
    }

    public void a(int i2) {
        this.n = i2;
    }

    public Parcelable onSaveInstanceState() {
        if (VERSION.SDK_INT < 11) {
            return null;
        }
        Bundle bundle = new Bundle();
        if (this.l != null) {
            SparseArray sparseArray = new SparseArray();
            this.l.saveHierarchyState(sparseArray);
            bundle.putSparseParcelableArray(ListMenuPresenter.VIEWS_TAG, sparseArray);
        }
        if (this.c != null) {
            bundle.putBundle("android:menu:adapter", this.c.b());
        }
        if (this.a == null) {
            return bundle;
        }
        SparseArray sparseArray2 = new SparseArray();
        this.a.saveHierarchyState(sparseArray2);
        bundle.putSparseParcelableArray("android:menu:header", sparseArray2);
        return bundle;
    }

    public void onRestoreInstanceState(Parcelable parcelable) {
        if (parcelable instanceof Bundle) {
            Bundle bundle = (Bundle) parcelable;
            SparseArray sparseParcelableArray = bundle.getSparseParcelableArray(ListMenuPresenter.VIEWS_TAG);
            if (sparseParcelableArray != null) {
                this.l.restoreHierarchyState(sparseParcelableArray);
            }
            Bundle bundle2 = bundle.getBundle("android:menu:adapter");
            if (bundle2 != null) {
                this.c.a(bundle2);
            }
            SparseArray sparseParcelableArray2 = bundle.getSparseParcelableArray("android:menu:header");
            if (sparseParcelableArray2 != null) {
                this.a.restoreHierarchyState(sparseParcelableArray2);
            }
        }
    }

    public void a(MenuItemImpl menuItemImpl) {
        this.c.a(menuItemImpl);
    }

    public View b(@LayoutRes int i2) {
        View inflate = this.d.inflate(i2, this.a, false);
        a(inflate);
        return inflate;
    }

    public void a(@NonNull View view) {
        this.a.addView(view);
        this.l.setPadding(0, 0, 0, this.l.getPaddingBottom());
    }

    public void b(@NonNull View view) {
        this.a.removeView(view);
        if (this.a.getChildCount() == 0) {
            this.l.setPadding(0, this.o, 0, this.l.getPaddingBottom());
        }
    }

    public int a() {
        return this.a.getChildCount();
    }

    public View c(int i2) {
        return this.a.getChildAt(i2);
    }

    @Nullable
    public ColorStateList b() {
        return this.h;
    }

    public void a(@Nullable ColorStateList colorStateList) {
        this.h = colorStateList;
        updateMenuView(false);
    }

    @Nullable
    public ColorStateList c() {
        return this.g;
    }

    public void b(@Nullable ColorStateList colorStateList) {
        this.g = colorStateList;
        updateMenuView(false);
    }

    public void d(@StyleRes int i2) {
        this.e = i2;
        this.f = true;
        updateMenuView(false);
    }

    @Nullable
    public Drawable d() {
        return this.i;
    }

    public void a(@Nullable Drawable drawable) {
        this.i = drawable;
        updateMenuView(false);
    }

    public void a(boolean z) {
        if (this.c != null) {
            this.c.a(z);
        }
    }

    public void a(WindowInsetsCompat windowInsetsCompat) {
        int systemWindowInsetTop = windowInsetsCompat.getSystemWindowInsetTop();
        if (this.o != systemWindowInsetTop) {
            this.o = systemWindowInsetTop;
            if (this.a.getChildCount() == 0) {
                this.l.setPadding(0, this.o, 0, this.l.getPaddingBottom());
            }
        }
        ViewCompat.dispatchApplyWindowInsets(this.a, windowInsetsCompat);
    }
}
