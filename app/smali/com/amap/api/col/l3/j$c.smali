.class final Lcom/amap/api/col/l3/j$c;
.super Ljava/lang/Object;
.source "AMapDelegateImp.java"

# interfaces
.implements Lcom/amap/api/col/l3/ew$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/col/l3/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "c"
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/col/l3/j;


# direct methods
.method private constructor <init>(Lcom/amap/api/col/l3/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/col/l3/j$c;->a:Lcom/amap/api/col/l3/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/amap/api/col/l3/j;B)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/col/l3/j$c;-><init>(Lcom/amap/api/col/l3/j;)V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/col/l3/j$c;->a:Lcom/amap/api/col/l3/j;

    iget-object v1, v0, Lcom/amap/api/col/l3/j;->d:Lcom/amap/api/col/l3/am;

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_indexs:[I

    aget v2, v2, p1

    iput v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorIndex:I

    .line 3
    iget-object v2, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->floor_names:[Ljava/lang/String;

    aget-object p1, v2, p1

    iput-object p1, v1, Lcom/amap/api/maps/model/IndoorBuildingInfo;->activeFloorName:Ljava/lang/String;

    .line 4
    :try_start_0
    invoke-virtual {v0, v1}, Lcom/amap/api/col/l3/j;->setIndoorBuildingInfo(Lcom/amap/api/maps/model/IndoorBuildingInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 5
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    return-void
.end method
