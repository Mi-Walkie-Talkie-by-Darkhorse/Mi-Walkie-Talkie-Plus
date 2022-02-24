.class public Lcom/qmuiteam/qmui/layout/a;
.super Ljava/lang/Object;
.source "QMUILayoutHelper.java"

# interfaces
.implements Lcom/qmuiteam/qmui/layout/IQMUILayout;


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/PorterDuffXfermode;

.field private C:I

.field private D:I

.field private E:[F

.field private F:Z

.field private G:Landroid/graphics/RectF;

.field private H:I

.field private I:I

.field private J:I

.field private K:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private L:Z

.field private M:Landroid/graphics/Path;

.field private N:Z

.field private O:I

.field private P:F

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:I

.field private a:Landroid/content/Context;

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:I

.field private s:I

.field private t:I

.field private u:I

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/view/View;)V
    .locals 5

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    .line 4
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->c:I

    .line 5
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->d:I

    .line 6
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->e:I

    .line 7
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    .line 8
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->g:I

    .line 9
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->h:I

    const/16 v1, 0xff

    .line 10
    iput v1, p0, Lcom/qmuiteam/qmui/layout/a;->j:I

    .line 11
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    .line 12
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->l:I

    .line 13
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->m:I

    .line 14
    iput v1, p0, Lcom/qmuiteam/qmui/layout/a;->o:I

    .line 15
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    .line 16
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->q:I

    .line 17
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->r:I

    .line 18
    iput v1, p0, Lcom/qmuiteam/qmui/layout/a;->t:I

    .line 19
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    .line 20
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->v:I

    .line 21
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->w:I

    .line 22
    iput v1, p0, Lcom/qmuiteam/qmui/layout/a;->y:I

    .line 23
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    .line 24
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->H:I

    const/4 v1, 0x1

    .line 25
    iput v1, p0, Lcom/qmuiteam/qmui/layout/a;->I:I

    .line 26
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->J:I

    .line 27
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/layout/a;->L:Z

    .line 28
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/qmuiteam/qmui/layout/a;->M:Landroid/graphics/Path;

    .line 29
    iput-boolean v1, p0, Lcom/qmuiteam/qmui/layout/a;->N:Z

    .line 30
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    const/high16 v2, -0x1000000

    .line 31
    iput v2, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    .line 32
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->R:I

    .line 33
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->S:I

    .line 34
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->T:I

    .line 35
    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->U:I

    .line 36
    iput-object p1, p0, Lcom/qmuiteam/qmui/layout/a;->a:Landroid/content/Context;

    .line 37
    new-instance v2, Ljava/lang/ref/WeakReference;

    invoke-direct {v2, p5}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v2, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    .line 38
    sget p5, Lcom/qmuiteam/qmui/R$color;->qmui_config_color_separator:I

    .line 39
    invoke-static {p1, p5}, Landroidx/core/content/b;->a(Landroid/content/Context;I)I

    move-result p5

    iput p5, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    iput p5, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    .line 40
    new-instance p5, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->DST_OUT:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {p5, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    iput-object p5, p0, Lcom/qmuiteam/qmui/layout/a;->B:Landroid/graphics/PorterDuffXfermode;

    .line 41
    new-instance p5, Landroid/graphics/Paint;

    invoke-direct {p5}, Landroid/graphics/Paint;-><init>()V

    iput-object p5, p0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    .line 42
    invoke-virtual {p5, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 43
    sget p5, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_alpha:I

    invoke-static {p1, p5}, Lcom/qmuiteam/qmui/util/i;->d(Landroid/content/Context;I)F

    move-result p5

    iput p5, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    .line 44
    new-instance p5, Landroid/graphics/RectF;

    invoke-direct {p5}, Landroid/graphics/RectF;-><init>()V

    iput-object p5, p0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    if-nez p2, :cond_1

    if-nez p3, :cond_1

    if-eqz p4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    goto/16 :goto_3

    .line 45
    :cond_1
    :goto_0
    sget-object p5, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout:[I

    invoke-virtual {p1, p2, p5, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 46
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result p3

    const/4 p4, 0x0

    const/4 p5, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    if-ge p4, p3, :cond_24

    .line 47
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    .line 48
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_maxWidth:I

    if-ne v3, v4, :cond_2

    .line 49
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    goto/16 :goto_2

    .line 50
    :cond_2
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_maxHeight:I

    if-ne v3, v4, :cond_3

    .line 51
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->c:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->c:I

    goto/16 :goto_2

    .line 52
    :cond_3
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_minWidth:I

    if-ne v3, v4, :cond_4

    .line 53
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->d:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->d:I

    goto/16 :goto_2

    .line 54
    :cond_4
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_android_minHeight:I

    if-ne v3, v4, :cond_5

    .line 55
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->e:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->e:I

    goto/16 :goto_2

    .line 56
    :cond_5
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerColor:I

    if-ne v3, v4, :cond_6

    .line 57
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    goto/16 :goto_2

    .line 58
    :cond_6
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerHeight:I

    if-ne v3, v4, :cond_7

    .line 59
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    goto/16 :goto_2

    .line 60
    :cond_7
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerInsetLeft:I

    if-ne v3, v4, :cond_8

    .line 61
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->g:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->g:I

    goto/16 :goto_2

    .line 62
    :cond_8
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_topDividerInsetRight:I

    if-ne v3, v4, :cond_9

    .line 63
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->h:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->h:I

    goto/16 :goto_2

    .line 64
    :cond_9
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerColor:I

    if-ne v3, v4, :cond_a

    .line 65
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    goto/16 :goto_2

    .line 66
    :cond_a
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerHeight:I

    if-ne v3, v4, :cond_b

    .line 67
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    goto/16 :goto_2

    .line 68
    :cond_b
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerInsetLeft:I

    if-ne v3, v4, :cond_c

    .line 69
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->l:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->l:I

    goto/16 :goto_2

    .line 70
    :cond_c
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_bottomDividerInsetRight:I

    if-ne v3, v4, :cond_d

    .line 71
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->m:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->m:I

    goto/16 :goto_2

    .line 72
    :cond_d
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerColor:I

    if-ne v3, v4, :cond_e

    .line 73
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    goto/16 :goto_2

    .line 74
    :cond_e
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerWidth:I

    if-ne v3, v4, :cond_f

    .line 75
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    goto/16 :goto_2

    .line 76
    :cond_f
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerInsetTop:I

    if-ne v3, v4, :cond_10

    .line 77
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->q:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->q:I

    goto/16 :goto_2

    .line 78
    :cond_10
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_leftDividerInsetBottom:I

    if-ne v3, v4, :cond_11

    .line 79
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->r:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->r:I

    goto/16 :goto_2

    .line 80
    :cond_11
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerColor:I

    if-ne v3, v4, :cond_12

    .line 81
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->x:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->x:I

    goto/16 :goto_2

    .line 82
    :cond_12
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerWidth:I

    if-ne v3, v4, :cond_13

    .line 83
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    goto/16 :goto_2

    .line 84
    :cond_13
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerInsetTop:I

    if-ne v3, v4, :cond_14

    .line 85
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->v:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->v:I

    goto/16 :goto_2

    .line 86
    :cond_14
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_rightDividerInsetBottom:I

    if-ne v3, v4, :cond_15

    .line 87
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->w:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->w:I

    goto/16 :goto_2

    .line 88
    :cond_15
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_borderColor:I

    if-ne v3, v4, :cond_16

    .line 89
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->H:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->H:I

    goto/16 :goto_2

    .line 90
    :cond_16
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_borderWidth:I

    if-ne v3, v4, :cond_17

    .line 91
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->I:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->I:I

    goto/16 :goto_2

    .line 92
    :cond_17
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_radius:I

    if-ne v3, v4, :cond_18

    .line 93
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    goto/16 :goto_2

    .line 94
    :cond_18
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outerNormalColor:I

    if-ne v3, v4, :cond_19

    .line 95
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->J:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->J:I

    goto/16 :goto_2

    .line 96
    :cond_19
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_hideRadiusSide:I

    if-ne v3, v4, :cond_1a

    .line 97
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    goto :goto_2

    .line 98
    :cond_1a
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_showBorderOnlyBeforeL:I

    if-ne v3, v4, :cond_1b

    .line 99
    iget-boolean v4, p0, Lcom/qmuiteam/qmui/layout/a;->N:Z

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qmuiteam/qmui/layout/a;->N:Z

    goto :goto_2

    .line 100
    :cond_1b
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_shadowElevation:I

    if-ne v3, v4, :cond_1c

    .line 101
    invoke-virtual {p2, v3, p5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p5

    goto :goto_2

    .line 102
    :cond_1c
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_shadowAlpha:I

    if-ne v3, v4, :cond_1d

    .line 103
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    goto :goto_2

    .line 104
    :cond_1d
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_useThemeGeneralShadowElevation:I

    if-ne v3, v4, :cond_1e

    .line 105
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    goto :goto_2

    .line 106
    :cond_1e
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetLeft:I

    if-ne v3, v4, :cond_1f

    .line 107
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->R:I

    goto :goto_2

    .line 108
    :cond_1f
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetRight:I

    if-ne v3, v4, :cond_20

    .line 109
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->S:I

    goto :goto_2

    .line 110
    :cond_20
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetTop:I

    if-ne v3, v4, :cond_21

    .line 111
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->T:I

    goto :goto_2

    .line 112
    :cond_21
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineInsetBottom:I

    if-ne v3, v4, :cond_22

    .line 113
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/qmuiteam/qmui/layout/a;->U:I

    goto :goto_2

    .line 114
    :cond_22
    sget v4, Lcom/qmuiteam/qmui/R$styleable;->QMUILayout_qmui_outlineExcludePadding:I

    if-ne v3, v4, :cond_23

    .line 115
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/qmuiteam/qmui/layout/a;->L:Z

    :cond_23
    :goto_2
    add-int/lit8 p4, p4, 0x1

    goto/16 :goto_1

    .line 116
    :cond_24
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    move v0, p5

    :goto_3
    if-nez v0, :cond_25

    if-eqz v1, :cond_25

    .line 117
    sget p2, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_elevation:I

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    .line 118
    :cond_25
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    iget p2, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p0, v2, p1, v0, p2}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View;)V
    .locals 6

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    .line 1
    invoke-direct/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/a;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/view/View;)V

    return-void
.end method

.method static synthetic a(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->h()I

    move-result p0

    return p0
.end method

.method private a(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->M:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 129
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->M:Landroid/graphics/Path;

    sget-object v1, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    invoke-virtual {v0, p2, p3, v1}, Landroid/graphics/Path;->addRoundRect(Landroid/graphics/RectF;[FLandroid/graphics/Path$Direction;)V

    .line 130
    iget-object p2, p0, Lcom/qmuiteam/qmui/layout/a;->M:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/layout/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    return p0
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    return p0
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->T:I

    return p0
.end method

.method static synthetic e(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->U:I

    return p0
.end method

.method static synthetic f(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->R:I

    return p0
.end method

.method static synthetic g(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->S:I

    return p0
.end method

.method private h()I
    .locals 3

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    return v0

    .line 5
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v2, -0x2

    if-ne v1, v2, :cond_2

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    div-int/lit8 v1, v0, 0x2

    :cond_2
    :goto_0
    return v1
.end method

.method static synthetic h(Lcom/qmuiteam/qmui/layout/a;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/qmuiteam/qmui/layout/a;->L:Z

    return p0
.end method

.method static synthetic i(Lcom/qmuiteam/qmui/layout/a;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    return p0
.end method

.method private i()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method static synthetic j(Lcom/qmuiteam/qmui/layout/a;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    return p0
.end method

.method private j()V
    .locals 2

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    if-nez v1, :cond_1

    const/4 v1, 0x0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    goto :goto_0

    :cond_1
    int-to-float v1, v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setElevation(F)V

    .line 7
    :goto_0
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_2
    return-void
.end method

.method public static k()Z
    .locals 2

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private q(I)V
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_1
    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 9
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    return v0
.end method

.method public a(I)I
    .locals 2

    .line 33
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->c:I

    if-lez v0, :cond_1

    .line 34
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 35
    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->c:I

    if-le v0, v1, :cond_1

    .line 36
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 37
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 38
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public a(II)I
    .locals 2

    .line 31
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->e:I

    if-ge p2, v0, :cond_0

    .line 32
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public a(F)V
    .locals 1

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    cmpl-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    .line 7
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    .line 8
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->j()V

    return-void
.end method

.method public a(IIF)V
    .locals 1

    .line 10
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    invoke-virtual {p0, p1, v0, p2, p3}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public a(IIIF)V
    .locals 6

    .line 11
    iget v4, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/qmuiteam/qmui/layout/a;->a(IIIIF)V

    return-void
.end method

.method public a(IIII)V
    .locals 0

    .line 27
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->e(IIII)V

    const/4 p1, 0x0

    .line 28
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    .line 29
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    .line 30
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    return-void
.end method

.method public a(IIIIF)V
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 13
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    .line 14
    iput p2, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    .line 15
    invoke-virtual {p0}, Lcom/qmuiteam/qmui/layout/a;->f()Z

    move-result p1

    iput-boolean p1, p0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    .line 16
    iput p3, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    .line 17
    iput p5, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    .line 18
    iput p4, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    .line 19
    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 20
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    if-eqz p1, :cond_2

    iget-boolean p2, p0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    int-to-float p1, p1

    .line 21
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 22
    invoke-virtual {v0, p1}, Landroid/view/View;->setElevation(F)V

    .line 23
    :goto_1
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/a;->q(I)V

    .line 24
    new-instance p1, Lcom/qmuiteam/qmui/layout/a$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/layout/a$a;-><init>(Lcom/qmuiteam/qmui/layout/a;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 25
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    const/4 p2, -0x2

    if-eq p1, p2, :cond_4

    const/4 p2, -0x1

    if-eq p1, p2, :cond_4

    if-lez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    .line 26
    :cond_5
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v8, p1

    .line 73
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_0

    return-void

    .line 74
    :cond_0
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->h()I

    move-result v9

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lez v9, :cond_1

    .line 75
    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result v4

    if-nez v4, :cond_1

    iget v4, v0, Lcom/qmuiteam/qmui/layout/a;->J:I

    if-eqz v4, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    .line 76
    :goto_0
    iget v5, v0, Lcom/qmuiteam/qmui/layout/a;->I:I

    if-lez v5, :cond_2

    iget v5, v0, Lcom/qmuiteam/qmui/layout/a;->H:I

    if-eqz v5, :cond_2

    const/4 v10, 0x1

    goto :goto_1

    :cond_2
    const/4 v10, 0x0

    :goto_1
    if-nez v4, :cond_3

    if-nez v10, :cond_3

    return-void

    .line 77
    :cond_3
    iget-boolean v5, v0, Lcom/qmuiteam/qmui/layout/a;->N:Z

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v0, Lcom/qmuiteam/qmui/layout/a;->O:I

    if-eqz v5, :cond_4

    return-void

    .line 78
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v6

    .line 79
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 80
    invoke-virtual {v1}, Landroid/view/View;->getScrollX()I

    move-result v7

    int-to-float v7, v7

    invoke-virtual {v1}, Landroid/view/View;->getScrollY()I

    move-result v11

    int-to-float v11, v11

    invoke-virtual {v8, v7, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 81
    iget v7, v0, Lcom/qmuiteam/qmui/layout/a;->I:I

    int-to-float v7, v7

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v7, v11

    .line 82
    iget-boolean v11, v0, Lcom/qmuiteam/qmui/layout/a;->L:Z

    if-eqz v11, :cond_5

    .line 83
    iget-object v11, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    .line 84
    invoke-virtual {v1}, Landroid/view/View;->getPaddingLeft()I

    move-result v12

    int-to-float v12, v12

    add-float/2addr v12, v7

    .line 85
    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v13

    int-to-float v13, v13

    add-float/2addr v13, v7

    .line 86
    invoke-virtual {v1}, Landroid/view/View;->getPaddingRight()I

    move-result v14

    sub-int v14, v5, v14

    int-to-float v14, v14

    sub-float/2addr v14, v7

    .line 87
    invoke-virtual {v1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    sub-int v1, v6, v1

    int-to-float v1, v1

    sub-float/2addr v1, v7

    .line 88
    invoke-virtual {v11, v12, v13, v14, v1}, Landroid/graphics/RectF;->set(FFFF)V

    goto :goto_2

    .line 89
    :cond_5
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    int-to-float v11, v5

    sub-float/2addr v11, v7

    int-to-float v12, v6

    sub-float/2addr v12, v7

    invoke-virtual {v1, v7, v7, v11, v12}, Landroid/graphics/RectF;->set(FFFF)V

    .line 90
    :goto_2
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    if-eqz v1, :cond_a

    .line 91
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    if-nez v1, :cond_6

    const/16 v1, 0x8

    new-array v1, v1, [F

    .line 92
    iput-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    .line 93
    :cond_6
    iget v1, v0, Lcom/qmuiteam/qmui/layout/a;->D:I

    const/4 v7, 0x7

    const/4 v11, 0x6

    const/4 v12, 0x5

    const/4 v13, 0x4

    if-ne v1, v3, :cond_7

    .line 94
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    int-to-float v2, v9

    aput v2, v1, v13

    .line 95
    aput v2, v1, v12

    .line 96
    aput v2, v1, v11

    .line 97
    aput v2, v1, v7

    goto :goto_3

    :cond_7
    const/4 v14, 0x2

    if-ne v1, v14, :cond_8

    .line 98
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    int-to-float v12, v9

    aput v12, v1, v2

    .line 99
    aput v12, v1, v3

    .line 100
    aput v12, v1, v11

    .line 101
    aput v12, v1, v7

    goto :goto_3

    :cond_8
    const/4 v7, 0x3

    if-ne v1, v7, :cond_9

    .line 102
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    int-to-float v11, v9

    aput v11, v1, v2

    .line 103
    aput v11, v1, v3

    .line 104
    aput v11, v1, v14

    .line 105
    aput v11, v1, v7

    goto :goto_3

    :cond_9
    if-ne v1, v13, :cond_a

    .line 106
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    int-to-float v2, v9

    aput v2, v1, v14

    .line 107
    aput v2, v1, v7

    .line 108
    aput v2, v1, v13

    .line 109
    aput v2, v1, v12

    :cond_a
    :goto_3
    if-eqz v4, :cond_c

    const/4 v2, 0x0

    const/4 v3, 0x0

    int-to-float v4, v5

    int-to-float v5, v6

    const/4 v6, 0x0

    const/16 v7, 0x1f

    move-object/from16 v1, p1

    .line 110
    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    move-result v1

    .line 111
    iget v2, v0, Lcom/qmuiteam/qmui/layout/a;->J:I

    invoke-virtual {v8, v2}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 112
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    iget v3, v0, Lcom/qmuiteam/qmui/layout/a;->J:I

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 113
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    iget-object v3, v0, Lcom/qmuiteam/qmui/layout/a;->B:Landroid/graphics/PorterDuffXfermode;

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 115
    iget-boolean v2, v0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    if-nez v2, :cond_b

    .line 116
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    int-to-float v3, v9

    iget-object v4, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    invoke-virtual {v8, v2, v3, v3, v4}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_4

    .line 117
    :cond_b
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    iget-object v3, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    iget-object v4, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v8, v2, v3, v4}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    .line 118
    :goto_4
    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 119
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_c
    if-eqz v10, :cond_f

    .line 120
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    iget v2, v0, Lcom/qmuiteam/qmui/layout/a;->H:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 121
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    iget v2, v0, Lcom/qmuiteam/qmui/layout/a;->I:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 122
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 123
    iget-boolean v1, v0, Lcom/qmuiteam/qmui/layout/a;->F:Z

    if-eqz v1, :cond_d

    .line 124
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->E:[F

    iget-object v3, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    invoke-direct {p0, v8, v1, v2, v3}, Lcom/qmuiteam/qmui/layout/a;->a(Landroid/graphics/Canvas;Landroid/graphics/RectF;[FLandroid/graphics/Paint;)V

    goto :goto_5

    :cond_d
    if-gtz v9, :cond_e

    .line 125
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    iget-object v2, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_5

    .line 126
    :cond_e
    iget-object v1, v0, Lcom/qmuiteam/qmui/layout/a;->G:Landroid/graphics/RectF;

    int-to-float v2, v9

    iget-object v3, v0, Lcom/qmuiteam/qmui/layout/a;->A:Landroid/graphics/Paint;

    invoke-virtual {v8, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 127
    :cond_f
    :goto_5
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Landroid/graphics/Canvas;II)V
    .locals 11

    .line 39
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 40
    :cond_0
    iget-object v1, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    if-nez v1, :cond_2

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    if-gtz v1, :cond_1

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    if-lez v1, :cond_2

    .line 41
    :cond_1
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    .line 42
    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 44
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    const/high16 v1, 0x40000000    # 2.0f

    const/16 v2, 0xff

    if-lez v0, :cond_4

    .line 45
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 46
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->j:I

    if-ge v0, v2, :cond_3

    .line 48
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 49
    :cond_3
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    int-to-float v0, v0

    div-float v7, v0, v1

    .line 50
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->g:I

    int-to-float v4, v0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->h:I

    sub-int v0, p2, v0

    int-to-float v6, v0

    iget-object v8, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    move-object v3, p1

    move v5, v7

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    :cond_4
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    if-lez v0, :cond_6

    .line 52
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 53
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->o:I

    if-ge v0, v2, :cond_5

    .line 55
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_5
    int-to-float v0, p3

    .line 56
    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    sub-float/2addr v0, v3

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-float v9, v3

    .line 57
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->l:I

    int-to-float v6, v0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->m:I

    sub-int v0, p2, v0

    int-to-float v8, v0

    iget-object v10, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    move-object v5, p1

    move v7, v9

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 58
    :cond_6
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    if-lez v0, :cond_8

    .line 59
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 60
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 61
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->t:I

    if-ge v0, v2, :cond_7

    .line 62
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    :cond_7
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    int-to-float v0, v0

    div-float v6, v0, v1

    .line 64
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->q:I

    int-to-float v5, v0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->r:I

    sub-int v0, p3, v0

    int-to-float v7, v0

    iget-object v8, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    move-object v3, p1

    move v4, v6

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 65
    :cond_8
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    if-lez v0, :cond_a

    .line 66
    iget-object v3, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    int-to-float v0, v0

    invoke-virtual {v3, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->x:I

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->y:I

    if-ge v0, v2, :cond_9

    .line 69
    iget-object v2, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    :cond_9
    int-to-float p2, p2

    .line 70
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    int-to-float v0, v0

    div-float/2addr v0, v1

    sub-float/2addr p2, v0

    float-to-double v0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-float v5, v0

    .line 71
    iget p2, p0, Lcom/qmuiteam/qmui/layout/a;->v:I

    int-to-float v4, p2

    iget p2, p0, Lcom/qmuiteam/qmui/layout/a;->w:I

    sub-int/2addr p3, p2

    int-to-float v6, p3

    iget-object v7, p0, Lcom/qmuiteam/qmui/layout/a;->z:Landroid/graphics/Paint;

    move-object v2, p1

    move v3, v5

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 72
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method public a(Z)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/layout/a;->L:Z

    .line 5
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public b()I
    .locals 1

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    return v0
.end method

.method public b(II)I
    .locals 2

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->d:I

    if-ge p2, v0, :cond_0

    .line 13
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_0
    return p1
.end method

.method public b(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->i()V

    :cond_0
    return-void
.end method

.method public b(IIII)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->f(IIII)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    .line 10
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/layout/a;->N:Z

    .line 6
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->i()V

    return-void
.end method

.method public c()F
    .locals 1

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    return v0
.end method

.method public c(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->i()V

    :cond_0
    return-void
.end method

.method public c(II)V
    .locals 2

    .line 6
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    if-ne p2, v0, :cond_0

    return-void

    .line 7
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public c(IIII)V
    .locals 0

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/qmuiteam/qmui/layout/a;->g(IIII)V

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    .line 10
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->u:I

    .line 11
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    return-void
.end method

.method public d()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    return v0
.end method

.method public d(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->i()V

    :cond_0
    return-void
.end method

.method public d(IIII)V
    .locals 1

    .line 6
    invoke-static {}, Lcom/qmuiteam/qmui/layout/a;->k()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->R:I

    .line 9
    iput p3, p0, Lcom/qmuiteam/qmui/layout/a;->S:I

    .line 10
    iput p2, p0, Lcom/qmuiteam/qmui/layout/a;->T:I

    .line 11
    iput p4, p0, Lcom/qmuiteam/qmui/layout/a;->U:I

    .line 12
    invoke-virtual {v0}, Landroid/view/View;->invalidateOutline()V

    :cond_1
    return-void
.end method

.method public e()I
    .locals 1

    .line 5
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    return v0
.end method

.method public e(I)V
    .locals 1

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->x:I

    if-eq v0, p1, :cond_0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->x:I

    .line 4
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->i()V

    :cond_0
    return-void
.end method

.method public e(IIII)V
    .locals 0

    .line 6
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->l:I

    .line 7
    iput p2, p0, Lcom/qmuiteam/qmui/layout/a;->m:I

    .line 8
    iput p4, p0, Lcom/qmuiteam/qmui/layout/a;->n:I

    .line 9
    iput p3, p0, Lcom/qmuiteam/qmui/layout/a;->k:I

    return-void
.end method

.method public f(I)I
    .locals 2

    .line 7
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    if-lez v0, :cond_1

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 9
    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    if-le v0, v1, :cond_1

    .line 10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p1

    const/high16 v0, -0x80000000

    if-ne p1, v0, :cond_0

    .line 11
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 12
    :cond_0
    iget p1, p0, Lcom/qmuiteam/qmui/layout/a;->b:I

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    :goto_0
    return p1
.end method

.method public f(IIII)V
    .locals 0

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->q:I

    .line 4
    iput p2, p0, Lcom/qmuiteam/qmui/layout/a;->r:I

    .line 5
    iput p3, p0, Lcom/qmuiteam/qmui/layout/a;->p:I

    .line 6
    iput p4, p0, Lcom/qmuiteam/qmui/layout/a;->s:I

    return-void
.end method

.method public f()Z
    .locals 2

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    if-lez v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/layout/a;->a:Landroid/content/Context;

    sget v1, Lcom/qmuiteam/qmui/R$attr;->qmui_general_shadow_elevation:I

    invoke-static {v0, v1}, Lcom/qmuiteam/qmui/util/i;->b(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    .line 3
    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    iget v2, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    iget v3, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p0, v1, v2, v0, v3}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public g(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->I:I

    return-void
.end method

.method public g(IIII)V
    .locals 0

    .line 4
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->g:I

    .line 5
    iput p2, p0, Lcom/qmuiteam/qmui/layout/a;->h:I

    .line 6
    iput p3, p0, Lcom/qmuiteam/qmui/layout/a;->f:I

    .line 7
    iput p4, p0, Lcom/qmuiteam/qmui/layout/a;->i:I

    return-void
.end method

.method public h(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->o:I

    return-void
.end method

.method public i(I)V
    .locals 3

    .line 4
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->D:I

    if-ne v0, p1, :cond_0

    return-void

    .line 5
    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    iget v2, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/qmuiteam/qmui/layout/a;->a(IIIF)V

    return-void
.end method

.method public j(I)V
    .locals 0

    .line 8
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->t:I

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->J:I

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/layout/a;->K:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public l(I)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->C:I

    if-eq v0, p1, :cond_0

    .line 2
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    iget v1, p0, Lcom/qmuiteam/qmui/layout/a;->P:F

    invoke-virtual {p0, p1, v0, v1}, Lcom/qmuiteam/qmui/layout/a;->a(IIF)V

    :cond_0
    return-void
.end method

.method public m(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->y:I

    return-void
.end method

.method public n(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->Q:I

    .line 3
    invoke-direct {p0, p1}, Lcom/qmuiteam/qmui/layout/a;->q(I)V

    return-void
.end method

.method public o(I)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->O:I

    .line 3
    invoke-direct {p0}, Lcom/qmuiteam/qmui/layout/a;->j()V

    return-void
.end method

.method public p(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->j:I

    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/layout/a;->H:I

    return-void
.end method
