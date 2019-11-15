.class public Lcom/github/mikephil/charting/data/PieDataSet;
.super Lcom/github/mikephil/charting/data/DataSet;
.source "PieDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/b/i;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/github/mikephil/charting/data/DataSet",
        "<",
        "Lcom/github/mikephil/charting/data/PieEntry;",
        ">;",
        "Lcom/github/mikephil/charting/e/b/i;"
    }
.end annotation


# instance fields
.field private a:F

.field private p:Z

.field private q:F

.field private r:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field private s:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

.field private t:I

.field private u:F

.field private v:F

.field private w:F

.field private x:F

.field private y:Z


# virtual methods
.method public A()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->r:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method

.method public B()Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->s:Lcom/github/mikephil/charting/data/PieDataSet$ValuePosition;

    return-object v0
.end method

.method public C()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->t:I

    return v0
.end method

.method public D()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->u:F

    return v0
.end method

.method public E()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->v:F

    return v0
.end method

.method public F()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->w:F

    return v0
.end method

.method public G()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->x:F

    return v0
.end method

.method public H()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->y:Z

    return v0
.end method

.method public a()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->a:F

    return v0
.end method

.method protected bridge synthetic a(Lcom/github/mikephil/charting/data/Entry;)V
    .locals 0

    check-cast p1, Lcom/github/mikephil/charting/data/PieEntry;

    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->a(Lcom/github/mikephil/charting/data/PieEntry;)V

    return-void
.end method

.method protected a(Lcom/github/mikephil/charting/data/PieEntry;)V
    .locals 0

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lcom/github/mikephil/charting/data/PieDataSet;->c(Lcom/github/mikephil/charting/data/Entry;)V

    goto :goto_0
.end method

.method public y()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->p:Z

    return v0
.end method

.method public z()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/PieDataSet;->q:F

    return v0
.end method
