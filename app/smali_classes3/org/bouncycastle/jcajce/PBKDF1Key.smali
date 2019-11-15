.class public Lorg/bouncycastle/jcajce/PBKDF1Key;
.super Ljava/lang/Object;

# interfaces
.implements Lorg/bouncycastle/jcajce/PBKDFKey;


# instance fields
.field private final converter:Lorg/bouncycastle/crypto/CharToByteConverter;

.field private final password:[C


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    array-length v0, p1

    new-array v0, v0, [C

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    iput-object p2, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public getAlgorithm()Ljava/lang/String;
    .locals 1

    const-string v0, "PBKDF1"

    return-object v0
.end method

.method public getEncoded()[B
    .locals 2

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    iget-object v1, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    invoke-interface {v0, v1}, Lorg/bouncycastle/crypto/CharToByteConverter;->convert([C)[B

    move-result-object v0

    return-object v0
.end method

.method public getFormat()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->converter:Lorg/bouncycastle/crypto/CharToByteConverter;

    invoke-interface {v0}, Lorg/bouncycastle/crypto/CharToByteConverter;->getType()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPassword()[C
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1Key;->password:[C

    return-object v0
.end method
