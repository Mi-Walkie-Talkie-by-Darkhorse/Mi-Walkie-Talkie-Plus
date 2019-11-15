.class public abstract Lorg/bouncycastle/math/raw/Nat384;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static mul([I[I[I)V
    .locals 12

    invoke-static {p0, p1, p2}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    const/4 v1, 0x6

    const/4 v3, 0x6

    const/16 v5, 0xc

    move-object v0, p0

    move-object v2, p1

    move-object v4, p2

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat192;->mul([II[II[II)V

    const/4 v0, 0x6

    const/16 v1, 0xc

    invoke-static {p2, v0, p2, v1}, Lorg/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-static {p2, v1, p2, v2, v3}, Lorg/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v1

    add-int/2addr v1, v0

    const/16 v2, 0x12

    const/16 v3, 0xc

    invoke-static {p2, v2, p2, v3, v1}, Lorg/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v1

    add-int v11, v0, v1

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v9

    const/4 v1, 0x6

    const/4 v3, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p0

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v0

    const/4 v6, 0x6

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v7, p1

    invoke-static/range {v5 .. v10}, Lorg/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    move-result v1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v1

    invoke-static {v4, v9, v1}, Lorg/bouncycastle/math/raw/Nat192;->mul([I[I[I)V

    if-eqz v0, :cond_1

    const/16 v0, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->addTo(I[II[II)I

    move-result v0

    :goto_1
    add-int/2addr v0, v11

    const/16 v1, 0x18

    const/16 v2, 0x12

    invoke-static {v1, v0, p2, v2}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/16 v0, 0xc

    const/4 v2, 0x0

    const/4 v3, 0x6

    invoke-static {v0, v1, v2, p2, v3}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    goto :goto_1
.end method

.method public static square([I[I)V
    .locals 9

    const/16 v8, 0x12

    const/16 v7, 0xc

    const/4 v1, 0x6

    const/4 v3, 0x0

    invoke-static {p0, p1}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {p0, v1, p1, v7}, Lorg/bouncycastle/math/raw/Nat192;->square([II[II)V

    invoke-static {p1, v1, p1, v7}, Lorg/bouncycastle/math/raw/Nat192;->addToEachOther([II[II)I

    move-result v0

    invoke-static {p1, v3, p1, v1, v3}, Lorg/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v2

    add-int/2addr v2, v0

    invoke-static {p1, v8, p1, v7, v2}, Lorg/bouncycastle/math/raw/Nat192;->addTo([II[III)I

    move-result v2

    add-int v6, v0, v2

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->create()[I

    move-result-object v4

    move-object v0, p0

    move-object v2, p0

    move v5, v3

    invoke-static/range {v0 .. v5}, Lorg/bouncycastle/math/raw/Nat192;->diff([II[II[II)Z

    invoke-static {}, Lorg/bouncycastle/math/raw/Nat192;->createExt()[I

    move-result-object v0

    invoke-static {v4, v0}, Lorg/bouncycastle/math/raw/Nat192;->square([I[I)V

    invoke-static {v7, v0, v3, p1, v1}, Lorg/bouncycastle/math/raw/Nat;->subFrom(I[II[II)I

    move-result v0

    add-int/2addr v0, v6

    const/16 v1, 0x18

    invoke-static {v1, v0, p1, v8}, Lorg/bouncycastle/math/raw/Nat;->addWordAt(II[II)I

    return-void
.end method
