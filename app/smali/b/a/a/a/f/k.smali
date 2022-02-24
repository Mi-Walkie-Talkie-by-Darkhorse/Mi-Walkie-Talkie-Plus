.class public abstract Lb/a/a/a/f/k;
.super Lb/a/a/a/f/l;
.source "LineRadarRenderer.java"


# direct methods
.method public constructor <init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lb/a/a/a/f/l;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    return-void
.end method

.method private b()Z
    .locals 2

    .line 1
    invoke-static {}, Lb/a/a/a/g/i;->e()I

    move-result v0

    const/16 v1, 0x12

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Path;II)V
    .locals 3

    shl-int/lit8 p4, p4, 0x18

    const v0, 0xffffff

    and-int/2addr p3, v0

    or-int/2addr p3, p4

    .line 13
    invoke-direct {p0}, Lb/a/a/a/f/k;->b()Z

    move-result p4

    if-eqz p4, :cond_0

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result p4

    .line 15
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 16
    invoke-virtual {p1, p3}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 17
    invoke-virtual {p1, p4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    .line 18
    :cond_0
    iget-object p4, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p4}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object p4

    .line 19
    iget-object v0, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    .line 20
    iget-object v1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 21
    iget-object v1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    iget-object p3, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 23
    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 24
    iget-object p1, p0, Lb/a/a/a/f/g;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    :goto_0
    return-void
.end method

.method protected a(Landroid/graphics/Canvas;Landroid/graphics/Path;Landroid/graphics/drawable/Drawable;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lb/a/a/a/f/k;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 3
    invoke-virtual {p1, p2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z

    .line 4
    iget-object p2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    invoke-virtual {p2}, Lb/a/a/a/g/j;->g()F

    move-result p2

    float-to-int p2, p2

    iget-object v1, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 5
    invoke-virtual {v1}, Lb/a/a/a/g/j;->i()F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 6
    invoke-virtual {v2}, Lb/a/a/a/g/j;->h()F

    move-result v2

    float-to-int v2, v2

    iget-object v3, p0, Lb/a/a/a/f/o;->a:Lb/a/a/a/g/j;

    .line 7
    invoke-virtual {v3}, Lb/a/a/a/g/j;->e()F

    move-result v3

    float-to-int v3, v3

    .line 8
    invoke-virtual {p3, p2, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 9
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Fill-drawables not (yet) supported below API level 18, this code was run on API level "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-static {}, Lb/a/a/a/g/i;->e()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "."

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
