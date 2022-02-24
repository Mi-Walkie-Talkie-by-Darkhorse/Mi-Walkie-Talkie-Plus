.class Lcom/ifengyu/intercom/ui/widget/dialog/j$a;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "ExpandTouchListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ifengyu/intercom/ui/widget/dialog/j;-><init>(Landroid/content/Context;Landroid/widget/AbsListView;Landroid/view/View;III)V
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
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/j;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/dialog/j$a;->a:Lcom/ifengyu/intercom/ui/widget/dialog/j;

    const/4 p2, 0x0

    const/4 p3, 0x0

    cmpl-float p3, p4, p3

    if-lez p3, :cond_0

    const/4 p3, 0x1

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-static {p1, p3}, Lcom/ifengyu/intercom/ui/widget/dialog/j;->a(Lcom/ifengyu/intercom/ui/widget/dialog/j;Z)Z

    return p2
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
