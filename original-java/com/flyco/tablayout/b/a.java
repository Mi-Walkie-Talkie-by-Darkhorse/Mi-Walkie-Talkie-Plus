package com.flyco.tablayout.b;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import java.util.ArrayList;
import java.util.Iterator;

/* compiled from: FragmentChangeManager */
public class a {
    private FragmentManager a;
    private int b;
    private ArrayList<Fragment> c;
    private int d;

    public a(FragmentManager fragmentManager, int i, ArrayList<Fragment> arrayList) {
        this.a = fragmentManager;
        this.b = i;
        this.c = arrayList;
        a();
    }

    private void a() {
        Iterator it = this.c.iterator();
        while (it.hasNext()) {
            Fragment fragment = (Fragment) it.next();
            this.a.beginTransaction().add(this.b, fragment).hide(fragment).commit();
        }
        a(0);
    }

    public void a(int i) {
        int i2 = 0;
        while (true) {
            int i3 = i2;
            if (i3 < this.c.size()) {
                FragmentTransaction beginTransaction = this.a.beginTransaction();
                Fragment fragment = (Fragment) this.c.get(i3);
                if (i3 == i) {
                    beginTransaction.show(fragment);
                } else {
                    beginTransaction.hide(fragment);
                }
                beginTransaction.commit();
                i2 = i3 + 1;
            } else {
                this.d = i;
                return;
            }
        }
    }
}
