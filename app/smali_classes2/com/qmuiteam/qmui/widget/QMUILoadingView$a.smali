.class Lcom/qmuiteam/qmui/widget/QMUILoadingView$a;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/QMUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/widget/QMUILoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUILoadingView$a;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/QMUILoadingView$a;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/qmuiteam/qmui/widget/QMUILoadingView;->a(Lcom/qmuiteam/qmui/widget/QMUILoadingView;I)I

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/QMUILoadingView$a;->a:Lcom/qmuiteam/qmui/widget/QMUILoadingView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
