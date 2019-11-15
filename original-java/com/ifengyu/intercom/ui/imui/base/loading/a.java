package com.ifengyu.intercom.ui.imui.base.loading;

import android.view.View;

/* compiled from: LoadingStateManager */
public class a {
    public static int a = 0;
    public static int b = 0;
    public static int c = 0;
    public LoadingStateView d;
    public b e = new b() {
        public void a(View view) {
        }
    };

    /* JADX WARNING: type inference failed for: r0v7, types: [android.content.Context] */
    /* JADX WARNING: type inference failed for: r1v4, types: [android.support.v4.app.FragmentActivity] */
    /* JADX WARNING: type inference failed for: r6v0 */
    /* JADX WARNING: type inference failed for: r0v14 */
    /* JADX WARNING: type inference failed for: r0v15, types: [android.content.Context] */
    /* JADX WARNING: type inference failed for: r0v30 */
    /* JADX WARNING: type inference failed for: r0v31 */
    /* JADX WARNING: Multi-variable type inference failed */
    /* JADX WARNING: Unknown variable types count: 4 */
    /* Code decompiled incorrectly, please refer to instructions dump. */
    public a(java.lang.Object r8, com.ifengyu.intercom.ui.imui.base.loading.b r9) {
        /*
            r7 = this;
            r2 = 0
            r7.<init>()
            com.ifengyu.intercom.ui.imui.base.loading.a$1 r0 = new com.ifengyu.intercom.ui.imui.base.loading.a$1
            r0.<init>()
            r7.e = r0
            if (r9 != 0) goto L_0x000f
            com.ifengyu.intercom.ui.imui.base.loading.b r9 = r7.e
        L_0x000f:
            boolean r0 = r8 instanceof android.app.Activity
            if (r0 == 0) goto L_0x006a
            r0 = r8
            android.app.Activity r0 = (android.app.Activity) r0
            r1 = 16908290(0x1020002, float:2.3877235E-38)
            android.view.View r1 = r0.findViewById(r1)
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
        L_0x001f:
            com.ifengyu.intercom.ui.imui.base.loading.LoadingStateView r3 = new com.ifengyu.intercom.ui.imui.base.loading.LoadingStateView
            r3.<init>(r0)
            if (r1 == 0) goto L_0x00aa
            int r4 = r1.getChildCount()
            boolean r0 = r8 instanceof android.view.View
            if (r0 == 0) goto L_0x00a4
            android.view.View r8 = (android.view.View) r8
            r0 = r2
        L_0x0031:
            if (r0 >= r4) goto L_0x00bb
            android.view.View r5 = r1.getChildAt(r0)
            if (r5 != r8) goto L_0x00a1
        L_0x0039:
            r1.removeView(r8)
            android.view.ViewGroup$LayoutParams r2 = r8.getLayoutParams()
            r1.addView(r3, r0, r2)
            r3.d(r8)
        L_0x0046:
            r7.b(r9, r3)
            r7.c(r9, r3)
            r7.a(r9, r3)
            android.view.View r0 = r3.getRetryView()
            r9.a(r0)
            android.view.View r0 = r3.getLoadingView()
            r9.b(r0)
            android.view.View r0 = r3.getEmptyView()
            r9.c(r0)
            r7.d = r3
            r7.a()
            return
        L_0x006a:
            boolean r0 = r8 instanceof android.support.v4.app.Fragment
            if (r0 == 0) goto L_0x0085
            r0 = r8
            android.support.v4.app.Fragment r0 = (android.support.v4.app.Fragment) r0
            android.support.v4.app.FragmentActivity r1 = r0.getActivity()
            android.view.View r0 = r0.getView()
            android.view.ViewParent r0 = r0.getParent()
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            android.view.ViewGroup r0 = (android.view.ViewGroup) r0
            r6 = r1
            r1 = r0
            r0 = r6
            goto L_0x001f
        L_0x0085:
            boolean r0 = r8 instanceof android.view.View
            if (r0 == 0) goto L_0x0099
            r0 = r8
            android.view.View r0 = (android.view.View) r0
            android.view.ViewParent r1 = r0.getParent()
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            android.view.ViewGroup r1 = (android.view.ViewGroup) r1
            android.content.Context r0 = r0.getContext()
            goto L_0x001f
        L_0x0099:
            java.lang.IllegalArgumentException r0 = new java.lang.IllegalArgumentException
            java.lang.String r1 = "the argument's type must be Fragment or Activity: initWindow(context)"
            r0.<init>(r1)
            throw r0
        L_0x00a1:
            int r0 = r0 + 1
            goto L_0x0031
        L_0x00a4:
            android.view.View r8 = r1.getChildAt(r2)
            r0 = r2
            goto L_0x0039
        L_0x00aa:
            java.lang.String r0 = "LoadingStateManager"
            java.lang.String r1 = "Content parent is null,use LoadingStateView"
            com.ifengyu.library.util.c.a(r0, r1)
            boolean r0 = r8 instanceof android.view.View
            if (r0 == 0) goto L_0x0046
            android.view.View r8 = (android.view.View) r8
            r3.d(r8)
            goto L_0x0046
        L_0x00bb:
            r0 = r2
            goto L_0x0039
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ifengyu.intercom.ui.imui.base.loading.a.<init>(java.lang.Object, com.ifengyu.intercom.ui.imui.base.loading.b):void");
    }

    private void a(b bVar, LoadingStateView loadingStateView) {
        if (bVar.i()) {
            int c2 = bVar.c();
            if (c2 != 0) {
                loadingStateView.b(c2);
            } else {
                loadingStateView.b(bVar.f());
            }
        } else if (c != 0) {
            loadingStateView.b(c);
        }
    }

    private void b(b bVar, LoadingStateView loadingStateView) {
        if (bVar.g()) {
            int a2 = bVar.a();
            if (a2 != 0) {
                loadingStateView.a(a2);
            } else {
                loadingStateView.a(bVar.d());
            }
        } else if (a != 0) {
            loadingStateView.a(a);
        }
    }

    private void c(b bVar, LoadingStateView loadingStateView) {
        if (bVar.h()) {
            int b2 = bVar.b();
            if (b2 != 0) {
                loadingStateView.c(b2);
            } else {
                loadingStateView.c(bVar.e());
            }
        } else if (b != 0) {
            loadingStateView.c(b);
        }
    }

    public static a a(Object obj, b bVar) {
        return new a(obj, bVar);
    }

    public void a() {
        this.d.a();
    }

    public void b() {
        this.d.b();
    }

    public void c() {
        this.d.c();
    }
}
