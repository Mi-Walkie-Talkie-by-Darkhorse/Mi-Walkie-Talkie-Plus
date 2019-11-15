.class public Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;
.super Ljava/lang/Object;
.source "TileDownloadStateDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final a:Lorg/greenrobot/greendao/f;

.field public static final b:Lorg/greenrobot/greendao/f;

.field public static final c:Lorg/greenrobot/greendao/f;

.field public static final d:Lorg/greenrobot/greendao/f;

.field public static final e:Lorg/greenrobot/greendao/f;

.field public static final f:Lorg/greenrobot/greendao/f;

.field public static final g:Lorg/greenrobot/greendao/f;

.field public static final h:Lorg/greenrobot/greendao/f;

.field public static final i:Lorg/greenrobot/greendao/f;

.field public static final j:Lorg/greenrobot/greendao/f;

.field public static final k:Lorg/greenrobot/greendao/f;

.field public static final l:Lorg/greenrobot/greendao/f;

.field public static final m:Lorg/greenrobot/greendao/f;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v4, 0x1

    const/4 v1, 0x0

    new-instance v0, Lorg/greenrobot/greendao/f;

    const-class v2, Ljava/lang/Long;

    const-string v3, "id"

    const-string v5, "_id"

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->a:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    const-class v5, Ljava/lang/Double;

    const-string v6, "latitudeTopLeft"

    const-string v8, "LATITUDE_TOP_LEFT"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->b:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/Double;

    const-string v5, "longitudeTopLeft"

    const-string v7, "LONGITUDE_TOP_LEFT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->c:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/Double;

    const-string v5, "latitudeBottomRight"

    const-string v7, "LATITUDE_BOTTOM_RIGHT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->d:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Double;

    const-string v5, "longitudeBottomRight"

    const-string v7, "LONGITUDE_BOTTOM_RIGHT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->e:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/Integer;

    const-string v5, "zoomLevel"

    const-string v7, "ZOOM_LEVEL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->f:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/Integer;

    const-string v5, "all"

    const-string v7, "ALL"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->g:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Integer;

    const-string v5, "sucess"

    const-string v7, "SUCESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->h:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Integer;

    const-string v5, "failure"

    const-string v7, "FAILURE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->i:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "size"

    const-string v7, "SIZE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->j:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "dirName"

    const-string v7, "DIR_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->k:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/Integer;

    const-string v5, "mapType"

    const-string v7, "MAP_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->l:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isDownloading"

    const-string v7, "IS_DOWNLOADING"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/dao/TileDownloadStateDao$Properties;->m:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
