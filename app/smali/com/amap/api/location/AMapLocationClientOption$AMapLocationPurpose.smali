.class public final enum Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
.super Ljava/lang/Enum;
.source "AMapLocationClientOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClientOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AMapLocationPurpose"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum SignIn:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

.field public static final enum Sport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

.field public static final enum Transport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

.field private static final synthetic a:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    const-string v1, "SignIn"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->SignIn:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    const-string v1, "Transport"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->Transport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    const-string v1, "Sport"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->Sport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->SignIn:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->Transport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->Sport:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->a:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
    .locals 1

    const-class v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->a:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    invoke-virtual {v0}, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationPurpose;

    return-object v0
.end method
