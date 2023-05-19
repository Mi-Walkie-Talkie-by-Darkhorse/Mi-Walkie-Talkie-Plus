.class Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;
.super Ljava/lang/Object;
.source "ScrollAwareBehavior.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->c(Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

.field final synthetic b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Lcom/google/android/material/floatingactionbutton/FloatingActionButton;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    .line 2
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;->a:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    invoke-virtual {p1, v0}, Lcom/google/android/material/floatingactionbutton/FloatingActionButton;->setVisibility(I)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior$b;->b:Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;->a(Lcom/ifengyu/intercom/ui/widget/view/ScrollAwareBehavior;Z)Z

    return-void
.end method
