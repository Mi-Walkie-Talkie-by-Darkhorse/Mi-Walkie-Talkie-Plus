.class public abstract Lcom/qmuiteam/qmui/span/d;
.super Landroid/text/style/ClickableSpan;
.source "QMUITouchableSpan.java"

# interfaces
.implements Lcom/qmuiteam/qmui/link/a;
.implements Lcom/qmuiteam/qmui/c/c;


# instance fields
.field private a:Z

.field private b:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private c:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private d:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private e:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Z


# direct methods
.method public constructor <init>(IIII)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p2    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param
    .param p4    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->j:Z

    .line 3
    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    .line 4
    iput p2, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    .line 5
    iput p3, p0, Lcom/qmuiteam/qmui/span/d;->b:I

    .line 6
    iput p4, p0, Lcom/qmuiteam/qmui/span/d;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;IIII)V
    .locals 1

    .line 7
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->j:Z

    .line 9
    iput p4, p0, Lcom/qmuiteam/qmui/span/d;->f:I

    .line 10
    iput p5, p0, Lcom/qmuiteam/qmui/span/d;->g:I

    .line 11
    iput p2, p0, Lcom/qmuiteam/qmui/span/d;->h:I

    .line 12
    iput p3, p0, Lcom/qmuiteam/qmui/span/d;->i:I

    if-eqz p2, :cond_0

    .line 13
    invoke-static {p1, p2}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    :cond_0
    if-eqz p3, :cond_1

    .line 14
    invoke-static {p1, p3}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    :cond_1
    if-eqz p4, :cond_2

    .line 15
    invoke-static {p1, p4}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p2

    iput p2, p0, Lcom/qmuiteam/qmui/span/d;->b:I

    :cond_2
    if-eqz p5, :cond_3

    .line 16
    invoke-static {p1, p5}, Lcom/qmuiteam/qmui/c/e;->a(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->c:I

    :cond_3
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/span/d;->a:Z

    return-void
.end method

.method public b(Landroid/view/View;Lcom/qmuiteam/qmui/c/g;ILandroid/content/res/Resources$Theme;)V
    .locals 0
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/qmuiteam/qmui/c/g;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/res/Resources$Theme;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    iget p1, p0, Lcom/qmuiteam/qmui/span/d;->h:I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p4, p1}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    .line 3
    :goto_0
    iget p3, p0, Lcom/qmuiteam/qmui/span/d;->i:I

    if-eqz p3, :cond_1

    .line 4
    invoke-static {p4, p3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    const/4 p1, 0x0

    .line 5
    :cond_1
    iget p3, p0, Lcom/qmuiteam/qmui/span/d;->f:I

    if-eqz p3, :cond_2

    .line 6
    invoke-static {p4, p3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->b:I

    const/4 p1, 0x0

    .line 7
    :cond_2
    iget p3, p0, Lcom/qmuiteam/qmui/span/d;->g:I

    if-eqz p3, :cond_3

    .line 8
    invoke-static {p4, p3}, Lcom/qmuiteam/qmui/util/i;->c(Landroid/content/res/Resources$Theme;I)I

    move-result p1

    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->c:I

    const/4 p1, 0x0

    :cond_3
    if-eqz p1, :cond_4

    new-array p1, p2, [Ljava/lang/Object;

    const-string p2, "QMUITouchableSpan"

    const-string p3, "There are no attrs for skin. Please use constructor with 5 parameters"

    .line 9
    invoke-static {p2, p3, p1}, Lcom/qmuiteam/qmui/b;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_4
    return-void
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    return v0
.end method

.method public e()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->c:I

    return v0
.end method

.method public f()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    return v0
.end method

.method public g()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->j:Z

    return v0
.end method

.method public h()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->a:Z

    return v0
.end method

.method public abstract i(Landroid/view/View;)V
.end method

.method public j(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/qmuiteam/qmui/span/d;->j:Z

    return-void
.end method

.method public k(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    return-void
.end method

.method public l(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    return-void
.end method

.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/core/view/ViewCompat;->V(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/qmuiteam/qmui/span/d;->i(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->a:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->e:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->d:I

    :goto_0
    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 2
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->a:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->c:I

    goto :goto_1

    :cond_1
    iget v0, p0, Lcom/qmuiteam/qmui/span/d;->b:I

    :goto_1
    iput v0, p1, Landroid/text/TextPaint;->bgColor:I

    .line 3
    iget-boolean v0, p0, Lcom/qmuiteam/qmui/span/d;->j:Z

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    return-void
.end method