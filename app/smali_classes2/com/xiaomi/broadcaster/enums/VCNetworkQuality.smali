.class public final enum Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;
.super Ljava/lang/Enum;
.source "VCNetworkQuality.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

.field public static final enum VCNetworkQualityHigh:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

.field public static final enum VCNetworkQualityLow:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

.field public static final enum VCNetworkQualityMedium:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;


# instance fields
.field private nCode:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    const-string v1, "VCNetworkQualityLow"

    invoke-direct {v0, v1, v2, v2}, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityLow:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    const-string v1, "VCNetworkQualityMedium"

    invoke-direct {v0, v1, v3, v3}, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityMedium:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    new-instance v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    const-string v1, "VCNetworkQualityHigh"

    invoke-direct {v0, v1, v4, v4}, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityHigh:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityLow:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    aput-object v1, v0, v2

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityMedium:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    aput-object v1, v0, v3

    sget-object v1, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->VCNetworkQualityHigh:Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    aput-object v1, v0, v4

    sput-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->nCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;
    .locals 1

    const-class v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    return-object v0
.end method

.method public static values()[Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;
    .locals 1

    sget-object v0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->$VALUES:[Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    invoke-virtual {v0}, [Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/xiaomi/broadcaster/enums/VCNetworkQuality;->nCode:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
