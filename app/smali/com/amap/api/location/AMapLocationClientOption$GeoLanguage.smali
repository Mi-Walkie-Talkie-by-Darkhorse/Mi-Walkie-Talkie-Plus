.class public final enum Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
.super Ljava/lang/Enum;
.source "AMapLocationClientOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClientOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GeoLanguage"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field public static final enum EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field public static final enum ZH:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

.field private static final synthetic a:[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v1, "ZH"

    invoke-direct {v0, v1, v3}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ZH:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v1, "EN"

    invoke-direct {v0, v1, v4}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    aput-object v1, v0, v2

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ZH:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    aput-object v1, v0, v3

    sget-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    aput-object v1, v0, v4

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->a:[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

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

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    const-class v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object v0
.end method

.method public static values()[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->a:[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v0}, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object v0
.end method
