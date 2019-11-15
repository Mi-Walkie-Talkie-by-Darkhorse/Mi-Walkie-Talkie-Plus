.class Lcom/ifengyu/intercom/ui/widget/dialog/i$3;
.super Lcom/ifengyu/intercom/ui/widget/dialog/z;
.source "ExpandTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/i;->b(Landroid/view/View;Landroid/view/MotionEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/ifengyu/intercom/ui/widget/dialog/i;


# direct methods
.method constructor <init>(Lcom/ifengyu/intercom/ui/widget/dialog/i;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i$3;->a:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/widget/dialog/z;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i$3;->a:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->b(Lcom/ifengyu/intercom/ui/widget/dialog/i;Z)Z

    return-void
.end method
