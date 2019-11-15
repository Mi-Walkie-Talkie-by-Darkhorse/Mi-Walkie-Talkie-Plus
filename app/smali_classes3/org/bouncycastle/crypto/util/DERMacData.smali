.class public final Lorg/bouncycastle/crypto/util/DERMacData;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bouncycastle/crypto/util/DERMacData$1;,
        Lorg/bouncycastle/crypto/util/DERMacData$Builder;,
        Lorg/bouncycastle/crypto/util/DERMacData$Type;
    }
.end annotation


# instance fields
.field private final macData:[B


# direct methods
.method private constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/crypto/util/DERMacData;->macData:[B

    return-void
.end method

.method synthetic constructor <init>([BLorg/bouncycastle/crypto/util/DERMacData$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lorg/bouncycastle/crypto/util/DERMacData;-><init>([B)V

    return-void
.end method


# virtual methods
.method public getMacData()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData;->macData:[B

    invoke-static {v0}, Lorg/bouncycastle/util/Arrays;->clone([B)[B

    move-result-object v0

    return-object v0
.end method
