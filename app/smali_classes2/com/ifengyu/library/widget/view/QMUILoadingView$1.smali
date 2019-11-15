.class Lcom/ifengyu/library/widget/view/QMUILoadingView$1;
.super Ljava/lang/Object;
.source "QMUILoadingView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/library/widget/view/QMUILoadingView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/library/widget/view/QMUILoadingView;


# direct methods
.method constructor <init>(Lcom/ifengyu/library/widget/view/QMUILoadingView;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$1;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$1;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a(Lcom/ifengyu/library/widget/view/QMUILoadingView;I)I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$1;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-virtual {v0}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->invalidate()V

    return-void
.end method
