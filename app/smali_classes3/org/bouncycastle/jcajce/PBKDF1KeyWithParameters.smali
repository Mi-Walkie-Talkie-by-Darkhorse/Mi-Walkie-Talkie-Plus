.class public Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;
.super Lorg/bouncycastle/jcajce/PBKDF1Key;

# interfaces
.implements Ljavax/crypto/interfaces/PBEKey;


# instance fields
.field private final iterationCount:I

.field private final salt:[B


# direct methods
.method public constructor <init>([CLorg/bouncycastle/crypto/CharToByteConverter;[BI)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lorg/bouncycastle/jcajce/PBKDF1Key;-><init>([CLorg/bouncycastle/crypto/CharToByteConverter;)V

    invoke-static {p3}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->salt:[B

    iput p4, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->iterationCount:I

    return-void
.end method


# virtual methods
.method public getIterationCount()I
    .locals 1

    iget v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->iterationCount:I

    return v0
.end method

.method public getSalt()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/jcajce/PBKDF1KeyWithParameters;->salt:[B

    return-object v0
.end method
