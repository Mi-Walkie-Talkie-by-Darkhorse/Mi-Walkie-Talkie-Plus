.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;
.super Landroid/widget/LinearLayout;
.source "ExLinearlayout.java"


# instance fields
.field private editTextRetainWidth:I

.field private mTotalHeigth:I

.field private mTotalWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5b69\u5b50\u6709"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    add-int/2addr v2, p2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    sub-int/2addr v2, v3

    invoke-virtual {v0, p2, p3, v2, p5}, Landroid/view/View;->layout(IIII)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    sub-int v0, p4, v0

    invoke-virtual {v1, v0, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    :cond_1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6

    const/high16 v5, 0x40000000    # 2.0f

    const/4 v4, 0x0

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalHeigth:I

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    int-to-double v0, v0

    const-wide v2, 0x3fd999999999999aL    # 0.4

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildCount()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0, v4}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    sub-int v2, v3, v2

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->mTotalWidth:I

    iget v3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    sub-int/2addr v2, v3

    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-virtual {v0, v2, v4}, Landroid/view/View;->measure(II)V

    iget v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/widget/searchshowview/ExLinearlayout;->editTextRetainWidth:I

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {v1, v0, p2}, Landroid/view/View;->measure(II)V

    goto :goto_0
.end method
