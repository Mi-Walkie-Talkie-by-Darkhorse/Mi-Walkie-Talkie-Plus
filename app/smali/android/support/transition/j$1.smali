.class Landroid/support/transition/j$1;
.super Landroid/support/transition/y$c;
.source "FadePort.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/transition/j;->a(Landroid/view/ViewGroup;Landroid/support/transition/ae;ILandroid/support/transition/ae;I)Landroid/animation/Animator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field a:Z

.field b:F

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/transition/j;


# direct methods
.method constructor <init>(Landroid/support/transition/j;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/support/transition/j$1;->d:Landroid/support/transition/j;

    iput-object p2, p0, Landroid/support/transition/j$1;->c:Landroid/view/View;

    invoke-direct {p0}, Landroid/support/transition/y$c;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/transition/j$1;->a:Z

    return-void
.end method


# virtual methods
.method public a(Landroid/support/transition/y;)V
    .locals 2

    iget-boolean v0, p0, Landroid/support/transition/j$1;->a:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/transition/j$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method public b(Landroid/support/transition/y;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/j$1;->c:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    iput v0, p0, Landroid/support/transition/j$1;->b:F

    iget-object v0, p0, Landroid/support/transition/j$1;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method public c(Landroid/support/transition/y;)V
    .locals 2

    iget-object v0, p0, Landroid/support/transition/j$1;->c:Landroid/view/View;

    iget v1, p0, Landroid/support/transition/j$1;->b:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
