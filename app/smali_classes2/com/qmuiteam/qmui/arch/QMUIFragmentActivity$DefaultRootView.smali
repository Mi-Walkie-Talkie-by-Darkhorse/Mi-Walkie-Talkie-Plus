.class public Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;
.super Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$RootView;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation runtime Lcom/qmuiteam/qmui/util/DoNotInterceptKeyboardInset;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefaultRootView"
.end annotation


# instance fields
.field private d:Landroidx/fragment/app/FragmentContainerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$RootView;-><init>(Landroid/content/Context;I)V

    new-instance v0, Landroidx/fragment/app/FragmentContainerView;

    invoke-direct {v0, p1}, Landroidx/fragment/app/FragmentContainerView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;->d:Landroidx/fragment/app/FragmentContainerView;

    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->setId(I)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;->d:Landroidx/fragment/app/FragmentContainerView;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;->d:Landroidx/fragment/app/FragmentContainerView;

    new-instance p2, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;

    invoke-direct {p2, p0}, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;-><init>(Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public getFragmentContainerView()Landroidx/fragment/app/FragmentContainerView;
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;->d:Landroidx/fragment/app/FragmentContainerView;

    return-object v0
.end method
