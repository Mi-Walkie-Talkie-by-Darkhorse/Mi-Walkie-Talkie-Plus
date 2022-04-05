.class public abstract Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$RootView;
.super Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "RootView"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Rect;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Landroid/graphics/Rect;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 0

    invoke-super {p0, p1}, Lcom/qmuiteam/qmui/widget/QMUIWindowInsetLayout;->a(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public abstract getFragmentContainerView()Landroidx/fragment/app/FragmentContainerView;
.end method
