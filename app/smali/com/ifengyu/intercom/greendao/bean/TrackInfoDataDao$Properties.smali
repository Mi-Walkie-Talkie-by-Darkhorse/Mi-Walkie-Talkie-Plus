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
.field public static final AccruedClimb:Lorg/greenrobot/greendao/Property;

.field public static final AccruedDescent:Lorg/greenrobot/greendao/Property;

.field public static final AverageAltitude:Lorg/greenrobot/greendao/Property;

.field public static final AverageSpeed:Lorg/greenrobot/greendao/Property;

.field public static final BeginAddress:Lorg/greenrobot/greendao/Property;

.field public static final BeginTime:Lorg/greenrobot/greendao/Property;

.field public static final City:Lorg/greenrobot/greendao/Property;

.field public static final District:Lorg/greenrobot/greendao/Property;

.field public static final EndAddress:Lorg/greenrobot/greendao/Property;

.field public static final EndTime:Lorg/greenrobot/greendao/Property;

.field public static final Id:Lorg/greenrobot/greendao/Property;

.field public static final IsPaused:Lorg/greenrobot/greendao/Property;

.field public static final IsSaved:Lorg/greenrobot/greendao/Property;

.field public static final MaxAltitude:Lorg/greenrobot/greendao/Property;

.field public static final MinAltitude:Lorg/greenrobot/greendao/Property;

.field public static final ServerTrackID:Lorg/greenrobot/greendao/Property;

.field public static final TotalDistance:Lorg/greenrobot/greendao/Property;

.field public static final TotalSecondTime:Lorg/greenrobot/greendao/Property;

.field public static final TrackArea:Lorg/greenrobot/greendao/Property;

.field public static final TrackCenterLatitude:Lorg/greenrobot/greendao/Property;

.field public static final TrackCenterLongitude:Lorg/greenrobot/greendao/Property;

.field public static final TrackID:Lorg/greenrobot/greendao/Property;

.field public static final TrackMapScreenshotURI:Lorg/greenrobot/greendao/Property;

.field public static final TrackMapZoomNum:Lorg/greenrobot/greendao/Property;

.field public static final TrackName:Lorg/greenrobot/greendao/Property;

.field public static final TrackType:Lorg/greenrobot/greendao/Property;

