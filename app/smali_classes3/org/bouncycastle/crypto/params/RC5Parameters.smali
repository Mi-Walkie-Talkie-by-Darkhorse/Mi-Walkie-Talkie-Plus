.class public Lorg/bouncycastle/crypto/params/RC5Parameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/CipherParameters;


# instance fields
.field private key:[B

.field private rounds:I


# direct methods
.method public constructor <init>([BI)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    const/16 v1, 0xff

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "RC5 key length can be no greater than 255"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/RC5Parameters;->key:[B

    iput p2, p0, Lorg/bouncycastle/crypto/params/RC5Parameters;->rounds:I

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RC5Parameters;->key:[B

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getKey()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/RC5Parameters;->key:[B

    return-object v0
.end method

.method public getRounds()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/RC5Parameters;->rounds:I

    return v0
.end method
