.class abstract Landroidx/vectordrawable/a/a/i$f;
.super Landroidx/vectordrawable/a/a/i$e;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/vectordrawable/a/a/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "f"
.end annotation


# instance fields
.field protected a:[Landroidx/core/graphics/e$b;

.field b:Ljava/lang/String;

.field c:I

.field d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$e;-><init>(Landroidx/vectordrawable/a/a/i$a;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->c:I

    return-void
.end method

.method public constructor <init>(Landroidx/vectordrawable/a/a/i$f;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/vectordrawable/a/a/i$e;-><init>(Landroidx/vectordrawable/a/a/i$a;)V

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    const/4 v0, 0x0

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->c:I

    iget-object v0, p1, Landroidx/vectordrawable/a/a/i$f;->b:Ljava/lang/String;

    iput-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->b:Ljava/lang/String;

    iget v0, p1, Landroidx/vectordrawable/a/a/i$f;->d:I

    iput v0, p0, Landroidx/vectordrawable/a/a/i$f;->d:I

    iget-object p1, p1, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    invoke-static {p1}, Landroidx/core/graphics/e;->a([Landroidx/core/graphics/e$b;)[Landroidx/core/graphics/e$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Path;)V
    .locals 1

    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    if-eqz v0, :cond_0

    invoke-static {v0, p1}, Landroidx/core/graphics/e$b;->a([Landroidx/core/graphics/e$b;Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getPathData()[Landroidx/core/graphics/e$b;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    return-object v0
.end method

.method public getPathName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setPathData([Landroidx/core/graphics/e$b;)V
    .locals 1

    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/e;->a([Landroidx/core/graphics/e$b;[Landroidx/core/graphics/e$b;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroidx/core/graphics/e;->a([Landroidx/core/graphics/e$b;)[Landroidx/core/graphics/e$b;

    move-result-object p1

    iput-object p1, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/vectordrawable/a/a/i$f;->a:[Landroidx/core/graphics/e$b;

    invoke-static {v0, p1}, Landroidx/core/graphics/e;->b([Landroidx/core/graphics/e$b;[Landroidx/core/graphics/e$b;)V

    :goto_0
    return-void
.end method
