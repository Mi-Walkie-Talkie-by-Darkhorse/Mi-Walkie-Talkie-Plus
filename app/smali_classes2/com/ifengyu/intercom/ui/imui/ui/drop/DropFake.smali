.class public Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;
.super Landroid/view/View;
.source "DropFake.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;
    }
.end annotation


# instance fields
.field private a:I

.field private b:F

.field private c:F

.field private d:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->e:Z

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->b()V

    return-void
.end method

.method private a(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    :goto_0
    if-nez v0, :cond_1

    :cond_0
    :goto_1
    return-void

    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/ListView;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/GridView;

    if-nez v1, :cond_2

    instance-of v1, v0, Landroid/widget/ScrollView;

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->d:Ljava/lang/String;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->b:F

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->c:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->a:I

    int-to-float v2, v2

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->h()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->d:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->d:Ljava/lang/String;

    iget v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->b:F

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->c:F

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->j()F

    move-result v3

    add-float/2addr v2, v3

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->i()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->e:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->e:Z

    sget v0, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->b:I

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->a:I

    div-int/lit8 v0, p1, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->b:F

    div-int/lit8 v0, p2, 0x2

    int-to-float v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->c:F

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->c()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    :pswitch_0
    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->d()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a()Lcom/ifengyu/intercom/ui/imui/ui/drop/a;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/a;->a(Z)V

    invoke-direct {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->a(Z)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    invoke-interface {v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;->onDown()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;->onMove(FF)V

    goto :goto_1

    :pswitch_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    if-eqz v0, :cond_2

    invoke-direct {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->a(Z)V

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    invoke-interface {v0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;->onUp()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->d:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->invalidate()V

    return-void
.end method

.method public setTouchListener(Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake;->f:Lcom/ifengyu/intercom/ui/imui/ui/drop/DropFake$a;

    return-void
.end method
