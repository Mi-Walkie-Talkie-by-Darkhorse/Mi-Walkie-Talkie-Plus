.class public Lcom/ifengyu/library/widget/view/SwitchButton;
.super Landroid/view/View;
.source "SwitchButton.java"

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/view/SwitchButton$b;,
        Lcom/ifengyu/library/widget/view/SwitchButton$a;
    }
.end annotation


# static fields
.field private static final a:I

.field private static final b:I


# instance fields
.field private A:I

.field private B:F

.field private C:I

.field private D:I

.field private E:F

.field private F:F

.field private G:F

.field private H:F

.field private I:F

.field private J:F

.field private K:Landroid/graphics/Paint;

.field private L:Landroid/graphics/Paint;

.field private M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

.field private N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

.field private O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

.field private P:Landroid/graphics/RectF;

.field private Q:I

.field private R:Landroid/animation/ValueAnimator;

.field private final S:Landroid/animation/ArgbEvaluator;

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Z

.field private aa:Z

.field private ab:Z

.field private ac:Z

.field private ad:Lcom/ifengyu/library/widget/view/SwitchButton$a;

.field private ae:J

.field private af:Ljava/lang/Runnable;

.field private ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private ah:Landroid/animation/Animator$AnimatorListener;

.field private final c:I

.field private final d:I

.field private final e:I

.field private final f:I

.field private final g:I

.field private final h:I

.field private i:I

.field private j:I

.field private k:I

.field private l:F

.field private m:F

.field private n:F

.field private o:F

.field private p:F

.field private q:F

.field private r:F

.field private s:F

.field private t:F

.field private u:F

.field private v:I

.field private w:I

.field private x:I

.field private y:I

