.class public abstract Lcom/github/mikephil/charting/f/c;
.super Lcom/github/mikephil/charting/f/g;
.source "BarLineScatterCandleBubbleRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/f/c$a;
    }
.end annotation


# instance fields
.field protected f:Lcom/github/mikephil/charting/f/c$a;


# direct methods
.method public constructor <init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/f/g;-><init>(Lcom/github/mikephil/charting/a/a;Lcom/github/mikephil/charting/g/j;)V

    new-instance v0, Lcom/github/mikephil/charting/f/c$a;

    invoke-direct {v0, p0}, Lcom/github/mikephil/charting/f/c$a;-><init>(Lcom/github/mikephil/charting/f/c;)V

    iput-object v0, p0, Lcom/github/mikephil/charting/f/c;->f:Lcom/github/mikephil/charting/f/c$a;

    return-void
.end method


# virtual methods
.method protected a(Lcom/github/mikephil/charting/data/Entry;Lcom/github/mikephil/charting/e/b/b;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-interface {p2, p1}, Lcom/github/mikephil/charting/e/b/b;->d(Lcom/github/mikephil/charting/data/Entry;)I

    move-result v1

    int-to-float v1, v1

    if-eqz p1, :cond_0

    invoke-interface {p2}, Lcom/github/mikephil/charting/e/b/b;->s()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/github/mikephil/charting/f/c;->g:Lcom/github/mikephil/charting/a/a;

    invoke-virtual {v3}, Lcom/github/mikephil/charting/a/a;->b()F

    move-result v3

    mul-float/2addr v2, v3

    cmpl-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method protected a(Lcom/github/mikephil/charting/e/b/e;)Z
    .locals 1

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcom/github/mikephil/charting/e/b/e;->o()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
