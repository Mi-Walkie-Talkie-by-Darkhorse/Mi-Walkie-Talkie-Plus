.class public Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;
.super Landroid/view/View;
.source "QuickIndexBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;
    }
.end annotation


# static fields
.field private static final g:[Ljava/lang/String;


# instance fields
.field private a:Landroid/graphics/Paint;

.field private b:F

.field private c:I

.field private d:F

.field private e:I

.field private f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;


# direct methods
.method static constructor <clinit>()V
    .locals 28

    const-string v0, "\u2191"

    const-string v1, "A"

    const-string v2, "B"

    const-string v3, "C"

    const-string v4, "D"

    const-string v5, "E"

    const-string v6, "F"

    const-string v7, "G"

    const-string v8, "H"

    const-string v9, "I"

    const-string v10, "J"

    const-string v11, "K"

    const-string v12, "L"

    const-string v13, "M"

    const-string v14, "N"

    const-string v15, "O"

    const-string v16, "P"

    const-string v17, "Q"

    const-string v18, "R"

    const-string v19, "S"

    const-string v20, "T"

    const-string v21, "U"

    const-string v22, "V"

    const-string v23, "W"

    const-string v24, "X"

    const-string v25, "Y"

    const-string v26, "Z"

    const-string v27, "#"

    .line 1
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/high16 p1, 0x41000000    # 8.0f

    .line 4
    invoke-static {p1}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result p1

    int-to-float p1, p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->b:F

    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->a:Landroid/graphics/Paint;

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f0600c0

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->a:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->b:F

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method


# virtual methods
.method public getOnLetterUpdateListener()Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;

    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    :goto_0
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->g:[Ljava/lang/String;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    .line 4
    iget v3, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->c:I

    int-to-float v3, v3

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v5

    div-float/2addr v5, v4

    sub-float/2addr v3, v5

    float-to-int v3, v3

    .line 5
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 6
    iget-object v6, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->a:Landroid/graphics/Paint;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    invoke-virtual {v6, v2, v0, v7, v5}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 7
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    .line 8
    iget v6, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->d:F

    div-float v7, v6, v4

    int-to-float v5, v5

    div-float/2addr v5, v4

    add-float/2addr v7, v5

    int-to-float v4, v1

    mul-float v4, v4, v6

    add-float/2addr v7, v4

    float-to-int v4, v7

    int-to-float v3, v3

    int-to-float v4, v4

    .line 9
    iget-object v5, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->a:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->c:I

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x3f800000    # 1.0f

    mul-float p1, p1, p2

    sget-object p2, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->g:[Ljava/lang/String;

    array-length p2, p2

    int-to-float p2, p2

    div-float/2addr p1, p2

    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->d:F

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    .line 3
    iget-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;->b()V

    :cond_0
    const/4 p1, 0x0

    .line 5
    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->d:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-ltz p1, :cond_4

    .line 7
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->g:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_4

    .line 8
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    if-eq p1, v1, :cond_4

    .line 9
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;

    if-eqz v1, :cond_4

    .line 10
    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;->a(Ljava/lang/String;)V

    .line 11
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iget v0, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->d:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    if-ltz p1, :cond_3

    .line 13
    sget-object v0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->g:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_3

    .line 14
    iget v1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    if-eq p1, v1, :cond_3

    .line 15
    iget-object v1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;

    if-eqz v1, :cond_3

    .line 16
    aget-object v0, v0, p1

    invoke-interface {v1, v0}, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;->a(Ljava/lang/String;)V

    .line 17
    iput p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->e:I

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f06002c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setOnLetterUpdateListener(Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar;->f:Lcom/ifengyu/intercom/ui/widget/view/QuickIndexBar$a;

    return-void
.end method
