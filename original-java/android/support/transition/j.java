package android.support.transition;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.annotation.TargetApi;
import android.support.annotation.RequiresApi;
import android.support.transition.y.b;
import android.support.transition.y.c;
import android.support.v4.view.ViewCompat;
import android.util.Log;
import android.view.View;
import android.view.ViewGroup;

@TargetApi(14)
@RequiresApi(14)
/* compiled from: FadePort */
class j extends an {
    private static boolean a = false;
    private int b;

    public j() {
        this(3);
    }

    public j(int i) {
        this.b = i;
    }

    private Animator a(View view, float f, float f2, AnimatorListenerAdapter animatorListenerAdapter) {
        ObjectAnimator objectAnimator = null;
        if (f != f2) {
            objectAnimator = ObjectAnimator.ofFloat(view, "alpha", new float[]{f, f2});
            if (a) {
                Log.d("Fade", "Created animator " + objectAnimator);
            }
            if (animatorListenerAdapter != null) {
                objectAnimator.addListener(animatorListenerAdapter);
            }
        } else if (animatorListenerAdapter != null) {
            animatorListenerAdapter.onAnimationEnd(null);
        }
        return objectAnimator;
    }

    private void d(ae aeVar) {
        int[] iArr = new int[2];
        aeVar.b.getLocationOnScreen(iArr);
        aeVar.a.put("android:fade:screenX", Integer.valueOf(iArr[0]));
        aeVar.a.put("android:fade:screenY", Integer.valueOf(iArr[1]));
    }

    public void a(ae aeVar) {
        super.a(aeVar);
        d(aeVar);
    }

    public Animator a(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        if ((this.b & 1) != 1 || aeVar2 == null) {
            return null;
        }
        final View view = aeVar2.b;
        if (a) {
            Log.d("Fade", "Fade.onAppear: startView, startVis, endView, endVis = " + (aeVar != null ? aeVar.b : null) + ", " + i + ", " + view + ", " + i2);
        }
        view.setAlpha(0.0f);
        a((b) new c() {
            boolean a = false;
            float b;

            public void a(y yVar) {
                if (!this.a) {
                    view.setAlpha(1.0f);
                }
            }

            public void b(y yVar) {
                this.b = view.getAlpha();
                view.setAlpha(1.0f);
            }

            public void c(y yVar) {
                view.setAlpha(this.b);
            }
        });
        return a(view, 0.0f, 1.0f, null);
    }

    public Animator b(ViewGroup viewGroup, ae aeVar, int i, ae aeVar2, int i2) {
        View view;
        final View view2;
        final View view3;
        View view4;
        if ((this.b & 2) != 2) {
            return null;
        }
        final View view5 = aeVar != null ? aeVar.b : null;
        if (aeVar2 != null) {
            view = aeVar2.b;
        } else {
            view = null;
        }
        if (a) {
            Log.d("Fade", "Fade.onDisappear: startView, startVis, endView, endVis = " + view5 + ", " + i + ", " + view + ", " + i2);
        }
        if (view == null || view.getParent() == null) {
            if (view != null) {
                view3 = null;
                view2 = view;
                view5 = view;
            } else {
                if (view5 != null) {
                    if (view5.getParent() == null) {
                        view3 = null;
                        view2 = view5;
                    } else if ((view5.getParent() instanceof View) && view5.getParent().getParent() == null) {
                        int id = ((View) view5.getParent()).getId();
                        if (id == -1 || viewGroup.findViewById(id) == null || !this.q) {
                            view4 = null;
                            view5 = null;
                        } else {
                            view4 = view5;
                        }
                        view3 = null;
                        view2 = view4;
                    }
                }
                view3 = null;
                view2 = null;
                view5 = null;
            }
        } else if (i2 == 4) {
            view3 = view;
            view2 = null;
            view5 = view;
        } else if (view5 == view) {
            view3 = view;
            view2 = null;
            view5 = view;
        } else {
            view3 = null;
            view2 = view5;
        }
        if (view2 != null) {
            int intValue = ((Integer) aeVar.a.get("android:fade:screenX")).intValue();
            int intValue2 = ((Integer) aeVar.a.get("android:fade:screenY")).intValue();
            int[] iArr = new int[2];
            viewGroup.getLocationOnScreen(iArr);
            ViewCompat.offsetLeftAndRight(view2, (intValue - iArr[0]) - view2.getLeft());
            ViewCompat.offsetTopAndBottom(view2, (intValue2 - iArr[1]) - view2.getTop());
            ag.a(viewGroup).a(view2);
            final int i3 = i2;
            final ViewGroup viewGroup2 = viewGroup;
            return a(view5, 1.0f, 0.0f, new AnimatorListenerAdapter() {
                public void onAnimationEnd(Animator animator) {
                    view5.setAlpha(1.0f);
                    if (view3 != null) {
                        view3.setVisibility(i3);
                    }
                    if (view2 != null) {
                        ag.a(viewGroup2).b(view2);
                    }
                }
            });
        } else if (view3 == null) {
            return null;
        } else {
            view3.setVisibility(0);
            final int i4 = i2;
            final ViewGroup viewGroup3 = viewGroup;
            return a(view5, 1.0f, 0.0f, new AnimatorListenerAdapter() {
                boolean a = false;
                float b = -1.0f;

                public void onAnimationCancel(Animator animator) {
                    this.a = true;
                    if (this.b >= 0.0f) {
                        view5.setAlpha(this.b);
                    }
                }

                public void onAnimationEnd(Animator animator) {
                    if (!this.a) {
                        view5.setAlpha(1.0f);
                    }
                    if (view3 != null && !this.a) {
                        view3.setVisibility(i4);
                    }
                    if (view2 != null) {
                        ag.a(viewGroup3).a(view2);
                    }
                }
            });
        }
    }
}
