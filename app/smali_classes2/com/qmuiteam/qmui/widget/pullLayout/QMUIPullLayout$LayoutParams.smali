.class public Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;


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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 p2, 0x2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 p2, -0x2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const p2, 0x3ee66666    # 0.45f

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v0, 0x3b03126f    # 0.002f

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v0, 0x3fc00000    # 1.5f

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 v1, 0x2

    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 v2, -0x2

    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const v3, 0x3ee66666    # 0.45f

    iput v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v4, 0x3b03126f    # 0.002f

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v4, 0x3fc00000    # 1.5f

    iput v4, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    iput-boolean v3, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    sget-object v4, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout:[I

    invoke-virtual {p1, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_is_target:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    if-nez p2, :cond_1

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_pull_edge:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

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

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_target_view_trigger_offset:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    if-ne p2, v2, :cond_0

    iput v2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    :cond_0
    :goto_0
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_can_over_pull:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_pull_rate:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_need_receive_fling_from_target_view:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_received_fling_fraction:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_action_view_init_offset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_scroll_speed_per_pixel:I

    iget v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_trigger_until_scroll_to_trigger_offset:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPullLayout_Layout_qmui_scroll_to_trigger_offset_after_touch_up:I

    invoke-virtual {p1, p2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    :cond_1
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->a:Z

    const/4 v0, 0x2

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->b:I

    const/4 v0, -0x2

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->c:I

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->d:Z

    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->e:F

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->f:Z

    const v1, 0x3b03126f    # 0.002f

    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->g:F

    iput p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->h:I

    const/high16 v1, 0x3fc00000    # 1.5f

    iput v1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->i:F

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->j:Z

    iput-boolean v0, p0, Lcom/qmuiteam/qmui/widget/pullLayout/QMUIPullLayout$LayoutParams;->k:Z

    return-void
.end method
