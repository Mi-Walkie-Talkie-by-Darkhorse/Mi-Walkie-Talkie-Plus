.class public abstract Lb/a/a/a/f/c;
.super Lb/a/a/a/f/g;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lb/a/a/a/f/c$a;
    }
.end annotation


# instance fields
.field protected f:Lb/a/a/a/f/c$a;


# direct methods
.method public constructor <init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lb/a/a/a/f/g;-><init>(Lb/a/a/a/a/a;Lb/a/a/a/g/j;)V

    new-instance p1, Lb/a/a/a/f/c$a;

    invoke-direct {p1, p0}, Lb/a/a/a/f/c$a;-><init>(Lb/a/a/a/f/c;)V

    iput-object p1, p0, Lb/a/a/a/f/c;->f:Lb/a/a/a/f/c$a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/github/mikephil/charting/data/Entry;Lb/a/a/a/e/b/b;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-interface {p2, p1}, Lb/a/a/a/e/b/e;->a(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_2

    invoke-interface {p2}, Lb/a/a/a/e/b/e;->q0()I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lb/a/a/a/f/g;->b:Lb/a/a/a/a/a;

    invoke-virtual {p2}, Lb/a/a/a/a/a;->a()F

    move-result p2

    mul-float p1, p1, p2

    cmpl-float p1, v1, p1

    if-ltz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    return v0
.end method

.method protected b(Lb/a/a/a/e/b/e;)Z
    .locals 1

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lb/a/a/a/e/b/e;->k0()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
