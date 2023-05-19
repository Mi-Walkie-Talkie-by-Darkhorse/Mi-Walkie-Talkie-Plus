.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "QMUIPullLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public a:Z

.field public b:I

.field public c:I

.field public d:Z

.field public e:F

.field public f:Z

.field public g:F

.field public h:I

.field public i:F

.field public j:Z

.field public k:Z


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 29
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 p2, 0x2

    .line 30
    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 p2, -0x2

    .line 31
    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    .line 32
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const p2, 0x3ee66666    # 0.45f

    .line 33
    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 p2, 0x1

    .line 34
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v0, 0x3b03126f    # 0.002f

    .line 35
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    .line 36
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v0, 0x3fc00000    # 1.5f

    .line 37
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    .line 38
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    .line 39
    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 v1, 0x2

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 v2, -0x2

    .line 4
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    .line 5
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const v3, 0x3ee66666    # 0.45f

    .line 6
    iput v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 v3, 0x1

    .line 7
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v4, 0x3b03126f    # 0.002f

    .line 8
    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v4, 0x3fc00000    # 1.5f

    .line 10
    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    .line 11
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    .line 12
    iput-boolean v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    .line 13
    sget-object v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 14
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_is_target:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    if-nez p2, :cond_1

    .line 15
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_pull_edge:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    .line 16
    :try_start_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_target_view_trigger_offset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    nop

    .line 17
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_target_view_trigger_offset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ne p2, v2, :cond_0

    .line 18
    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    .line 19
    :cond_0
    :goto_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_can_over_pull:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    .line 20
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_pull_rate:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    .line 21
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_need_receive_fling_from_target_view:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    .line 22
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_received_fling_fraction:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    .line 23
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_action_view_init_offset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    .line 24
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_scroll_speed_per_pixel:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    .line 25
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_trigger_until_scroll_to_trigger_offset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    .line 26
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_scroll_to_trigger_offset_after_touch_up:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    .line 27
    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 40
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    .line 41
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 v0, 0x2

    .line 42
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 v0, -0x2

    .line 43
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    .line 44
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const v0, 0x3ee66666    # 0.45f

    .line 45
    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 v0, 0x1

    .line 46
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v1, 0x3b03126f    # 0.002f

    .line 47
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    .line 48
    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v1, 0x3fc00000    # 1.5f

    .line 49
    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    .line 50
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    .line 51
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    return-void
.end method
