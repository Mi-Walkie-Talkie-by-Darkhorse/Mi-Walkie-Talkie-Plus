.class public Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;
.super Ljava/lang/Object;
.source "TrackInfoDataDao.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Properties"
.end annotation


# static fields
.field public static final A:Lorg/greenrobot/greendao/f;

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

.field public static final n:Lorg/greenrobot/greendao/f;

.field public static final o:Lorg/greenrobot/greendao/f;

.field public static final p:Lorg/greenrobot/greendao/f;

.field public static final q:Lorg/greenrobot/greendao/f;

.field public static final r:Lorg/greenrobot/greendao/f;

.field public static final s:Lorg/greenrobot/greendao/f;

.field public static final t:Lorg/greenrobot/greendao/f;

.field public static final u:Lorg/greenrobot/greendao/f;

.field public static final v:Lorg/greenrobot/greendao/f;

.field public static final w:Lorg/greenrobot/greendao/f;

.field public static final x:Lorg/greenrobot/greendao/f;

.field public static final y:Lorg/greenrobot/greendao/f;

.field public static final z:Lorg/greenrobot/greendao/f;


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

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->a:Lorg/greenrobot/greendao/f;

    new-instance v3, Lorg/greenrobot/greendao/f;

    const-class v5, Ljava/lang/String;

    const-string v6, "userid"

    const-string v8, "USERID"

    move v7, v1

    invoke-direct/range {v3 .. v8}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v3, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->b:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x2

    const-class v4, Ljava/lang/String;

    const-string v5, "trackID"

    const-string v7, "TRACK_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->c:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x3

    const-class v4, Ljava/lang/String;

    const-string v5, "serverTrackID"

    const-string v7, "SERVER_TRACK_ID"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->d:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x4

    const-class v4, Ljava/lang/Integer;

    const-string v5, "trackType"

    const-string v7, "TRACK_TYPE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->e:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x5

    const-class v4, Ljava/lang/String;

    const-string v5, "trackName"

    const-string v7, "TRACK_NAME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->f:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x6

    const-class v4, Ljava/lang/String;

    const-string v5, "trackArea"

    const-string v7, "TRACK_AREA"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->g:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/4 v3, 0x7

    const-class v4, Ljava/lang/Integer;

    const-string v5, "beginTime"

    const-string v7, "BEGIN_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->h:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x8

    const-class v4, Ljava/lang/Integer;

    const-string v5, "endTime"

    const-string v7, "END_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->i:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x9

    const-class v4, Ljava/lang/String;

    const-string v5, "beginAddress"

    const-string v7, "BEGIN_ADDRESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->j:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xa

    const-class v4, Ljava/lang/String;

    const-string v5, "endAddress"

    const-string v7, "END_ADDRESS"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->k:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xb

    const-class v4, Ljava/lang/String;

    const-string v5, "city"

    const-string v7, "CITY"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->l:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xc

    const-class v4, Ljava/lang/String;

    const-string v5, "district"

    const-string v7, "DISTRICT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->m:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xd

    const-class v4, Ljava/lang/Integer;

    const-string v5, "totalSecondTime"

    const-string v7, "TOTAL_SECOND_TIME"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->n:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xe

    const-class v4, Ljava/lang/Integer;

    const-string v5, "totalDistance"

    const-string v7, "TOTAL_DISTANCE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->o:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0xf

    const-class v4, Ljava/lang/Float;

    const-string v5, "averageSpeed"

    const-string v7, "AVERAGE_SPEED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->p:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x10

    const-class v4, Ljava/lang/Integer;

    const-string v5, "averageAltitude"

    const-string v7, "AVERAGE_ALTITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->q:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x11

    const-class v4, Ljava/lang/Integer;

    const-string v5, "maxAltitude"

    const-string v7, "MAX_ALTITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->r:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x12

    const-class v4, Ljava/lang/Integer;

    const-string v5, "minAltitude"

    const-string v7, "MIN_ALTITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->s:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x13

    const-class v4, Ljava/lang/Integer;

    const-string v5, "accruedClimb"

    const-string v7, "ACCRUED_CLIMB"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->t:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x14

    const-class v4, Ljava/lang/Integer;

    const-string v5, "accruedDescent"

    const-string v7, "ACCRUED_DESCENT"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->u:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x15

    const-class v4, Ljava/lang/Integer;

    const-string v5, "trackMapZoomNum"

    const-string v7, "TRACK_MAP_ZOOM_NUM"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->v:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x16

    const-class v4, Ljava/lang/Integer;

    const-string v5, "trackCenterLatitude"

    const-string v7, "TRACK_CENTER_LATITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->w:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x17

    const-class v4, Ljava/lang/Integer;

    const-string v5, "trackCenterLongitude"

    const-string v7, "TRACK_CENTER_LONGITUDE"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->x:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x18

    const-class v4, Ljava/lang/String;

    const-string v5, "trackMapScreenshotURI"

    const-string v7, "TRACK_MAP_SCREENSHOT_URI"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->y:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x19

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isPaused"

    const-string v7, "IS_PAUSED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->z:Lorg/greenrobot/greendao/f;

    new-instance v2, Lorg/greenrobot/greendao/f;

    const/16 v3, 0x1a

    const-class v4, Ljava/lang/Boolean;

    const-string v5, "isSaved"

    const-string v7, "IS_SAVED"

    move v6, v1

    invoke-direct/range {v2 .. v7}, Lorg/greenrobot/greendao/f;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v2, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->A:Lorg/greenrobot/greendao/f;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
