.class public final enum Lcom/amap/api/services/nearby/NearbySearchFunctionType;
.super Ljava/lang/Enum;
.source "NearbySearchFunctionType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/services/nearby/NearbySearchFunctionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

.field public static final enum DRIVING_DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

.field private static final synthetic a:[Lcom/amap/api/services/nearby/NearbySearchFunctionType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    const-string v1, "DISTANCE_SEARCH"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/services/nearby/NearbySearchFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    new-instance v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    const-string v1, "DRIVING_DISTANCE_SEARCH"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/services/nearby/NearbySearchFunctionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DRIVING_DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    sget-object v1, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->DRIVING_DISTANCE_SEARCH:Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->a:[Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/services/nearby/NearbySearchFunctionType;
    .locals 1

    const-class v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/services/nearby/NearbySearchFunctionType;
    .locals 1

    sget-object v0, Lcom/amap/api/services/nearby/NearbySearchFunctionType;->a:[Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    invoke-virtual {v0}, [Lcom/amap/api/services/nearby/NearbySearchFunctionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/services/nearby/NearbySearchFunctionType;

    return-object v0
.end method
