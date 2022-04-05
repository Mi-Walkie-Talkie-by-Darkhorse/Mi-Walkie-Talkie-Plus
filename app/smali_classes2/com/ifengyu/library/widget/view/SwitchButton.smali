.class public Lcom/ifengyu/library/widget/view/SwitchButton;
.super Landroid/view/View;

# interfaces
.implements Landroid/widget/Checkable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/library/widget/view/SwitchButton$e;,
        Lcom/ifengyu/library/widget/view/SwitchButton$d;
    }
.end annotation


# static fields
.field private static final V:I

.field private static final W:I


# instance fields
.field private A:Landroid/graphics/Paint;

.field private B:Landroid/graphics/Paint;

.field private C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

.field private D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

.field private E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

.field private F:Landroid/graphics/RectF;

.field private G:I

.field private H:Landroid/animation/ValueAnimator;

.field private final I:Landroid/animation/ArgbEvaluator;

.field private J:Z

.field private K:Z

.field private L:Z

.field private M:Z

.field private N:Z

.field private O:Z

.field private P:Z

.field private Q:Lcom/ifengyu/library/widget/view/SwitchButton$d;

.field private R:J

.field private S:Ljava/lang/Runnable;

.field private T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

.field private U:Landroid/animation/Animator$AnimatorListener;

.field private a:I

.field private b:I

.field private c:I

.field private d:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:F

.field private l:I

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:I

.field private r:F

.field private s:I

.field private t:I

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, 0x42680000    # 58.0f

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v0

    sput v0, Lcom/ifengyu/library/widget/view/SwitchButton;->V:I

    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v0

    sput v0, Lcom/ifengyu/library/widget/view/SwitchButton;->W:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$c;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Landroid/animation/Animator$AnimatorListener;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    const/4 v0, 0x0

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    new-instance v1, Landroid/animation/ArgbEvaluator;

    invoke-direct {v1}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$a;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance v0, Lcom/ifengyu/library/widget/view/SwitchButton$c;

    invoke-direct {v0, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$c;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    const/4 p3, 0x0

    iput p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$c;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$c;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance p3, Landroid/graphics/RectF;

    invoke-direct {p3}, Landroid/graphics/RectF;-><init>()V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    const/4 p3, 0x0

    iput p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    new-instance p4, Landroid/animation/ArgbEvaluator;

    invoke-direct {p4}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object p4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    iput-boolean p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$a;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$a;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$b;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$b;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    new-instance p3, Lcom/ifengyu/library/widget/view/SwitchButton$c;

    invoke-direct {p3, p0}, Lcom/ifengyu/library/widget/view/SwitchButton$c;-><init>(Lcom/ifengyu/library/widget/view/SwitchButton;)V

    iput-object p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Landroid/animation/Animator$AnimatorListener;

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private static a(F)F
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/res/TypedArray;IF)F
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p0

    return p0
.end method

