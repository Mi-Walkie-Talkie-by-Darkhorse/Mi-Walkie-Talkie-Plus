.class Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$1;
.super Ljava/lang/Object;
.source "ScrollAwareBehavior.java"

# interfaces
.implements Landroid/support/v4/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Landroid/support/design/widget/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$1;->a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$1;->a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$1;->a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$1;->a:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    return-void
.end method
