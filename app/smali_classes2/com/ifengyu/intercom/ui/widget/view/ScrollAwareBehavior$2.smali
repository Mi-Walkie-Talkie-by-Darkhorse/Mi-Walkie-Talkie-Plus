.class Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;
.super Ljava/lang/Object;
.source "ScrollAwareBehavior.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Landroid/support/design/widget/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/support/design/widget/FloatingActionButton;

.field final synthetic b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Landroid/support/design/widget/FloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;->a:Landroid/support/design/widget/FloatingActionButton;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$2;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    return-void
.end method
