.class public abstract Lcom/github/mikephil/charting/data/k;
.super Lcom/github/mikephil/charting/data/l;

# interfaces
.implements Lb/a/a/a/e/b/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/github/mikephil/charting/data/Entry;",
        ">",
        "Lcom/github/mikephil/charting/data/l<",
        "TT;>;",
        "Lb/a/a/a/e/b/g<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private A:I

.field private B:F

.field private C:Z

.field private y:I

.field protected z:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Ljava/util/List;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/github/mikephil/charting/data/l;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const/16 p1, 0x8c

    const/16 p2, 0xea

    const/16 v0, 0xff

    invoke-static {p1, p2, v0}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->y:I

    const/16 p1, 0x55

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->A:I

    const/high16 p1, 0x40200000    # 2.5f

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->B:F

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/k;->C:Z

    return-void
.end method


# virtual methods
.method public B()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/data/k;->z:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public J()Z
    .locals 1

    iget-boolean v0, p0, Lcom/github/mikephil/charting/data/k;->C:Z

    return v0
.end method

.method public a(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    iput-object p1, p0, Lcom/github/mikephil/charting/data/k;->z:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public b(F)V
    .locals 2

    const v0, 0x3e4ccccd    # 0.2f

    cmpg-float v1, p1, v0

    if-gez v1, :cond_0

    const p1, 0x3e4ccccd    # 0.2f

    :cond_0
    const/high16 v0, 0x41200000    # 10.0f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 p1, 0x41200000    # 10.0f

    :cond_1
    invoke-static {p1}, Lb/a/a/a/g/i;->a(F)F

    move-result p1

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->B:F

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/github/mikephil/charting/data/k;->C:Z

    return-void
.end method

.method public f(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->A:I

    return-void
.end method

.method public g(I)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/data/k;->y:I

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/github/mikephil/charting/data/k;->z:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public getFillColor()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->y:I

    return v0
.end method

.method public h()I
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->A:I

    return v0
.end method

.method public o()F
    .locals 1

    iget v0, p0, Lcom/github/mikephil/charting/data/k;->B:F

    return v0
.end method
