.class public Lcom/qmuiteam/qmui/link/b;
.super Ljava/lang/Object;
.source "QMUILinkTouchDecorHelper.java"


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/qmuiteam/qmui/link/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/a;
    .locals 4

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 2
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p3

    float-to-int p3, p3

    .line 3
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    .line 4
    invoke-virtual {p1}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    sub-int/2addr p3, v1

    .line 5
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollX()I

    move-result v1

    add-int/2addr v0, v1

    .line 6
    invoke-virtual {p1}, Landroid/widget/TextView;->getScrollY()I

    move-result v1

    add-int/2addr p3, v1

    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p1

    .line 8
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineForVertical(I)I

    move-result p3

    int-to-float v0, v0

    const/4 v1, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p1, p3, v0}, Landroid/text/Layout;->getOffsetForHorizontal(IF)I

    move-result v2

    .line 10
    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v3

    cmpg-float v3, v0, v3

    if-ltz v3, :cond_0

    invoke-virtual {p1, p3}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    cmpl-float p1, v0, p1

    if-lez p1, :cond_1

    :cond_0
    const/4 v2, -0x1

    .line 11
    :cond_1
    const-class p1, Lcom/qmuiteam/qmui/link/a;

    invoke-interface {p2, v2, v2, p1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/qmuiteam/qmui/link/a;

    .line 12
    array-length p2, p1

    if-lez p2, :cond_2

    const/4 p2, 0x0

    .line 13
    aget-object v1, p1, p2
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_2
    return-object v1
.end method

.method public b(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_4

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/link/b;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/a;

    move-result-object p3

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p3, v1}, Lcom/qmuiteam/qmui/link/a;->a(Z)V

    .line 4
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 5
    invoke-interface {p2, p3}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v3

    .line 6
    invoke-static {p2, v0, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 7
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    .line 8
    :cond_0
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz p2, :cond_2

    .line 9
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz p3, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 10
    :goto_0
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/textview/a;->setTouchSpanHit(Z)V

    :cond_2
    if-eqz p3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    .line 11
    :cond_4
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    const/4 v4, 0x0

    if-ne v0, v3, :cond_a

    .line 12
    invoke-virtual {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/link/b;->a(Landroid/widget/TextView;Landroid/text/Spannable;Landroid/view/MotionEvent;)Lcom/qmuiteam/qmui/link/a;

    move-result-object p3

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_5

    .line 14
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/link/a;

    goto :goto_2

    :cond_5
    move-object v0, v4

    :goto_2
    if-eqz v0, :cond_6

    if-eq v0, p3, :cond_6

    .line 15
    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/link/a;->a(Z)V

    .line 16
    iput-object v4, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    .line 17
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    goto :goto_3

    :cond_6
    move-object v4, v0

    .line 18
    :goto_3
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz p2, :cond_8

    .line 19
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz v4, :cond_7

    const/4 p2, 0x1

    goto :goto_4

    :cond_7
    const/4 p2, 0x0

    .line 20
    :goto_4
    invoke-interface {p1, p2}, Lcom/qmuiteam/qmui/widget/textview/a;->setTouchSpanHit(Z)V

    :cond_8
    if-eqz v4, :cond_9

    goto :goto_5

    :cond_9
    const/4 v1, 0x0

    :goto_5
    return v1

    .line 21
    :cond_a
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_f

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_b

    .line 23
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qmuiteam/qmui/link/a;

    goto :goto_6

    :cond_b
    move-object v0, v4

    :goto_6
    if-eqz v0, :cond_c

    .line 24
    invoke-interface {v0, v2}, Lcom/qmuiteam/qmui/link/a;->a(Z)V

    .line 25
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result p3

    if-ne p3, v1, :cond_d

    .line 26
    invoke-interface {v0, p1}, Lcom/qmuiteam/qmui/link/a;->onClick(Landroid/view/View;)V

    goto :goto_7

    :cond_c
    const/4 v1, 0x0

    .line 27
    :cond_d
    :goto_7
    iput-object v4, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    .line 28
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    .line 29
    instance-of p2, p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz p2, :cond_e

    .line 30
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/a;

    .line 31
    invoke-interface {p1, v1}, Lcom/qmuiteam/qmui/widget/textview/a;->setTouchSpanHit(Z)V

    :cond_e
    return v1

    .line 32
    :cond_f
    iget-object p3, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    if-eqz p3, :cond_10

    .line 33
    invoke-virtual {p3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/qmuiteam/qmui/link/a;

    goto :goto_8

    :cond_10
    move-object p3, v4

    :goto_8
    if-eqz p3, :cond_11

    .line 34
    invoke-interface {p3, v2}, Lcom/qmuiteam/qmui/link/a;->a(Z)V

    .line 35
    :cond_11
    instance-of p3, p1, Lcom/qmuiteam/qmui/widget/textview/a;

    if-eqz p3, :cond_12

    .line 36
    check-cast p1, Lcom/qmuiteam/qmui/widget/textview/a;

    .line 37
    invoke-interface {p1, v2}, Lcom/qmuiteam/qmui/widget/textview/a;->setTouchSpanHit(Z)V

    .line 38
    :cond_12
    iput-object v4, p0, Lcom/qmuiteam/qmui/link/b;->a:Ljava/lang/ref/WeakReference;

    .line 39
    invoke-static {p2}, Landroid/text/Selection;->removeSelection(Landroid/text/Spannable;)V

    return v2
.end method