.field public static final Userid:Lorg/greenrobot/greendao/Property;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v6, Lorg/greenrobot/greendao/Property;

    const-class v2, Ljava/lang/Long;

    const/4 v1, 0x0

    const-string v3, "id"

    const/4 v4, 0x1

    const-string v5, "_id"

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v6, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->Id:Lorg/greenrobot/greendao/Property;

    .line 2
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x1

    const-string v10, "userid"

    const/4 v11, 0x0

    const-string v12, "USERID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->Userid:Lorg/greenrobot/greendao/Property;

    .line 3
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x2

    const-string v4, "trackID"

    const/4 v5, 0x0

    const-string v6, "TRACK_ID"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackID:Lorg/greenrobot/greendao/Property;

    .line 4
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x3

    const-string v10, "serverTrackID"

    const-string v12, "SERVER_TRACK_ID"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->ServerTrackID:Lorg/greenrobot/greendao/Property;

    .line 5
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/4 v2, 0x4

    const-string v4, "trackType"

    const-string v6, "TRACK_TYPE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackType:Lorg/greenrobot/greendao/Property;

    .line 6
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/4 v8, 0x5

    const-string v10, "trackName"

    const-string v12, "TRACK_NAME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackName:Lorg/greenrobot/greendao/Property;

    .line 7
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/4 v2, 0x6

    const-string v4, "trackArea"

    const-string v6, "TRACK_AREA"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackArea:Lorg/greenrobot/greendao/Property;

    .line 8
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/4 v8, 0x7

    const-string v10, "beginTime"

    const-string v12, "BEGIN_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->BeginTime:Lorg/greenrobot/greendao/Property;

    .line 9
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x8

    const-string v4, "endTime"

    const-string v6, "END_TIME"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->EndTime:Lorg/greenrobot/greendao/Property;

    .line 10
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0x9

    const-string v10, "beginAddress"

    const-string v12, "BEGIN_ADDRESS"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->BeginAddress:Lorg/greenrobot/greendao/Property;

    .line 11
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xa

    const-string v4, "endAddress"

    const-string v6, "END_ADDRESS"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->EndAddress:Lorg/greenrobot/greendao/Property;

    .line 12
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/String;

    const/16 v8, 0xb

    const-string v10, "city"

    const-string v12, "CITY"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->City:Lorg/greenrobot/greendao/Property;

    .line 13
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0xc

    const-string v4, "district"

    const-string v6, "DISTRICT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->District:Lorg/greenrobot/greendao/Property;

    .line 14
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0xd

    const-string v10, "totalSecondTime"

    const-string v12, "TOTAL_SECOND_TIME"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TotalSecondTime:Lorg/greenrobot/greendao/Property;

    .line 15
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0xe

    const-string v4, "totalDistance"

    const-string v6, "TOTAL_DISTANCE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TotalDistance:Lorg/greenrobot/greendao/Property;

    .line 16
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Float;

    const/16 v8, 0xf

    const-string v10, "averageSpeed"

    const-string v12, "AVERAGE_SPEED"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->AverageSpeed:Lorg/greenrobot/greendao/Property;

    .line 17
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x10

    const-string v4, "averageAltitude"

    const-string v6, "AVERAGE_ALTITUDE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->AverageAltitude:Lorg/greenrobot/greendao/Property;

    .line 18
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x11

    const-string v10, "maxAltitude"

    const-string v12, "MAX_ALTITUDE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->MaxAltitude:Lorg/greenrobot/greendao/Property;

    .line 19
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x12

    const-string v4, "minAltitude"

    const-string v6, "MIN_ALTITUDE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->MinAltitude:Lorg/greenrobot/greendao/Property;

    .line 20
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x13

    const-string v10, "accruedClimb"

    const-string v12, "ACCRUED_CLIMB"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->AccruedClimb:Lorg/greenrobot/greendao/Property;

    .line 21
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x14

    const-string v4, "accruedDescent"

    const-string v6, "ACCRUED_DESCENT"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->AccruedDescent:Lorg/greenrobot/greendao/Property;

    .line 22
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x15

    const-string v10, "trackMapZoomNum"

    const-string v12, "TRACK_MAP_ZOOM_NUM"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackMapZoomNum:Lorg/greenrobot/greendao/Property;

    .line 23
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Integer;

    const/16 v2, 0x16

    const-string v4, "trackCenterLatitude"

    const-string v6, "TRACK_CENTER_LATITUDE"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackCenterLatitude:Lorg/greenrobot/greendao/Property;

    .line 24
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Integer;

    const/16 v8, 0x17

    const-string v10, "trackCenterLongitude"

    const-string v12, "TRACK_CENTER_LONGITUDE"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackCenterLongitude:Lorg/greenrobot/greendao/Property;

    .line 25
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/String;

    const/16 v2, 0x18

    const-string v4, "trackMapScreenshotURI"

    const-string v6, "TRACK_MAP_SCREENSHOT_URI"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->TrackMapScreenshotURI:Lorg/greenrobot/greendao/Property;

    .line 26
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v9, Ljava/lang/Boolean;

    const/16 v8, 0x19

    const-string v10, "isPaused"

    const-string v12, "IS_PAUSED"

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->IsPaused:Lorg/greenrobot/greendao/Property;

    .line 27
    new-instance v0, Lorg/greenrobot/greendao/Property;

    const-class v3, Ljava/lang/Boolean;

    const/16 v2, 0x1a

    const-string v4, "isSaved"

    const-string v6, "IS_SAVED"

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/greenrobot/greendao/Property;-><init>(ILjava/lang/Class;Ljava/lang/String;ZLjava/lang/String;)V

    sput-object v0, Lcom/ifengyu/intercom/greendao/bean/TrackInfoDataDao$Properties;->IsSaved:Lorg/greenrobot/greendao/Property;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
