.class final Lcom/huawei/hms/mlsdk/common/AgConnectInfo$AgConnectKey;
.super Ljava/lang/Object;
.source "AgConnectInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/huawei/hms/mlsdk/common/AgConnectInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "AgConnectKey"
.end annotation


# static fields
.field public static ANALYTICS_COLLECTOR_URL:Ljava/lang/String; = "service/analytics/collector_url"

.field public static API_KEY:Ljava/lang/String; = "client/api_key"

.field public static APPLICATION_ID:Ljava/lang/String; = "client/app_id"

.field public static ML_SERVICE_URL:Ljava/lang/String; = "service/ml/mlservice_url"

.field public static PACKAGE_NAME:Ljava/lang/String; = "client/package_name"

.field public static REGION:Ljava/lang/String; = "region"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
