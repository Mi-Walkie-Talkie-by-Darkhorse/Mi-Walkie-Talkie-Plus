.class Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;
.super Ljava/lang/Object;
.source "TabLayout.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->updateOrRecreateIndicatorAnimation(ZII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

.field final synthetic val$currentView:Landroid/view/View;

.field final synthetic val$targetView:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iput-object p2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$currentView:Landroid/view/View;

    iput-object p3, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$targetView:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3
    .param p1    # Landroid/animation/ValueAnimator;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->this$1:Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;

    iget-object v1, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$currentView:Landroid/view/View;

    iget-object v2, p0, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator$1;->val$targetView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    invoke-static {v0, v1, v2, p1}, Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;->access$1300(Lcom/google/android/material/tabs/TabLayout$SlidingTabIndicator;Landroid/view/View;Landroid/view/View;F)V

    return-void
.end method
