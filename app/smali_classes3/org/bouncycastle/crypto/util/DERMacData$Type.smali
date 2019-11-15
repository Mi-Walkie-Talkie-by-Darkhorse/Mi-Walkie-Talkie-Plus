.class public final enum Lorg/bouncycastle/crypto/util/DERMacData$Type;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/util/DERMacData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/bouncycastle/crypto/util/DERMacData$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

.field public static final enum UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;


# instance fields
.field private final enc:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v1, "UNILATERALU"

    const-string v2, "KC_1_U"

    invoke-direct {v0, v1, v3, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v1, "UNILATERALV"

    const-string v2, "KC_1_V"

    invoke-direct {v0, v1, v4, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v1, "BILATERALU"

    const-string v2, "KC_2_U"

    invoke-direct {v0, v1, v5, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    new-instance v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const-string v1, "BILATERALV"

    const-string v2, "KC_2_V"

    invoke-direct {v0, v1, v6, v2}, Lorg/bouncycastle/crypto/util/DERMacData$Type;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    const/4 v0, 0x4

    new-array v0, v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    aput-object v1, v0, v3

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->UNILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    aput-object v1, v0, v4

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALU:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    aput-object v1, v0, v5

    sget-object v1, Lorg/bouncycastle/crypto/util/DERMacData$Type;->BILATERALV:Lorg/bouncycastle/crypto/util/DERMacData$Type;

    aput-object v1, v0, v6

    sput-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 1

    const-class v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method

.method public static values()[Lorg/bouncycastle/crypto/util/DERMacData$Type;
    .locals 1

    sget-object v0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->$VALUES:[Lorg/bouncycastle/crypto/util/DERMacData$Type;

    invoke-virtual {v0}, [Lorg/bouncycastle/crypto/util/DERMacData$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/bouncycastle/crypto/util/DERMacData$Type;

    return-object v0
.end method


# virtual methods
.method public getHeader()[B
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/crypto/util/DERMacData$Type;->enc:Ljava/lang/String;

    invoke-static {v0}, Lorg/bouncycastle/util/Strings;->toByteArray(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method
