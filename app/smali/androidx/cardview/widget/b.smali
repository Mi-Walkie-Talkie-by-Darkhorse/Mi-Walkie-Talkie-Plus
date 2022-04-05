.class Landroidx/cardview/widget/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroidx/cardview/widget/e;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x15
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/d;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    check-cast p1, Landroidx/cardview/widget/f;

    return-object p1
.end method


# virtual methods
.method public a(Landroidx/cardview/widget/d;)F
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/d;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    return p1
.end method

.method public a()V
    .locals 0

    return-void
.end method

.method public a(Landroidx/cardview/widget/d;F)V
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/f;->a(F)V

    return-void
.end method

.method public a(Landroidx/cardview/widget/d;Landroid/content/Context;Landroid/content/res/ColorStateList;FFF)V
    .locals 0

    new-instance p2, Landroidx/cardview/widget/f;

    invoke-direct {p2, p3, p4}, Landroidx/cardview/widget/f;-><init>(Landroid/content/res/ColorStateList;F)V

    invoke-interface {p1, p2}, Landroidx/cardview/widget/d;->a(Landroid/graphics/drawable/Drawable;)V

    invoke-interface {p1}, Landroidx/cardview/widget/d;->d()Landroid/view/View;

    move-result-object p2

    const/4 p3, 0x1

    invoke-virtual {p2, p3}, Landroid/view/View;->setClipToOutline(Z)V

    invoke-virtual {p2, p5}, Landroid/view/View;->setElevation(F)V

    invoke-virtual {p0, p1, p6}, Landroidx/cardview/widget/b;->c(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public a(Landroidx/cardview/widget/d;Landroid/content/res/ColorStateList;)V
    .locals 0
    .param p2    # Landroid/content/res/ColorStateList;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/cardview/widget/f;->a(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public b(Landroidx/cardview/widget/d;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->c()F

    move-result p1

    return p1
.end method

.method public b(Landroidx/cardview/widget/d;F)V
    .locals 0

    invoke-interface {p1}, Landroidx/cardview/widget/d;->d()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/view/View;->setElevation(F)V

    return-void
.end method

.method public c(Landroidx/cardview/widget/d;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->c(Landroidx/cardview/widget/d;F)V

    return-void
.end method

.method public c(Landroidx/cardview/widget/d;F)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object v0

    invoke-interface {p1}, Landroidx/cardview/widget/d;->b()Z

    move-result v1

    invoke-interface {p1}, Landroidx/cardview/widget/d;->a()Z

    move-result v2

    invoke-virtual {v0, p2, v1, v2}, Landroidx/cardview/widget/f;->a(FZZ)V

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->f(Landroidx/cardview/widget/d;)V

    return-void
.end method

.method public d(Landroidx/cardview/widget/d;)F
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->b()F

    move-result p1

    return p1
.end method

.method public e(Landroidx/cardview/widget/d;)Landroid/content/res/ColorStateList;
    .locals 0

    invoke-direct {p0, p1}, Landroidx/cardview/widget/b;->j(Landroidx/cardview/widget/d;)Landroidx/cardview/widget/f;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/cardview/widget/f;->a()Landroid/content/res/ColorStateList;

    move-result-object p1

    return-object p1
.end method

.method public f(Landroidx/cardview/widget/d;)V
    .locals 4

    invoke-interface {p1}, Landroidx/cardview/widget/d;->b()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-interface {p1, v0, v0, v0, v0}, Landroidx/cardview/widget/d;->setShadowPadding(IIII)V

    return-void

    :cond_0
    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->b(Landroidx/cardview/widget/d;)F

    move-result v1

    invoke-interface {p1}, Landroidx/cardview/widget/d;->a()Z

    move-result v2

    invoke-static {v0, v1, v2}, Landroidx/cardview/widget/g;->a(FFZ)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v2, v2

    invoke-interface {p1}, Landroidx/cardview/widget/d;->a()Z

    move-result v3

    invoke-static {v0, v1, v3}, Landroidx/cardview/widget/g;->b(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-interface {p1, v2, v0, v2, v0}, Landroidx/cardview/widget/d;->setShadowPadding(IIII)V

    return-void
.end method

.method public g(Landroidx/cardview/widget/d;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->b(Landroidx/cardview/widget/d;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public h(Landroidx/cardview/widget/d;)F
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->b(Landroidx/cardview/widget/d;)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    mul-float p1, p1, v0

    return p1
.end method

.method public i(Landroidx/cardview/widget/d;)V
    .locals 1

    invoke-virtual {p0, p1}, Landroidx/cardview/widget/b;->d(Landroidx/cardview/widget/d;)F

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroidx/cardview/widget/b;->c(Landroidx/cardview/widget/d;F)V

    return-void
.end method
