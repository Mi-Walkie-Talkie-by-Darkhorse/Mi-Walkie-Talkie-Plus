.class public Lorg/bouncycastle/asn1/DERNull;
.super Lorg/bouncycastle/asn1/ASN1Null;


# static fields
.field public static final INSTANCE:Lorg/bouncycastle/asn1/DERNull;

.field private static final zeroBytes:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/bouncycastle/asn1/DERNull;

    invoke-direct {v0}, Lorg/bouncycastle/asn1/DERNull;-><init>()V

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->INSTANCE:Lorg/bouncycastle/asn1/DERNull;

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/bouncycastle/asn1/ASN1Null;-><init>()V

    return-void
.end method


# virtual methods
.method encode(Lorg/bouncycastle/asn1/ASN1OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    sget-object v1, Lorg/bouncycastle/asn1/DERNull;->zeroBytes:[B

    invoke-virtual {p1, v0, v1}, Lorg/bouncycastle/asn1/ASN1OutputStream;->writeEncoded(I[B)V

    return-void
.end method

.method encodedLength()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method isConstructed()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
