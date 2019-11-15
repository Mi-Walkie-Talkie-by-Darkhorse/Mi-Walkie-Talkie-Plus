package com.amap.api.services.help;

import android.content.Context;
import com.amap.api.col.sl.bf;
import com.amap.api.col.sl.bo;
import com.amap.api.col.sl.cy;
import com.amap.api.col.sl.s;
import com.amap.api.services.core.AMapException;
import com.amap.api.services.interfaces.IInputtipsSearch;
import com.google.devtools.build.android.desugar.runtime.ThrowableExtension;
import java.util.List;

public final class Inputtips {
    private IInputtipsSearch a = null;

    public interface InputtipsListener {
        void onGetInputtips(List<Tip> list, int i);
    }

    public Inputtips(Context context, InputtipsListener inputtipsListener) {
        try {
            Context context2 = context;
            this.a = (IInputtipsSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.InputtipsSearchWrapper", bf.class, new Class[]{Context.class, InputtipsListener.class}, new Object[]{context, inputtipsListener});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bf(context, inputtipsListener);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public Inputtips(Context context, InputtipsQuery inputtipsQuery) {
        try {
            Context context2 = context;
            this.a = (IInputtipsSearch) cy.a(context2, s.a(true), "com.amap.api.services.dynamic.InputtipsSearchWrapper", bf.class, new Class[]{Context.class, InputtipsQuery.class}, new Object[]{context, inputtipsQuery});
        } catch (bo e) {
            ThrowableExtension.printStackTrace(e);
        }
        if (this.a == null) {
            try {
                this.a = new bf(context, inputtipsQuery);
            } catch (Exception e2) {
                ThrowableExtension.printStackTrace(e2);
            }
        }
    }

    public final InputtipsQuery getQuery() {
        if (this.a != null) {
            return this.a.getQuery();
        }
        return null;
    }

    public final void setQuery(InputtipsQuery inputtipsQuery) {
        if (this.a != null) {
            this.a.setQuery(inputtipsQuery);
        }
    }

    public final void setInputtipsListener(InputtipsListener inputtipsListener) {
        if (this.a != null) {
            this.a.setInputtipsListener(inputtipsListener);
        }
    }

    public final void requestInputtipsAsyn() {
        if (this.a != null) {
            this.a.requestInputtipsAsyn();
        }
    }

    public final List<Tip> requestInputtips() throws AMapException {
        if (this.a != null) {
            return this.a.requestInputtips();
        }
        return null;
    }

    public final void requestInputtips(String str, String str2) throws AMapException {
        if (this.a != null) {
            this.a.requestInputtips(str, str2);
        }
    }

    public final void requestInputtips(String str, String str2, String str3) throws AMapException {
        if (this.a != null) {
            this.a.requestInputtips(str, str2, str3);
        }
    }
}
