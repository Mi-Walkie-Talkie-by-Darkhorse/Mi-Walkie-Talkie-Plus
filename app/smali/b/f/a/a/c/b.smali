.class public Lb/f/a/a/c/b;
.super Ljava/lang/Object;
.source "ItemViewDelegateManager.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:La/b/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La/b/h<",
            "Lb/f/a/a/c/a<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, La/b/h;

    invoke-direct {v0}, La/b/h;-><init>()V

    iput-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    return-void
.end method


# virtual methods
.method public a(Lb/f/a/a/c/a;)Lb/f/a/a/c/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/a<",
            "TT;>;)",
            "Lb/f/a/a/c/b<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    if-eqz p1, :cond_0

    .line 2
    iget-object v1, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v1, v0, p1}, La/b/h;->i(ILjava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method public b(Lb/f/a/a/c/c;Ljava/lang/Object;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lb/f/a/a/c/c;",
            "TT;I)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v2, v1}, La/b/h;->l(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lb/f/a/a/c/a;

    .line 3
    invoke-interface {v2, p2, p3}, Lb/f/a/a/c/a;->a(Ljava/lang/Object;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-interface {v2, p1, p2, p3}, Lb/f/a/a/c/a;->c(Lb/f/a/a/c/c;Ljava/lang/Object;I)V

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No ItemViewDelegateManager added that matches position="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " in data source"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(I)Lb/f/a/a/c/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v0, p1}, La/b/h;->e(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lb/f/a/a/c/a;

    return-object p1
.end method

.method public d()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    return v0
.end method

.method public e(Ljava/lang/Object;I)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)I"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v0}, La/b/h;->k()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 2
    iget-object v1, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {v1, v0}, La/b/h;->l(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lb/f/a/a/c/a;

    .line 3
    invoke-interface {v1, p1, p2}, Lb/f/a/a/c/a;->a(Ljava/lang/Object;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    iget-object p1, p0, Lb/f/a/a/c/b;->a:La/b/h;

    invoke-virtual {p1, v0}, La/b/h;->h(I)I

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No ItemViewDelegate added that matches position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " in data source"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
