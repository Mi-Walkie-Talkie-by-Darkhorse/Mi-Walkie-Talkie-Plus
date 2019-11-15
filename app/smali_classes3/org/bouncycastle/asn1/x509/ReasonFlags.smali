.class public Lorg/bouncycastle/asn1/x509/ReasonFlags;
.super Lorg/bouncycastle/asn1/DERBitString;


# static fields
.field public static final AA_COMPROMISE:I = 0x8000

.field public static final AFFILIATION_CHANGED:I = 0x10

.field public static final CA_COMPROMISE:I = 0x20

.field public static final CERTIFICATE_HOLD:I = 0x2

.field public static final CESSATION_OF_OPERATION:I = 0x4

.field public static final KEY_COMPROMISE:I = 0x40

.field public static final PRIVILEGE_WITHDRAWN:I = 0x1

.field public static final SUPERSEDED:I = 0x8

.field public static final UNUSED:I = 0x80

.field public static final aACompromise:I = 0x8000

.field public static final affiliationChanged:I = 0x10

.field public static final cACompromise:I = 0x20

.field public static final certificateHold:I = 0x2

.field public static final cessationOfOperation:I = 0x4

.field public static final keyCompromise:I = 0x40

.field public static final privilegeWithdrawn:I = 0x1

.field public static final superseded:I = 0x8

.field public static final unused:I = 0x80


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/ReasonFlags;->getBytes(I)[B

    move-result-object v0

    invoke-static {p1}, Lorg/bouncycastle/asn1/x509/ReasonFlags;->getPadBits(I)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/DERBitString;)V
    .locals 2

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/DERBitString;->getPadBits()I

    move-result v1

    invoke-direct {p0, v0, v1}, Lorg/bouncycastle/asn1/DERBitString;-><init>([BI)V

    return-void
.end method
