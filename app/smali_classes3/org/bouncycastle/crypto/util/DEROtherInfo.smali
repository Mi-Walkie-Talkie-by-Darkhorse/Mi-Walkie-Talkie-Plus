.class public Lorg/bouncycastle/crypto/util/DEROtherInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/DEROtherInfo$1;,
        Lorg/bouncycastle/crypto/util/DEROtherInfo$Builder;
    }
.end annotation


# instance fields
.field private final sequence:Lorg/bouncycastle/asn1/DERSequence;


# direct methods
.method private constructor <init>(Lorg/bouncycastle/asn1/DERSequence;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo;->sequence:Lorg/bouncycastle/asn1/DERSequence;

    return-void
.end method

.method synthetic constructor <init>(Lorg/bouncycastle/asn1/DERSequence;Lorg/bouncycastle/crypto/util/DEROtherInfo$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/DEROtherInfo;-><init>(Lorg/bouncycastle/asn1/DERSequence;)V

    return-void
.end method


# virtual methods
.method public getEncoded()[B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DEROtherInfo;->sequence:Lorg/bouncycastle/asn1/DERSequence;

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/DERSequence;->getEncoded()[B

    move-result-object v0

    return-object v0
.end method
