package com.jude.rollviewpager.adapter;

import android.database.DataSetObserver;
import android.support.v4.view.PagerAdapter;
import android.support.v4.view.ViewPager;
import android.view.View;
import android.view.ViewGroup;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import com.jude.rollviewpager.RollPagerView;
import java.lang.reflect.Field;
import java.util.ArrayList;
import java.util.Iterator;

public abstract class LoopPagerAdapter extends PagerAdapter {
    private RollPagerView a;
    private ArrayList<View> b = new ArrayList<>();

    private class a implements com.jude.rollviewpager.RollPagerView.a {
        private a() {
        }

        public void a(int i, com.jude.rollviewpager.a aVar) {
            if (aVar != null && LoopPagerAdapter.this.a() > 0) {
                aVar.setCurrent(i % LoopPagerAdapter.this.a());
            }
        }

        public void a(int i, int i2, com.jude.rollviewpager.a aVar) {
            if (aVar != null) {
                aVar.a(LoopPagerAdapter.this.a(), i2);
            }
        }
    }

    public abstract int a();

    public abstract View a(ViewGroup viewGroup, int i);

    public void notifyDataSetChanged() {
        this.b.clear();
        b();
        super.notifyDataSetChanged();
    }

    public int getItemPosition(Object obj) {
        return -2;
    }

    public void registerDataSetObserver(DataSetObserver dataSetObserver) {
        super.registerDataSetObserver(dataSetObserver);
        b();
    }

    private void b() {
        if (this.a.getViewPager().getCurrentItem() == 0 && a() > 0) {
            a(1073741823 - (1073741823 % a()));
        }
    }

    private void a(int i) {
        try {
            Field declaredField = ViewPager.class.getDeclaredField("mCurItem");
            declaredField.setAccessible(true);
            declaredField.set(this.a.getViewPager(), Integer.valueOf(i));
        } catch (NoSuchFieldException e) {
            ThrowableExtension.printStackTrace(e);
        } catch (IllegalAccessException e2) {
            ThrowableExtension.printStackTrace(e2);
        }
    }

    public LoopPagerAdapter(RollPagerView rollPagerView) {
        this.a = rollPagerView;
        rollPagerView.setHintViewDelegate(new a());
    }

    public boolean isViewFromObject(View view, Object obj) {
        return view == obj;
    }

    public void destroyItem(ViewGroup viewGroup, int i, Object obj) {
        viewGroup.removeView((View) obj);
    }

    public Object instantiateItem(ViewGroup viewGroup, int i) {
        View b2 = b(viewGroup, i % a());
        viewGroup.addView(b2);
        return b2;
    }

    private View b(ViewGroup viewGroup, int i) {
        Iterator it = this.b.iterator();
        while (it.hasNext()) {
            View view = (View) it.next();
            if (((Integer) view.getTag()).intValue() == i && view.getParent() == null) {
                return view;
            }
        }
        View a2 = a(viewGroup, i);
        a2.setTag(Integer.valueOf(i));
        this.b.add(a2);
        return a2;
    }

    @Deprecated
    public final int getCount() {
        if (a() <= 0) {
            return a();
        }
        return Integer.MAX_VALUE;
    }
}