.method private static a(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;I)I
    .locals 0

    iput p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    return p1
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:Lcom/ifengyu/library/widget/view/SwitchButton$d;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v1

    invoke-interface {v0, p0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$d;->a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    sget-object v1, Lcom/ifengyu/library/R$styleable;->SwitchButton:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_effect:I

    const/4 v1, 0x1

    invoke-static {p1, p2, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Z

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_color:I

    const v2, -0x555556

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_width:I

    const/high16 v2, 0x3fc00000    # 1.5f

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v3

    invoke-static {p1, p2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->t:I

    const/high16 p2, 0x41200000    # 10.0f

    invoke-static {p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheckcircle_radius:I

    const/high16 v3, 0x40800000    # 4.0f

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result v4

    invoke-static {p1, p2, v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IF)F

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->v:F

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:F

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:F

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_radius:I

    const/high16 v3, 0x40200000    # 2.5f

    invoke-static {v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v3

    invoke-static {p1, p2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_offset:I

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_shadow_color:I

    const/high16 v2, 0x33000000

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_uncheck_color:I

    const v2, -0x222223

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checked_color:I

    const v2, -0xae2c99

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_border_width:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v3

    invoke-static {p1, p2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checkline_color:I

    const/4 v3, -0x1

    invoke-static {p1, p2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:I

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checkline_width:I

    invoke-static {v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(F)I

    move-result v2

    invoke-static {p1, p2, v2}, Lcom/ifengyu/library/widget/view/SwitchButton;->c(Landroid/content/res/TypedArray;II)I

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:I

    const/high16 p2, 0x40c00000    # 6.0f

    invoke-static {p2}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result p2

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    sget p2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_button_color:I

    invoke-static {p1, p2, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result p2

    sget v2, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_effect_duration:I

    const/16 v4, 0x12c

    invoke-static {p1, v2, v4}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/content/res/TypedArray;II)I

    move-result v2

    sget v4, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_checked:I

    const/4 v5, 0x0

    invoke-static {p1, v4, v5}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    sget v4, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_show_indicator:I

    invoke-static {p1, v4, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Z

    sget v4, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_background:I

    invoke-static {p1, v4, v3}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;II)I

    move-result v3

    iput v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:I

    sget v3, Lcom/ifengyu/library/R$styleable;->SwitchButton_sb_enable_effect:I

    invoke-static {p1, v3, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/content/res/TypedArray;IZ)Z

    move-result v3

    iput-boolean v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Z

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:Landroid/graphics/Paint;

    iget p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    int-to-float p2, p2

    const/4 v3, 0x0

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    int-to-float v4, v4

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    invoke-virtual {p1, p2, v3, v4, v6}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :cond_2
    new-instance p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    new-instance p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    new-instance p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    const/4 p1, 0x2

    new-array p1, p1, [F

    fill-array-data p1, :array_0

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object p1

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    int-to-long v2, v2

    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {p1, v5}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->T:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    iget-object p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->U:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-super {p0, v1}, Landroid/view/View;->setClickable(Z)V

    invoke-virtual {p0, v5, v5, v5, v5}, Lcom/ifengyu/library/widget/view/SwitchButton;->setPadding(IIII)V

    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0xb

    if-lt p1, p2, :cond_3

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private a(Landroid/graphics/Canvas;FF)V
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V
    .locals 12

    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    const/4 v10, 0x1

    move-object v3, p1

    move v4, p2

    move v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move-object/from16 v11, p8

    invoke-virtual/range {v3 .. v11}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual {v1, p2, p3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v3, v0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    const/4 v6, 0x1

    move-object v2, p1

    move/from16 v4, p6

    move/from16 v5, p7

    move-object/from16 v7, p8

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    :goto_0
    return-void
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

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    invoke-virtual {v0, p2, p3, p4, p5}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->F:Landroid/graphics/RectF;

    invoke-virtual {p1, p2, p6, p6, p7}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method private a(ZZ)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->P:Z

    if-nez v0, :cond_9

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    if-nez v0, :cond_2

    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_3
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Z

    if-eqz v0, :cond_6

    if-nez p1, :cond_4

    goto :goto_1

    :cond_4
    const/4 p1, 0x5

    iput p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget-object p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-static {p1, p2}, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a(Lcom/ifengyu/library/widget/view/SwitchButton$e;Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    goto :goto_0

    :cond_5
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    :goto_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void

    :cond_6
    :goto_1
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    goto :goto_2

    :cond_7
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    if-eqz p2, :cond_8

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    :cond_8
    return-void

    :cond_9
    new-instance p1, Ljava/lang/RuntimeException;

    const-string p2, "should NOT switch the state in method: [onCheckedChanged]!"

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private static a(Landroid/content/res/TypedArray;IZ)Z
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;)Z
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result p0

    return p0
.end method

.method static synthetic a(Lcom/ifengyu/library/widget/view/SwitchButton;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    return p1
.end method

.method private static b(F)I
    .locals 0

    invoke-static {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(F)F

    move-result p0

    float-to-int p0, p0

    return p0
.end method

.method private static b(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p0

    return p0
.end method

.method static synthetic b(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    return p0
.end method

.method private b(Landroid/graphics/Canvas;)V
    .locals 8

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->s:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->t:I

    int-to-float v3, v0

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->u:F

    sub-float v4, v0, v1

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->v:F

    iget-object v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;IFFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private b()Z
    .locals 2

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static c(Landroid/content/res/TypedArray;II)I
    .locals 0

    if-nez p0, :cond_0

    return p2

    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p0

    return p0
.end method

.method static synthetic c(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:I

    return p0
.end method

.method private c()Z
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic d(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    return p0
.end method

.method private d()Z
    .locals 3

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method static synthetic e(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:I

    return p0
.end method

.method private e()V
    .locals 2

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a(Lcom/ifengyu/library/widget/view/SwitchButton$e;Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :cond_3
    return-void
.end method

.method private f()V
    .locals 3

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_2
    const/4 v0, 0x1

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a(Lcom/ifengyu/library/widget/view/SwitchButton$e;Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a(Lcom/ifengyu/library/widget/view/SwitchButton$e;Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:I

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    iput v2, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->c:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->d:F

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic f(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a()V

    return-void
.end method

.method private g()V
    .locals 2

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-static {v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a(Lcom/ifengyu/library/widget/view/SwitchButton$e;Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    :goto_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->H:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method static synthetic g(Lcom/ifengyu/library/widget/view/SwitchButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    return p0
.end method

.method static synthetic h(Lcom/ifengyu/library/widget/view/SwitchButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->f()V

    return-void
.end method

.method static synthetic i(Lcom/ifengyu/library/widget/view/SwitchButton;)I
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->G:I

    return p0
.end method

.method static synthetic j(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    return-object p0
.end method

.method static synthetic k(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->D:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    return-object p0
.end method

.method static synthetic l(Lcom/ifengyu/library/widget/view/SwitchButton;)Lcom/ifengyu/library/widget/view/SwitchButton$e;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->E:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    return-object p0
.end method

.method static synthetic m(Lcom/ifengyu/library/widget/view/SwitchButton;)Landroid/animation/ArgbEvaluator;
    .locals 0

    iget-object p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    return-object p0
.end method

.method static synthetic n(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    return p0
.end method

.method static synthetic o(Lcom/ifengyu/library/widget/view/SwitchButton;)F
    .locals 0

    iget p0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    return p0
.end method

.method private setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V
    .locals 1

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->d:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->p:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    return-void
.end method

.method private setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->d:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    const/4 v0, 0x0

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    iput v0, p1, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;)V
    .locals 10

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v3, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->c:I

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->q:I

    int-to-float v4, v0

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    add-float v2, v0, v1

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->w:F

    sub-float v5, v2, v5

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->r:F

    sub-float v7, v2, v6

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->x:F

    sub-float/2addr v0, v1

    add-float v8, v2, v6

    iget-object v9, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    move-object v1, p0

    move-object v2, p1

    move v6, v7

    move v7, v0

    invoke-virtual/range {v1 .. v9}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;IFFFFFLandroid/graphics/Paint;)V

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

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->l:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:F

    iget v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:F

    iget v8, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iget-object v9, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v2 .. v9}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iget v5, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:F

    iget v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:F

    iget v8, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iget-object v9, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-direct/range {v2 .. v9}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Z

    if-eqz v0, :cond_0

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->b(Landroid/graphics/Canvas;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v0, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->d:F

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v2, v2, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float v4, v0, v3

    add-float/2addr v2, v4

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    add-float v6, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    add-float v7, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:F

    sub-float v8, v1, v0

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:F

    sub-float v9, v1, v0

    iget v10, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iget-object v11, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    move-object v4, p0

    move-object v5, p1

    invoke-direct/range {v4 .. v11}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iget v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    mul-float v1, v0, v3

    add-float v8, v6, v1

    mul-float v0, v0, v3

    add-float v9, v7, v0

    const/high16 v10, 0x42b40000    # 90.0f

    const/high16 v11, 0x43340000    # 180.0f

    iget-object v12, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    invoke-direct/range {v4 .. v12}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FFFFFFLandroid/graphics/Paint;)V

    iget v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    add-float v5, v0, v1

    iget v6, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v7, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    mul-float v1, v1, v3

    add-float v8, v6, v1

    iget-object v9, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->B:Landroid/graphics/Paint;

    move-object v4, p1

    invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->M:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;)V

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v0, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:F

    invoke-direct {p0, p1, v0, v1}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Landroid/graphics/Canvas;FF)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    const/high16 v2, -0x80000000

    const/high16 v3, 0x40000000    # 2.0f

    if-eqz v0, :cond_0

    if-ne v0, v2, :cond_1

    :cond_0
    sget p1, Lcom/ifengyu/library/widget/view/SwitchButton;->V:I

    invoke-static {p1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    if-eqz v1, :cond_2

    if-ne v1, v2, :cond_3

    :cond_2
    sget p2, Lcom/ifengyu/library/widget/view/SwitchButton;->W:I

    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    iget p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    iget p4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    add-int/2addr p3, p4

    iget p4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:I

    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    sub-float/2addr p2, p3

    sub-float p4, p2, p3

    iput p4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->f:F

    int-to-float p1, p1

    sub-float/2addr p1, p3

    const/high16 v0, 0x3f000000    # 0.5f

    mul-float p4, p4, v0

    iput p4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->d:F

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->o:I

    int-to-float v1, v1

    sub-float v1, p4, v1

    iput v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->e:F

    iput p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->g:F

    iput p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->h:F

    iput p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->i:F

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->j:F

    add-float/2addr p2, p3

    mul-float p2, p2, v0

    iput p2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->k:F

    add-float/2addr p3, p4

    iput p3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    sub-float/2addr p1, p4

    iput p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setCheckedViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    invoke-direct {p0, p1}, Lcom/ifengyu/library/widget/view/SwitchButton;->setUncheckViewState(Lcom/ifengyu/library/widget/view/SwitchButton$e;)V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->O:Z

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9

    invoke-virtual {p0}, Landroid/view/View;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->isClickable()Z

    move-result v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_b

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eq v0, v2, :cond_6

    const/4 v5, 0x2

    if-eq v0, v5, :cond_4

    const/4 p1, 0x3

    if-eq v0, p1, :cond_2

    goto/16 :goto_0

    :cond_2
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result p1

    if-eqz p1, :cond_c

    :cond_3
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->e()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    goto/16 :goto_0

    :cond_5
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->C:Lcom/ifengyu/library/widget/view/SwitchButton$e;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->y:F

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->z:F

    sub-float/2addr v3, v1

    mul-float v3, v3, p1

    add-float/2addr v1, v3

    iput v1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->a:F

    iget-object v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->I:Landroid/animation/ArgbEvaluator;

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->m:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->n:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, p1, v3, v4}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, v0, Lcom/ifengyu/library/widget/view/SwitchButton$e;->b:I

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    goto :goto_0

    :cond_6
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    iget-object v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0x12c

    cmp-long v0, v5, v7

    if-gtz v0, :cond_7

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->toggle()V

    goto :goto_0

    :cond_7
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->b()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {v4, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_8

    const/4 v1, 0x1

    :cond_8
    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result p1

    if-ne v1, p1, :cond_9

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->e()V

    goto :goto_0

    :cond_9
    iput-boolean v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->J:Z

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->g()V

    goto :goto_0

    :cond_a
    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->d()Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-direct {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->e()V

    goto :goto_0

    :cond_b
    iput-boolean v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->N:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->R:J

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->S:Ljava/lang/Runnable;

    const-wide/16 v0, 0x64

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_c
    :goto_0
    return v2
.end method

.method public setChecked(Z)V
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/library/widget/view/SwitchButton;->isChecked()Z

    move-result v0

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    return-void

    :cond_0
    iget-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Z

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(ZZ)V

    return-void
.end method

.method public setEnableEffect(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->K:Z

    return-void
.end method

.method public setOnCheckedChangeListener(Lcom/ifengyu/library/widget/view/SwitchButton$d;)V
    .locals 0

    iput-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->Q:Lcom/ifengyu/library/widget/view/SwitchButton$d;

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
    .locals 0

    const/4 p1, 0x0

    invoke-super {p0, p1, p1, p1, p1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public setShadowEffect(Z)V
    .locals 4

    iget-boolean v0, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->L:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:Landroid/graphics/Paint;

    iget v1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->a:I

    int-to-float v1, v1

    iget v2, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->b:I

    int-to-float v2, v2

    iget v3, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->c:I

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/ifengyu/library/widget/view/SwitchButton;->A:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v0, v0, v1}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    :goto_0
    return-void
.end method

.method public toggle()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ifengyu/library/widget/view/SwitchButton;->a(Z)V

    return-void
.end method
