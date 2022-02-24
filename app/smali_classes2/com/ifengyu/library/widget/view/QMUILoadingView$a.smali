.class Lcom/ifengyu/library/widget/view/QMUILoadingView$a;
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

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$a;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$a;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/ifengyu/library/widget/view/QMUILoadingView;->a(Lcom/ifengyu/library/widget/view/QMUILoadingView;I)I

    .line 2
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/QMUILoadingView$a;->a:Lcom/ifengyu/library/widget/view/QMUILoadingView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
