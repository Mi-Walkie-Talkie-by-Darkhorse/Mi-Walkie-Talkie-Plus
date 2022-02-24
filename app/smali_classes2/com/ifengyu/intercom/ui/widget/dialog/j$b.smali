.class Lcom/ifengyu/intercom/ui/widget/dialog/j$b;
.super Lcom/ifengyu/intercom/ui/widget/dialog/x;
.source "ExpandTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/j;->b(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/j;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/j;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/x;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/j;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->b(Lcom/ifengyu/intercom/ui/widget/dialog/j;Z)Z

    return-void
.end method
