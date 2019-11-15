.class public abstract Lcom/github/mikephil/charting/b/a;
.super Ljava/lang/Object;
.source "AbstractBuffer.java"


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
.field protected a:I

.field public final b:[F

.field protected c:F

.field protected d:F

.field protected e:I

.field protected f:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v0, p0, Lcom/github/mikephil/charting/b/a;->a:I

    iput v1, p0, Lcom/github/mikephil/charting/b/a;->c:F

    iput v1, p0, Lcom/github/mikephil/charting/b/a;->d:F

    iput v0, p0, Lcom/github/mikephil/charting/b/a;->e:I

    iput v0, p0, Lcom/github/mikephil/charting/b/a;->f:I

    iput v0, p0, Lcom/github/mikephil/charting/b/a;->a:I

    new-array v0, p1, [F

    iput-object v0, p0, Lcom/github/mikephil/charting/b/a;->b:[F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/github/mikephil/charting/b/a;->a:I

    return-void
.end method

.method public a(FF)V
    .locals 0

    iput p1, p0, Lcom/github/mikephil/charting/b/a;->c:F

    iput p2, p0, Lcom/github/mikephil/charting/b/a;->d:F

    return-void
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lcom/github/mikephil/charting/b/a;->b:[F

    array-length v0, v0

    return v0
.end method
