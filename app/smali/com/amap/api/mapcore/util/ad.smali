.class public Lcom/amap/api/mapcore/util/ad;
.super Lcom/amap/api/maps/model/IndoorBuildingInfo;
.source "IndoorBuilding.java"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:I

.field public d:[Ljava/lang/String;

.field public e:I

.field public f:[I

.field public g:Landroid/graphics/Point;

.field public h:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/amap/api/maps/model/IndoorBuildingInfo;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/ad;->g:Landroid/graphics/Point;

    return-void
.end method
