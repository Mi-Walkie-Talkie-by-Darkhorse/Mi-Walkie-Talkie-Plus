.class public Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "QMUIPriorityLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private a:I

.field public b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 14
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x2

    .line 15
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->a:I

    const/4 p1, 0x0

    .line 16
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->b:I

    const/high16 p2, -0x80000000

    .line 17
    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->c:I

    .line 18
    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->d:I

    .line 19
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->e:I

    .line 20
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->f:I

    .line 21
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->g:I

    .line 22
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->h:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 2
    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->a:I

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->b:I

    const/high16 v2, -0x80000000

    .line 4
    iput v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->c:I

    .line 5
    iput v2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->d:I

    .line 6
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->e:I

    .line 7
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->f:I

    .line 8
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->g:I

    .line 9
    iput v1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->h:I

    .line 10
    sget-object v2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout:[I

    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 11
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout_qmui_layout_priority:I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->a:I

    .line 12
    sget p2, Lcom/qmuiteam/qmui/R$styleable;->QMUIPriorityLinearLayout_Layout_qmui_layout_miniContentProtectionSize:I

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->b:I

    .line 13
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 23
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const/4 p1, 0x2

    .line 24
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->a:I

    const/4 p1, 0x0

    .line 25
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->b:I

    const/high16 v0, -0x80000000

    .line 26
    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->c:I

    .line 27
    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->d:I

    .line 28
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->e:I

    .line 29
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->f:I

    .line 30
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->g:I

    .line 31
    iput p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->h:I

    return-void
.end method


# virtual methods
.method a()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->c:I

    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_0

    .line 2
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->c:I

    .line 3
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->e:I

    .line 4
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->f:I

    goto :goto_0

    .line 5
    :cond_0
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->e:I

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->f:I

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 8
    :goto_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->d:I

    if-ne v0, v1, :cond_1

    .line 9
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->d:I

    .line 10
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->g:I

    .line 11
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    iput v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->h:I

    goto :goto_1

    .line 12
    :cond_1
    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 13
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->g:I

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 14
    iget v0, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->h:I

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    :goto_1
    return-void
.end method

.method public b(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 v0, 0x3

    if-nez p1, :cond_1

    .line 2
    iget p1, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    if-ltz p1, :cond_2

    return v0

    .line 3
    :cond_1
    iget p1, p0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    if-ltz p1, :cond_2

    return v0

    .line 4
    :cond_2
    iget p1, p0, Lcom/qmuiteam/qmui/layout/QMUIPriorityLinearLayout$LayoutParams;->a:I

    return p1
.end method
