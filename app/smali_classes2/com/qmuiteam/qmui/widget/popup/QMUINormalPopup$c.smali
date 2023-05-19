.class Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;
.super Landroid/widget/FrameLayout;
.source "QMUINormalPopup.java"

# interfaces
.implements Lcom/qmuiteam/qmui/c/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field private a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;"
        }
    .end annotation
.end field

.field private b:Landroid/view/View;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Path;

.field private e:I

.field private f:I

.field private g:Ljava/lang/Runnable;

.field final synthetic h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;


# direct methods
.method private constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/content/Context;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup<",
            "TT;>.d;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    .line 3
    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 4
    new-instance p1, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;

    invoke-direct {p1, p0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c$a;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->g:Ljava/lang/Runnable;

    .line 5
    iput-object p3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 7
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 8
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    return-void
.end method

.method synthetic constructor <init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/content/Context;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;-><init>(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;Landroid/content/Context;Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;)V

    return-void
.end method

.method static synthetic b(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    return-object p0
.end method

.method static synthetic c(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->e:I

    return p0
.end method

.method static synthetic d(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->f:I

    return p0
.end method


# virtual methods
.method public a(ILandroid/content/res/Resources$Theme;)Z
    .locals 2
    .param p2    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->B(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->C(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->C(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    invoke-static {p2, v1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result v1

    invoke-static {p1, v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->o(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;I)I

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->p(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result p1

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->q(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->q(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    invoke-static {p2, v0}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->s(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;I)I

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->t(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->j:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 5
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->r(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 7
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v3, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    .line 8
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 9
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v4, v4, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 10
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 11
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v4, v3, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    iget v3, v3, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    add-int/2addr v4, v3

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v3

    sub-int/2addr v4, v3

    sub-int/2addr v4, v1

    int-to-float v0, v0

    int-to-float v1, v4

    .line 12
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 13
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 14
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 15
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 16
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 17
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 18
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 19
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    :cond_0
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 21
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->n(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 23
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 24
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    :cond_2
    if-ne v0, v1, :cond_5

    .line 26
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 27
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 28
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->r(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 29
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v3, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->i:I

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->f:I

    sub-int/2addr v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    .line 30
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 31
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v4, v4, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->n:I

    sub-int/2addr v3, v4

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v4

    sub-int/2addr v3, v4

    .line 32
    invoke-static {v0, v3}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 33
    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v3, v3, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    iget-object v4, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v4}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-float v0, v0

    int-to-float v1, v3

    .line 34
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 36
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0, v2, v2}, Landroid/graphics/Path;->setLastPoint(FF)V

    .line 37
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget-object v3, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v3}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v3

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 38
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 39
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->close()V

    .line 40
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->d:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 41
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->x(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->y(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 42
    :cond_3
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->v(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 43
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 44
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->n(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 45
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v5, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    neg-int v0, v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 46
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v2, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->w(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    neg-int v0, v0

    int-to-float v3, v0

    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->h:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;

    invoke-static {v0}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;->u(Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup;)I

    move-result v0

    int-to-float v4, v0

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->c:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 47
    :cond_4
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5
    :goto_0
    return-void
.end method

.method public e(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 3
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 5
    :cond_1
    iput-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    .line 6
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget p3, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->m:I

    iget p4, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->o:I

    iget p5, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    add-int/2addr p5, p3

    iget p2, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    add-int/2addr p2, p4

    invoke-virtual {p1, p3, p4, p5, p2}, Landroid/view/View;->layout(IIII)V

    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    if-eqz p1, :cond_1

    .line 3
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v0, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->k:I

    iget p2, p2, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->l:I

    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 4
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    .line 5
    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->b:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p2

    .line 6
    iget-object v0, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    iget v1, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->d:I

    if-ne v1, p1, :cond_0

    iget v0, v0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->e:I

    if-eq v0, p2, :cond_1

    .line 7
    :cond_0
    iput p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->e:I

    .line 8
    iput p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->f:I

    .line 9
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->g:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    invoke-virtual {p1}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->h()I

    move-result p1

    iget-object p2, p0, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$c;->a:Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;

    invoke-virtual {p2}, Lcom/qmuiteam/qmui/widget/popup/QMUINormalPopup$d;->g()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    return-void
.end method
