.class public Lorg/bouncycastle/crypto/params/IESWithCipherParameters;
.super Lorg/bouncycastle/crypto/params/IESParameters;


# instance fields
.field private cipherKeySize:I


# direct methods
.method public constructor <init>([B[BII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/crypto/params/IESParameters;-><init>([B[BI)V

    iput p4, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return-void
.end method


# virtual methods
.method public getCipherKeySize()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/crypto/params/IESWithCipherParameters;->cipherKeySize:I

    return v0
.end method
