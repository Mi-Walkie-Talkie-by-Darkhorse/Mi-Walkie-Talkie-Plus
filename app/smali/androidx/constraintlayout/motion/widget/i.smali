.class public Landroidx/constraintlayout/motion/widget/i;
.super Landroidx/constraintlayout/motion/widget/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/widget/i$a;
    }
.end annotation


# instance fields
.field g:Ljava/lang/String;

.field h:I

.field i:I

.field j:F

.field k:F

.field l:F

.field m:F

.field n:F

.field o:F

.field p:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/j;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/i;->g:Ljava/lang/String;

    sget v0, Landroidx/constraintlayout/motion/widget/c;->e:I

    iput v0, p0, Landroidx/constraintlayout/motion/widget/i;->h:I

    const/4 v0, 0x0

    iput v0, p0, Landroidx/constraintlayout/motion/widget/i;->i:I

    const/high16 v1, 0x7fc00000    # Float.NaN

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->j:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->k:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->l:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->m:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->n:F

    iput v1, p0, Landroidx/constraintlayout/motion/widget/i;->o:F

    iput v0, p0, Landroidx/constraintlayout/motion/widget/i;->p:I

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-static {p0, p1}, Landroidx/constraintlayout/motion/widget/i$a;->a(Landroidx/constraintlayout/motion/widget/i;Landroid/content/res/TypedArray;)V

    return-void
.end method

.method public a(Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/constraintlayout/motion/widget/r;",
            ">;)V"
        }
    .end annotation

    return-void
.end method
