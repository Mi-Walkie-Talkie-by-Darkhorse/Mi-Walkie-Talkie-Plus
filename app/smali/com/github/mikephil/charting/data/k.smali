.class public abstract Lcom/github/mikephil/charting/data/k;
.super Lcom/github/mikephil/charting/data/l;
.source "LineRadarDataSet.java"

# interfaces
.implements Lcom/github/mikephil/charting/e/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/l",
        "<TT;>;",
        "Lcom/github/mikephil/charting/e/b/g",
        "<TT;>;"
    }
.end annotation


# instance fields
.field protected p:Landroid/graphics/drawable/Drawable;

.field private u:I

.field private v:I

.field private w:F

.field private x:Z


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 v0, 0x8c

    const/16 v1, 0xea

    const/16 v2, 0xff

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/k;->u:I

    const/16 v0, 0x55

    iput v0, p0, Lcom/github/mikephil/charting/data/k;->v:I

    const/high16 v0, 0x40200000    # 2.5f

    iput v0, p0, Lcom/github/mikephil/charting/data/k;->w:F

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/github/mikephil/charting/data/k;->x:Z

    return-void
.end method


# virtual methods
.method public K()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->u:I

    return v0
.end method

.method public L()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/k;->p:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public M()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->v:I

    return v0
.end method

.method public N()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->w:F

    return v0
.end method

.method public O()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/k;->x:Z

    return v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iput-object p1, p0, Lcom/github/mikephil/charting/data/k;->p:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public c(F)V
    .locals 3

    const/high16 v0, 0x41200000    # 10.0f

    const v1, 0x3e4ccccd    # 0.2f

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    :goto_0
    cmpl-float v2, v1, v0

    if-lez v2, :cond_0

    :goto_1
    invoke-static {v0}, Lcom/github/mikephil/charting/g/i;->a(F)F

    move-result v0

    iput v0, p0, Lcom/github/mikephil/charting/data/k;->w:F

    return-void

    :cond_0
    move v0, v1

    goto :goto_1

    :cond_1
    move v1, p1

    goto :goto_0
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/k;->x:Z

    return-void
.end method

.method public f(I)V
    .locals 1

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->u:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/github/mikephil/charting/data/k;->p:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->v:I

    return-void
.end method
