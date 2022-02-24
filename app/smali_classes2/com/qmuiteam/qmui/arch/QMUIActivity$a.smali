.class Lcom/qmuiteam/qmui/arch/QMUIActivity$a;
.super Ljava/lang/Object;
.source "QMUIActivity.java"

# interfaces
.implements Lcom/qmuiteam/qmui/arch/SwipeBackLayout$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/arch/QMUIActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/qmuiteam/qmui/arch/QMUIActivity;


# direct methods
.method constructor <init>(Lcom/qmuiteam/qmui/arch/QMUIActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "QMUIActivity"

    const-string v1, "SwipeListener:onEdgeTouch:onScrollOverThreshold"

    .line 28
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public a(IF)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwipeListener:onScrollStateChange: state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " ;scrollPercent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QMUIActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Z)Z

    if-nez p1, :cond_3

    .line 3
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    if-eqz p1, :cond_3

    const/4 p1, 0x0

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->b()V

    .line 5
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    goto :goto_2

    :cond_1
    const/high16 p1, 0x3f800000    # 1.0f

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_3

    .line 6
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->finish()V

    .line 7
    iget-object p1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {p1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a()Z

    move-result p1

    if-eqz p1, :cond_2

    sget p1, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_exit_still:I

    goto :goto_1

    :cond_2
    sget p1, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_exit:I

    .line 8
    :goto_1
    iget-object p2, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    sget v0, Lcom/qmuiteam/qmui/arch/R$anim;->swipe_back_enter:I

    invoke-virtual {p2, v0, p1}, Landroid/app/Activity;->overridePendingTransition(II)V

    :cond_3
    :goto_2
    return-void
.end method

.method public a(II)V
    .locals 6

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SwipeListener:onSwipeBackBegin: moveEdge = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QMUIActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-virtual {v0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->q()V

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 16
    invoke-static {}, Lcom/qmuiteam/qmui/arch/f;->b()Lcom/qmuiteam/qmui/arch/f;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    .line 17
    invoke-virtual {v1, v2}, Lcom/qmuiteam/qmui/arch/f;->a(Landroid/app/Activity;)Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    if-eqz v3, :cond_0

    .line 19
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    invoke-static {v3, v2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    goto :goto_0

    .line 20
    :cond_0
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    new-instance v4, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    iget-object v5, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-direct {v4, v5}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;-><init>(Landroid/content/Context;)V

    invoke-static {v3, v4}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    .line 21
    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {v3}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v3

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v4, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :goto_0
    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {v2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v2

    iget-object v3, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    .line 23
    invoke-virtual {v3}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->t()Z

    move-result v4

    .line 24
    invoke-virtual {v2, v1, v3, v4}, Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;->a(Landroid/app/Activity;Landroid/app/Activity;Z)V

    .line 25
    iget-object v1, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {v1}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v1

    iget-object v2, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    .line 26
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v2, v0, p1, p2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    .line 27
    invoke-static {v1, p2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;II)V

    :cond_1
    return-void
.end method

.method public a(IIF)V
    .locals 2

    .line 9
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {v0}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 10
    invoke-static {v1, p3}, Ljava/lang/Math;->min(FF)F

    move-result p3

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result p3

    .line 11
    iget-object v0, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-virtual {v0, v0, p1, p2}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Landroid/content/Context;II)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    int-to-float p1, p1

    sub-float/2addr v1, p3

    mul-float p1, p1, v1

    float-to-int p1, p1

    .line 12
    iget-object p3, p0, Lcom/qmuiteam/qmui/arch/QMUIActivity$a;->a:Lcom/qmuiteam/qmui/arch/QMUIActivity;

    invoke-static {p3}, Lcom/qmuiteam/qmui/arch/QMUIActivity;->a(Lcom/qmuiteam/qmui/arch/QMUIActivity;)Lcom/qmuiteam/qmui/arch/SwipeBackgroundView;

    move-result-object p3

    invoke-static {p3, p2, p1}, Lcom/qmuiteam/qmui/arch/SwipeBackLayout;->a(Landroid/view/View;II)V

    :cond_0
    return-void
.end method
