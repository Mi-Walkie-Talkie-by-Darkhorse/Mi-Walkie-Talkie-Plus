.class Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;-><init>(Landroid/content/Context;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;->a:Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const/4 p1, 0x0

    :goto_0
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;->a:Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    if-ge p1, p2, :cond_0

    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView$a;->a:Lcom/qmuiteam/qmui/arch/QMUIFragmentActivity$DefaultRootView;

    invoke-virtual {p2, p1}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