.field private z:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v0

    sput v0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v0

    sput v0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$1;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$2;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$3;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ah:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$1;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$2;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$3;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ah:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$1;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$2;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$3;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ah:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$1;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$1;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$2;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$2;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$3;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$3;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ah:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private static a(Landroid/content/res/TypedArray;IF)F
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    goto :goto_0
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    return p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ad:Lcom/ifengyu/library/widget/view/SwitchButton$a;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ad:Lcom/ifengyu/library/widget/view/SwitchButton$a;

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$a;->a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, -0x1

    const/high16 v3, 0x40800000    # 4.0f

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/ifengyu/library/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    :cond_0
    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_effect:I

    invoke-static {v0, v1, v6}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:Z

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_color:I

    const v2, -0x555556

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_width:I

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:I

    const/high16 v1, 0x41200000    # 10.0f

    invoke-static {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:F

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_radius:I

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IF)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:F

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:F

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:F

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_radius:I

    const/high16 v2, 0x40200000    # 2.5f

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_offset:I

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_color:I

    const/high16 v2, 0x33000000

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheck_color:I

    const v2, -0x222223

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checked_color:I

    const v2, -0xae2c99

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_border_width:I

    invoke-static {v5}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checkline_color:I

    invoke-static {v0, v1, v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:I

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checkline_width:I

    invoke-static {v5}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:I

    const/high16 v1, 0x40c00000    # 6.0f

    invoke-static {v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:F

    sget v1, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_button_color:I

    invoke-static {v0, v1, v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v1

    sget v2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_effect_duration:I

    const/16 v3, 0x12c

    invoke-static {v0, v2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result v2

    sget v3, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checked:I

    invoke-static {v0, v3, v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    sget v3, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_show_indicator:I

    invoke-static {v0, v3, v6}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->W:Z

    sget v3, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_background:I

    invoke-static {v0, v3, v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->v:I

    sget v3, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_enable_effect:I

    invoke-static {v0, v3, v6}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Z

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:I

    int-to-float v1, v1

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:I

    int-to-float v4, v4

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:I

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {v0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v7}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ag:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ah:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, v6}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v7, v7, v7, v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->setPadding(IIII)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v6, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 9

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v7, 0x1

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move/from16 v6, p7

    move-object/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    const/4 v4, 0x1

    move-object v0, p1

    move v2, p6

    move/from16 v3, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V
    .locals 8

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    move-object v0, p1

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move v6, p6

    move-object v7, p7

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Landroid/graphics/RectF;

    invoke-virtual {p1, v0, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method private a(ZZ)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ac:Z

    if-eqz v2, :cond_2

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    if-nez v2, :cond_3

    :goto_1
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_5
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Z

    if-eqz v2, :cond_6

    if-nez p1, :cond_9

    :cond_6
    iget-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    if-nez v2, :cond_7

    :goto_2
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    :goto_3
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    if-eqz p2, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2

    :cond_8
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    goto :goto_3

    :cond_9
    const/4 v0, 0x5

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a(Lcom/ifengyu/library/widget/view/SwitchButton$b;Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    :goto_4
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_a
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    goto :goto_4
.end method

.method private static a(Landroid/content/res/TypedArray;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    goto :goto_0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;)Z
    .locals 1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result v0

    return v0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    return p1
.end method

.method private static b(F)I
    .locals 1

    invoke-static {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private static b(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p2

    goto :goto_0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:I

    int-to-float v3, v0

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:F

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method static synthetic b(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->e()V

    return-void
.end method

.method private b()Z
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static c(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    :goto_0
    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    goto :goto_0
.end method

.method static synthetic c(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    return v0
.end method

.method private c()Z
    .locals 3

    const/4 v0, 0x1

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    if-eq v1, v0, :cond_0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic d(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    return-object v0
.end method

.method private d()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic e(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    return-object v0
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a(Lcom/ifengyu/library/widget/view/SwitchButton$b;Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a(Lcom/ifengyu/library/widget/view/SwitchButton$b;Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    :goto_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    goto :goto_1
.end method

.method static synthetic f(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$b;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    return-object v0
.end method

.method private f()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a(Lcom/ifengyu/library/widget/view/SwitchButton$b;Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    goto :goto_0
.end method

.method static synthetic g(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    return-object v0
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a(Lcom/ifengyu/library/widget/view/SwitchButton$b;Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    goto :goto_0
.end method

.method static synthetic h(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    return v0
.end method

.method static synthetic i(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    return v0
.end method

.method static synthetic j(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    return v0
.end method

.method static synthetic k(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    return v0
.end method

.method static synthetic l(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    return v0
.end method

.method static synthetic m(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:I

    return v0
.end method

.method static synthetic n(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    return-void
.end method

.method static synthetic o(Lcom/ifengyu/library/widget/view/SwitchButton;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    return v0
.end method

.method private setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    return-void
.end method

.method private setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 9

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v2, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:I

    int-to-float v3, v0

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:F

    sub-float v4, v0, v1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:F

    sub-float v5, v0, v1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:F

    sub-float v6, v0, v1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:F

    add-float v7, v0, v1

    iget-object v8, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V
    .locals 6

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p8, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p8, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object v0, p1

    move v1, p4

    move v2, p5

    move v3, p6

    move v4, p7

    move-object v5, p8

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method protected a(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V
    .locals 1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p7, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p7, p2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p7, p3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method public a(Z)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(ZZ)V

    return-void
.end method

.method public isChecked()Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    const/high16 v9, 0x40000000    # 2.0f

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->v:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->W:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v0, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->d:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v2, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:I

    int-to-float v2, v2

    mul-float v3, v0, v9

    add-float/2addr v2, v3

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    add-float v2, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    add-float v3, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    sub-float v4, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:F

    sub-float v5, v1, v0

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    mul-float/2addr v1, v9

    add-float v4, v0, v1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    mul-float/2addr v1, v9

    add-float v5, v0, v1

    const/high16 v6, 0x42b40000    # 90.0f

    const/high16 v7, 0x43340000    # 180.0f

    iget-object v8, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v8}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    add-float/2addr v1, v0

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v3, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    mul-float/2addr v4, v9

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->W:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v0, v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    const/high16 v3, 0x40000000    # 2.0f

    const/high16 v2, -0x80000000

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    sget v0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    sget v0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    invoke-static {v0, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 4

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    int-to-float v0, v0

    int-to-float v1, p2

    sub-float/2addr v1, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:F

    int-to-float v1, p1

    sub-float/2addr v1, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:F

    mul-float/2addr v1, v3

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:I

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:F

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    int-to-float v1, p1

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    int-to-float v1, p2

    sub-float v0, v1, v0

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->t:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:F

    add-float/2addr v0, v1

    mul-float/2addr v0, v3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:F

    sub-float/2addr v0, v1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    :goto_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ab:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$b;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8

    const/4 v1, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isClickable()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_2
    :goto_1
    move v0, v1

    goto :goto_0

    :pswitch_0
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ae:J

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    sub-float/2addr v4, v5

    mul-float/2addr v0, v4

    add-float/2addr v0, v3

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v0, v2

    invoke-static {v7, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-static {v6, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:F

    sub-float/2addr v4, v5

    mul-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->a:F

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Lcom/ifengyu/library/widget/view/SwitchButton$b;

    iget-object v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Landroid/animation/ArgbEvaluator;

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iput v0, v2, Lcom/ifengyu/library/widget/view/SwitchButton$b;->b:I

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    goto :goto_1

    :pswitch_2
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ae:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v2, v2, v4

    if-gtz v2, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->toggle()V

    goto/16 :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->getWidth()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v2, v3

    invoke-static {v7, v2}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v6, v2}, Ljava/lang/Math;->max(FF)F

    move-result v2

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_5

    move v0, v1

    :cond_5
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v2

    if-ne v0, v2, :cond_6

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->f()V

    goto/16 :goto_1

    :cond_6
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g()V

    goto/16 :goto_1

    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->f()V

    goto/16 :goto_1

    :pswitch_3
    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->aa:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->af:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result v0

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_8
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->f()V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public setChecked(Z)V
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->postInvalidate()V

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(ZZ)V

    goto :goto_0
.end method

.method public setEnableEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/ifengyu/library/widget/view/SwitchButton$a;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->ad:Lcom/ifengyu/library/widget/view/SwitchButton$a;

    return-void
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method

.method public final setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 0

    return-void
.end method

.method public final setPadding(IIII)V
    .locals 1

    const/4 v0, 0x0

    invoke-super {p0, v0, v0, v0, v0}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:Z

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:Z

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:I

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v4, v4, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Z)V

    return-void
.end method
