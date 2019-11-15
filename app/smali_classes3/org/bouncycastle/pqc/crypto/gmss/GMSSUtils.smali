.class Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;
.super Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static clone([Ljava/util/Vector;)[Ljava/util/Vector;
    .locals 5

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_2

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    aput-object v2, v1, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v3

    if-eqz v3, :cond_1

    aget-object v3, v1, v0

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSLeaf;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootCalc;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;)[Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/GMSSRootSig;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v0, v0, [Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    array-length v1, p0

    invoke-static {p0, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method static clone([[B)[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static clone([[Ljava/util/Vector;)[[Ljava/util/Vector;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[Ljava/util/Vector;

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Ljava/util/Vector;)[Ljava/util/Vector;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static clone([[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([Lorg/bouncycastle/pqc/crypto/gmss/Treehash;)[Lorg/bouncycastle/pqc/crypto/gmss/Treehash;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method static clone([[[B)[[[B
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    check-cast v0, [[[B

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[[B

    const/4 v0, 0x0

    :goto_1
    array-length v2, p0

    if-eq v0, v2, :cond_1

    aget-object v2, p0, v0

    invoke-static {v2}, Lorg/bouncycastle/pqc/crypto/gmss/GMSSUtils;->clone([[B)[[B

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method
