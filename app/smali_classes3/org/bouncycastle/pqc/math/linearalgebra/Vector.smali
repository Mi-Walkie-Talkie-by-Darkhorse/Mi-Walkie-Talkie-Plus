.class public abstract Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
.super Ljava/lang/Object;


# instance fields
.field protected length:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract add(Lorg/bouncycastle/pqc/math/linearalgebra/Vector;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
.end method

.method public abstract equals(Ljava/lang/Object;)Z
.end method

.method public abstract getEncoded()[B
.end method

.method public final getLength()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/pqc/math/linearalgebra/Vector;->length:I

    return v0
.end method

.method public abstract hashCode()I
.end method

.method public abstract isZero()Z
.end method

.method public abstract multiply(Lorg/bouncycastle/pqc/math/linearalgebra/Permutation;)Lorg/bouncycastle/pqc/math/linearalgebra/Vector;
.end method

.method public abstract toString()Ljava/lang/String;
.end method
