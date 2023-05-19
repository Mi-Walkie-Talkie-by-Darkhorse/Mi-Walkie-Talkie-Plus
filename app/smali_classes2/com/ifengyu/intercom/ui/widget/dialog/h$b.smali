.class Lcom/ifengyu/intercom/ui/widget/dialog/h$b;
.super Lcom/ifengyu/intercom/ui/widget/dialog/v;
.source "ExpandTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/h;->e(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/h;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/v;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/h$b;->a:Lcom/ifengyu/intercom/ui/widget/dialog/h;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/h;->b(Lcom/ifengyu/intercom/ui/widget/dialog/h;Z)Z

    return-void
.end method
