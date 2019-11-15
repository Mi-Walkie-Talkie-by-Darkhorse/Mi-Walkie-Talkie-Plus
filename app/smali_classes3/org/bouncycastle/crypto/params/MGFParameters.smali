.class public Lorg/bouncycastle/crypto/params/MGFParameters;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/crypto/DerivationParameters;


# instance fields
.field seed:[B


# direct methods
.method public constructor <init>([B)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lorg/bouncycastle/crypto/params/MGFParameters;-><init>([BII)V

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, p3, [B

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getSeed()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/params/MGFParameters;->seed:[B

    return-object v0
.end method
