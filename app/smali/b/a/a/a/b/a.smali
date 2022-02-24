.class public abstract Lb/a/a/a/b/a;
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


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lb/a/a/a/b/a;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 3
    iput v1, p0, Lb/a/a/a/b/a;->c:F

    .line 4
    iput v1, p0, Lb/a/a/a/b/a;->d:F

    .line 5
    iput v0, p0, Lb/a/a/a/b/a;->a:I

    .line 6
    new-array p1, p1, [F

    iput-object p1, p0, Lb/a/a/a/b/a;->b:[F

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lb/a/a/a/b/a;->a:I

    return-void
.end method

.method public a(FF)V
    .locals 0

    .line 2
    iput p1, p0, Lb/a/a/a/b/a;->c:F

    .line 3
    iput p2, p0, Lb/a/a/a/b/a;->d:F

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Lb/a/a/a/b/a;->b:[F

    array-length v0, v0

    return v0
.end method
