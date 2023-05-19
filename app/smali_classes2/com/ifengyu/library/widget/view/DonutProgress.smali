.class public Lcom/ifengyu/library/widget/view/DonutProgress;
.super Landroid/view/View;
.source "DonutProgress.java"


# instance fields
.field private A:Ljava/lang/String;

.field private B:F

.field private final C:F

.field private final D:I

.field private final E:I

.field private final F:I

.field private final G:I

.field private final H:F

.field private final I:F

.field private final J:I

.field private final K:F

.field private final L:I

.field private a:Landroid/graphics/Paint;

.field private b:Landroid/graphics/Paint;

.field private c:Landroid/graphics/Paint;

.field protected d:Landroid/graphics/Paint;

.field protected e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/RectF;

.field private g:Landroid/graphics/RectF;

.field private h:I

.field private i:Z

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:F

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:F

.field private t:F

.field private u:I

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private x:F

.field private y:Ljava/lang/String;

.field private z:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->f:Landroid/graphics/RectF;

    .line 5
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->g:Landroid/graphics/RectF;

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    const/4 v1, 0x0

    .line 7
    iput v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    const-string v1, ""

    .line 8
    iput-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    const-string v1, "%"

    .line 9
    iput-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    const/4 v1, 0x0

    .line 10
    iput-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    const/16 v1, 0x42

    const/16 v2, 0x91

    const/16 v3, 0xf1

    .line 11
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->D:I

    const/16 v4, 0xcc

    .line 12
    invoke-static {v4, v4, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->E:I

    .line 13
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v4

    iput v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->F:I

    .line 14
    invoke-static {v1, v2, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->G:I

    const/high16 v1, 0x41900000    # 18.0f

    .line 15
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->H:F

    .line 16
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->I:F

    const/high16 v2, 0x40800000    # 4.0f

    .line 17
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->J:I

    const/high16 v2, 0x42c80000    # 100.0f

    .line 18
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->L:I

    const/high16 v2, 0x41200000    # 10.0f

    .line 19
    invoke-static {v2}, Lcom/ifengyu/library/utils/s;->b(F)I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->C:F

    .line 20
    invoke-static {v1}, Lcom/ifengyu/library/utils/s;->x(F)I

    move-result v1

    int-to-float v1, v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->K:F

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    sget-object v1, Lcom/ifengyu/library/R$styleable;->DonutProgress:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 22
    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->a(Landroid/content/res/TypedArray;)V

    .line 23
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 24
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->b()V

    return-void
.end method

.method private c(I)I
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->L:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_0

    :cond_1
    move p1, v1

    :goto_0
    return p1
.end method

.method private getProgressAngle()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getProgress()F

    move-result v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->o:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const/high16 v1, 0x43b40000    # 360.0f

    mul-float v0, v0, v1

    return v0
.end method


# virtual methods
.method protected a(Landroid/content/res/TypedArray;)V
    .locals 3

    .line 1
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_finished_color:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->D:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->p:I

    .line 2
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_unfinished_color:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->E:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->q:I

    .line 3
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_show_text:I

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->i:Z

    .line 4
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_drawable:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    .line 5
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_max:I

    const/16 v2, 0x64

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;->setMax(I)V

    .line 6
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_progress:I

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;->setProgress(F)V

    .line 7
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_finished_stroke_width:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->C:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    .line 8
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_unfinished_stroke_width:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->C:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    .line 9
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->i:Z

    if-eqz v0, :cond_3

    .line 10
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_prefix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 11
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    .line 12
    :cond_0
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_suffix_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 13
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    .line 14
    :cond_1
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    .line 16
    :cond_2
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_text_color:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->F:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    .line 17
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_text_size:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->H:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    .line 18
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_suffix_text_size:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->I:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->k:F

    .line 19
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_suffix_text_padding:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->J:I

    int-to-float v2, v2

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->x:F

    .line 20
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->K:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    .line 21
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->G:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    .line 22
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->A:Ljava/lang/String;

    .line 23
    :cond_3
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text_size:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->K:F

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    .line 24
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text_color:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->G:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    .line 25
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_inner_bottom_text:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->A:Ljava/lang/String;

    .line 26
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_circle_starting_degree:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->r:I

    .line 27
    sget v0, Lcom/ifengyu/library/R$styleable;->DonutProgress_donut_background_color:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->u:I

    return-void
.end method

.method protected b()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->i:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    .line 3
    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 4
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 5
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 6
    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0}, Landroid/text/TextPaint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    .line 7
    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 8
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 9
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 10
    :cond_0
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->a:Landroid/graphics/Paint;

    .line 11
    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->p:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 12
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->a:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 13
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->a:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 14
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->a:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 15
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->b:Landroid/graphics/Paint;

    .line 16
    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->q:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->b:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 18
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->b:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 19
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->b:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 20
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->c:Landroid/graphics/Paint;

    .line 21
    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->u:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method

.method public getAttributeResourceId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    return v0
.end method

.method public getFinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->p:I

    return v0
.end method

.method public getFinishedStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    return v0
.end method

.method public getInnerBackgroundColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->u:I

    return v0
.end method

.method public getInnerBottomText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->A:Ljava/lang/String;

    return-object v0
.end method

.method public getInnerBottomTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    return v0
.end method

.method public getInnerBottomTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    return v0
.end method

.method public getMax()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->o:I

    return v0
.end method

.method public getPrefixText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    return-object v0
.end method

.method public getProgress()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    return v0
.end method

.method public getStartingDegree()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->r:I

    return v0
.end method

.method public getSuffixText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    return-object v0
.end method

.method public getSuffixTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->k:F

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    return-object v0
.end method

.method public getTextColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    return v0
.end method

.method public getTextSize()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    return v0
.end method

.method public getUnfinishedStrokeColor()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->q:I

    return v0
.end method

.method public getUnfinishedStrokeWidth()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    return v0
.end method

.method public invalidate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->b()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 3
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->f:Landroid/graphics/RectF;

    .line 4
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 6
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 7
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->g:Landroid/graphics/RectF;

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v0

    .line 9
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v3, v0

    .line 10
    invoke-virtual {v1, v0, v0, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    add-float/2addr v0, v1

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v0, v6

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 13
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->f:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v2, v0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getProgressAngle()F

    move-result v3

    iget-object v5, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->a:Landroid/graphics/Paint;

    const/4 v4, 0x0

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 14
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->g:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getStartingDegree()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getProgressAngle()F

    move-result v2

    add-float/2addr v2, v0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getProgressAngle()F

    move-result v0

    const/high16 v3, 0x43b40000    # 360.0f

    sub-float/2addr v3, v0

    iget-object v5, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->b:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->i:Z

    if-eqz v0, :cond_2

    .line 16
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 18
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 19
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 20
    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    .line 21
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v2, v1

    div-float/2addr v2, v6

    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v4, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v4

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v3, v2, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 23
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    iget v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->k:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 24
    iget-object v3, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v3

    iget-object v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v4}, Landroid/graphics/Paint;->ascent()F

    move-result v4

    add-float/2addr v3, v4

    .line 25
    iget-object v4, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v5, v6

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v7, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    add-float/2addr v5, v0

    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->x:F

    add-float/2addr v5, v0

    add-float/2addr v2, v1

    sub-float/2addr v2, v3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v2, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 26
    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 27
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 28
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->B:F

    sub-float/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->descent()F

    move-result v1

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->d:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->ascent()F

    move-result v2

    add-float/2addr v1, v2

    div-float/2addr v1, v6

    sub-float/2addr v0, v1

    .line 29
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    sub-float/2addr v2, v3

    div-float/2addr v2, v6

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 30
    :cond_2
    iget v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    if-eqz v0, :cond_3

    .line 31
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 32
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v2, v6

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    :cond_3
    return-void
.end method

.method protected onMeasure(II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->c(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/ifengyu/library/widget/view/DonutProgress;->c(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x4

    sub-int/2addr p1, p2

    int-to-float p1, p1

    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->B:F

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    .line 1
    instance-of v0, p1, Landroid/os/Bundle;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Landroid/os/Bundle;

    const-string v0, "text_color"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    const-string v0, "text_size"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    const-string v0, "inner_bottom_text_size"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    const-string v0, "inner_bottom_text"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->A:Ljava/lang/String;

    const-string v0, "inner_bottom_text_color"

    .line 7
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    const-string v0, "finished_stroke_color"

    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->p:I

    const-string v0, "unfinished_stroke_color"

    .line 9
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->q:I

    const-string v0, "finished_stroke_width"

    .line 10
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    const-string v0, "unfinished_stroke_width"

    .line 11
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    const-string v0, "inner_background_color"

    .line 12
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->u:I

    const-string v0, "inner_drawable"

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    .line 14
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->b()V

    const-string v0, "max"

    .line 15
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;->setMax(I)V

    const-string v0, "starting_degree"

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;->setStartingDegree(I)V

    const-string v0, "progress"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/DonutProgress;->setProgress(F)V

    const-string v0, "prefix"

    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    const-string v0, "suffix"

    .line 19
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    const-string v0, "text"

    .line 20
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    const-string v0, "saved_instance"

    .line 21
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 22
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    invoke-super {p0}, Landroid/view/View;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    const-string v2, "saved_instance"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getTextColor()I

    move-result v1

    const-string v2, "text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getTextSize()F

    move-result v1

    const-string v2, "text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 5
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomTextSize()F

    move-result v1

    const-string v2, "inner_bottom_text_size"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 6
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomTextColor()I

    move-result v1

    int-to-float v1, v1

    const-string v2, "inner_bottom_text_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 7
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomText()Ljava/lang/String;

    move-result-object v1

    const-string v3, "inner_bottom_text"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBottomTextColor()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 9
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getFinishedStrokeColor()I

    move-result v1

    const-string v2, "finished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 10
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getUnfinishedStrokeColor()I

    move-result v1

    const-string v2, "unfinished_stroke_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 11
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getMax()I

    move-result v1

    const-string v2, "max"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 12
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getStartingDegree()I

    move-result v1

    const-string v2, "starting_degree"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 13
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getProgress()F

    move-result v1

    const-string v2, "progress"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 14
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getSuffixText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "suffix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getPrefixText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "prefix"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getText()Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getFinishedStrokeWidth()F

    move-result v1

    const-string v2, "finished_stroke_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 18
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getUnfinishedStrokeWidth()F

    move-result v1

    const-string v2, "unfinished_stroke_width"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 19
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getInnerBackgroundColor()I

    move-result v1

    const-string v2, "inner_background_color"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 20
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getAttributeResourceId()I

    move-result v1

    const-string v2, "inner_drawable"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-object v0
.end method

.method public setAttributeResourceId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->h:I

    return-void
.end method

.method public setDonut_progress(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/DonutProgress;->setProgress(F)V

    :cond_0
    return-void
.end method

.method public setFinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->p:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setFinishedStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->s:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBackgroundColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->u:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->A:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->m:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setInnerBottomTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->z:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setMax(I)V
    .locals 0

    if-lez p1, :cond_0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->o:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    :cond_0
    return-void
.end method

.method public setPrefixText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->v:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setProgress(F)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getMax()I

    move-result v0

    int-to-float v0, v0

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 3
    iget p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->getMax()I

    move-result v0

    int-to-float v0, v0

    rem-float/2addr p1, v0

    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->n:F

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setShowText(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->i:Z

    return-void
.end method

.method public setStartingDegree(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->r:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setSuffixText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->w:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setSuffixTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->k:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->y:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setTextColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->l:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setTextSize(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->j:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->q:I

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method

.method public setUnfinishedStrokeWidth(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/library/widget/view/DonutProgress;->t:F

    .line 2
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/DonutProgress;->invalidate()V

    return-void
.end method
