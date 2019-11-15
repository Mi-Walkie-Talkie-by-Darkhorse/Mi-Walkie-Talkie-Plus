package android.support.v4.view;

import android.annotation.TargetApi;
import android.content.Context;
import android.support.annotation.RequiresApi;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.LayoutInflater.Factory;
import android.view.LayoutInflater.Factory2;
import android.view.View;
import java.lang.reflect.Field;

@TargetApi(11)
@RequiresApi(11)
class LayoutInflaterCompatHC {
    private static final String TAG = "LayoutInflaterCompatHC";
    private static boolean sCheckedField;
    private static Field sLayoutInflaterFactory2Field;

    static class FactoryWrapperHC extends FactoryWrapper implements Factory2 {
        FactoryWrapperHC(LayoutInflaterFactory layoutInflaterFactory) {
            super(layoutInflaterFactory);
        }

        public View onCreateView(View view, String str, Context context, AttributeSet attributeSet) {
            return this.mDelegateFactory.onCreateView(view, str, context, attributeSet);
        }
    }

    LayoutInflaterCompatHC() {
    }

    static void setFactory(LayoutInflater layoutInflater, LayoutInflaterFactory layoutInflaterFactory) {
        Factory2 factory2;
        if (layoutInflaterFactory != null) {
            factory2 = new FactoryWrapperHC(layoutInflaterFactory);
        } else {
            factory2 = null;
        }
        layoutInflater.setFactory2(factory2);
        Factory factory = layoutInflater.getFactory();
        if (factory instanceof Factory2) {
            forceSetFactory2(layoutInflater, (Factory2) factory);
        } else {
            forceSetFactory2(layoutInflater, factory2);
        }
    }

    static void forceSetFactory2(LayoutInflater layoutInflater, Factory2 factory2) {
        if (!sCheckedField) {
            try {
                sLayoutInflaterFactory2Field = LayoutInflater.class.getDeclaredField("mFactory2");
                sLayoutInflaterFactory2Field.setAccessible(true);
            } catch (NoSuchFieldException e) {
                Log.e(TAG, "forceSetFactory2 Could not find field 'mFactory2' on class " + LayoutInflater.class.getName() + "; inflation may have unexpected results.", e);
            }
            sCheckedField = true;
        }
        if (sLayoutInflaterFactory2Field != null) {
            try {
                sLayoutInflaterFactory2Field.set(layoutInflater, factory2);
            } catch (IllegalAccessException e2) {
                Log.e(TAG, "forceSetFactory2 could not set the Factory2 on LayoutInflater " + layoutInflater + "; inflation may have unexpected results.", e2);
            }
        }
    }
}
