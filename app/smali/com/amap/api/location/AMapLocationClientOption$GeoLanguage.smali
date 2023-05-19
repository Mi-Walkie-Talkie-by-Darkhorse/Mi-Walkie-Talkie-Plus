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
        "Ljava/lang/Enum<",
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
    .locals 7

    .line 1
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->DEFAULT:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    .line 2
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v3, "ZH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->ZH:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    .line 3
    new-instance v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const-string v5, "EN"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->EN:Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->a:[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->a:[Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    invoke-virtual {v0}, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/AMapLocationClientOption$GeoLanguage;

    return-object v0
.end method
