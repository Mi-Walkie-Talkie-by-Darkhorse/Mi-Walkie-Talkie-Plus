.class public Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final All:Lorg/greenrobot/greendao/Property;

.field public static final DirName:Lorg/greenrobot/greendao/Property;

.field public static final Failure:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final IsDownloading:Lorg/greenrobot/greendao/Property;

.field public static final LatitudeBottomRight:Lorg/greenrobot/greendao/Property;

.field public static final LatitudeTopLeft:Lorg/greenrobot/greendao/Property;

.field public static final LongitudeBottomRight:Lorg/greenrobot/greendao/Property;

.field public static final LongitudeTopLeft:Lorg/greenrobot/greendao/Property;

.field public static final MapType:Lorg/greenrobot/greendao/Property;

.field public static final Size:Lorg/greenrobot/greendao/Property;

.field public static final Sucess:Lorg/greenrobot/greendao/Property;

.field public static final ZoomLevel:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Double;

    const/4 v8, 0x1

    const-string v10, "latitudeTopLeft"

    const/4 v11, 0x0

    const-string v12, "LATITUDE_TOP_LEFT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->LatitudeTopLeft:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/4 v2, 0x2

    const-string v4, "longitudeTopLeft"

    const/4 v5, 0x0

    const-string v6, "LONGITUDE_TOP_LEFT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->LongitudeTopLeft:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Double;

    const/4 v8, 0x3

    const-string v10, "latitudeBottomRight"

    const-string v12, "LATITUDE_BOTTOM_RIGHT"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->LatitudeBottomRight:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Double;

    const/4 v2, 0x4

    const-string v4, "longitudeBottomRight"

    const-string v6, "LONGITUDE_BOTTOM_RIGHT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->LongitudeBottomRight:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x5

    const-string v10, "zoomLevel"

    const-string v12, "ZOOM_LEVEL"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->ZoomLevel:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/4 v2, 0x6

    const-string v4, "all"

    const-string v6, "ALL"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->All:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x7

    const-string v10, "sucess"

    const-string v12, "SUCESS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Sucess:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x8

    const-string v4, "failure"

    const-string v6, "FAILURE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Failure:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "size"

    const-string v12, "SIZE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->Size:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "dirName"

    const-string v6, "DIR_NAME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->DirName:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0xb

    const-string v10, "mapType"

    const-string v12, "MAP_TYPE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->MapType:Lorg/greenrobot/greendao/Property;

    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Boolean;

    const/16 v2, 0xc

    const-string v4, "isDownloading"

    const-string v6, "IS_DOWNLOADING"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->IsDownloading:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
