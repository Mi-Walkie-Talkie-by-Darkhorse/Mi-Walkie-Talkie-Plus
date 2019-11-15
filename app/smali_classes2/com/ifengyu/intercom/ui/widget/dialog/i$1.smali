.class Lcom/ifengyu/intercom/ui/widget/dialog/i$1;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExpandTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/i;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)V
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

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/widget/dialog/i$1;->a:Lcom/ifengyu/intercom/ui/widget/dialog/i;

    const/4 v0, 0x0

    cmpl-float v0, p4, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v2, v0}, Lcom/ifengyu/intercom/ui/widget/dialog/i;->a(Lcom/ifengyu/intercom/ui/widget/dialog/i;Z)Z

    return v1

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
