.class Landroidx/appcompat/widget/x;
.super Ljava/lang/Object;
.source "RtlSpacingHelper.java"


# instance fields
.field private a:I

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private f:I

.field private g:Z

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroidx/appcompat/widget/x;->a:I

    .line 3
    iput v0, p0, Landroidx/appcompat/widget/x;->b:I

    const/high16 v1, -0x80000000

    .line 4
    iput v1, p0, Landroidx/appcompat/widget/x;->c:I

    .line 5
    iput v1, p0, Landroidx/appcompat/widget/x;->d:I

    .line 6
    iput v0, p0, Landroidx/appcompat/widget/x;->e:I

    .line 7
    iput v0, p0, Landroidx/appcompat/widget/x;->f:I

    .line 8
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->g:Z

    .line 9
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->h:Z

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/x;->a:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/x;->b:I

    :goto_0
    return v0
.end method

.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/x;->a:I

    return v0
.end method

.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Landroidx/appcompat/widget/x;->b:I

    return v0
.end method

.method public d()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/appcompat/widget/x;->b:I

    goto :goto_0

    :cond_0
    iget v0, p0, Landroidx/appcompat/widget/x;->a:I

    :goto_0
    return v0
.end method

.method public e(II)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->h:Z

    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    .line 2
    iput p1, p0, Landroidx/appcompat/widget/x;->e:I

    iput p1, p0, Landroidx/appcompat/widget/x;->a:I

    :cond_0
    if-eq p2, v0, :cond_1

    .line 3
    iput p2, p0, Landroidx/appcompat/widget/x;->f:I

    iput p2, p0, Landroidx/appcompat/widget/x;->b:I

    :cond_1
    return-void
.end method

.method public f(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->g:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 2
    :cond_0
    iput-boolean p1, p0, Landroidx/appcompat/widget/x;->g:Z

    .line 3
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->h:Z

    if-eqz v0, :cond_6

    const/high16 v0, -0x80000000

    if-eqz p1, :cond_3

    .line 4
    iget p1, p0, Landroidx/appcompat/widget/x;->d:I

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget p1, p0, Landroidx/appcompat/widget/x;->e:I

    :goto_0
    iput p1, p0, Landroidx/appcompat/widget/x;->a:I

    .line 5
    iget p1, p0, Landroidx/appcompat/widget/x;->c:I

    if-eq p1, v0, :cond_2

    goto :goto_1

    :cond_2
    iget p1, p0, Landroidx/appcompat/widget/x;->f:I

    :goto_1
    iput p1, p0, Landroidx/appcompat/widget/x;->b:I

    goto :goto_4

    .line 6
    :cond_3
    iget p1, p0, Landroidx/appcompat/widget/x;->c:I

    if-eq p1, v0, :cond_4

    goto :goto_2

    :cond_4
    iget p1, p0, Landroidx/appcompat/widget/x;->e:I

    :goto_2
    iput p1, p0, Landroidx/appcompat/widget/x;->a:I

    .line 7
    iget p1, p0, Landroidx/appcompat/widget/x;->d:I

    if-eq p1, v0, :cond_5

    goto :goto_3

    :cond_5
    iget p1, p0, Landroidx/appcompat/widget/x;->f:I

    :goto_3
    iput p1, p0, Landroidx/appcompat/widget/x;->b:I

    goto :goto_4

    .line 8
    :cond_6
    iget p1, p0, Landroidx/appcompat/widget/x;->e:I

    iput p1, p0, Landroidx/appcompat/widget/x;->a:I

    .line 9
    iget p1, p0, Landroidx/appcompat/widget/x;->f:I

    iput p1, p0, Landroidx/appcompat/widget/x;->b:I

    :goto_4
    return-void
.end method

.method public g(II)V
    .locals 2

    .line 1
    iput p1, p0, Landroidx/appcompat/widget/x;->c:I

    .line 2
    iput p2, p0, Landroidx/appcompat/widget/x;->d:I

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Landroidx/appcompat/widget/x;->h:Z

    .line 4
    iget-boolean v0, p0, Landroidx/appcompat/widget/x;->g:Z

    const/high16 v1, -0x80000000

    if-eqz v0, :cond_1

    if-eq p2, v1, :cond_0

    .line 5
    iput p2, p0, Landroidx/appcompat/widget/x;->a:I

    :cond_0
    if-eq p1, v1, :cond_3

    .line 6
    iput p1, p0, Landroidx/appcompat/widget/x;->b:I

    goto :goto_0

    :cond_1
    if-eq p1, v1, :cond_2

    .line 7
    iput p1, p0, Landroidx/appcompat/widget/x;->a:I

    :cond_2
    if-eq p2, v1, :cond_3

    .line 8
    iput p2, p0, Landroidx/appcompat/widget/x;->b:I

    :cond_3
    :goto_0
    return-void
.end method
