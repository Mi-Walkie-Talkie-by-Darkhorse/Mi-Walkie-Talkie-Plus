.class public final enum Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
.super Ljava/lang/Enum;
.source "AMapLocationClientOption.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/location/AMapLocationClientOption;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AMapLocationProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

.field public static final enum HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

.field private static final synthetic b:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;


# instance fields
.field private a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string v1, "HTTP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTP:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    .line 2
    new-instance v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const-string v3, "HTTPS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->HTTPS:Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    const/4 v3, 0x2

    new-array v3, v3, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->b:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->a:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
    .locals 1

    .line 1
    const-class v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-object p0
.end method

.method public static values()[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;
    .locals 1

    .line 1
    sget-object v0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->b:[Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    invoke-virtual {v0}, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/location/AMapLocationClientOption$AMapLocationProtocol;->a:I

    return v0
.end method
