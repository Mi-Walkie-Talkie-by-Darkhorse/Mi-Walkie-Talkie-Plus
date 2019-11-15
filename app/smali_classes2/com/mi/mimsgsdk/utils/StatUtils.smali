.class public Lcom/mi/mimsgsdk/utils/StatUtils;
.super Ljava/lang/Object;
.source "StatUtils.java"


# static fields
.field public static final AC_MIXUN_CODE_TEXT:Ljava/lang/String; = "mixun_sdk_talk-send-code-%d-%d-%d-uid-%s-appid-%s"

.field public static final AC_MIXUN_TEXT:Ljava/lang/String; = "mixun_sdk_talk-send-%d-%d-uid-%s-appid-%s"

.field public static final FAST_DOUBLE_OCCURRED_INTERVAL:I = 0x1388

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_ENTER:Ljava/lang/String; = "agora-mixun_sdk_voip-enter-uid-%s-appid-%s"

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_ENTER_CODE:Ljava/lang/String; = "agora-mixun_sdk_voip-enter-code-%d-uid-%s-appid-%s"

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH:Ljava/lang/String; = "agora-mixun_sdk_voip-launch-uid-%s-appid-%s"

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_LAUNCH_FAIL:Ljava/lang/String; = "agora-mixun_sdk_voip-launch-failed-uid-%s-appid-%s"

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_LEAVE:Ljava/lang/String; = "agora-mixun_sdk_voip-leave-uid-%s-appid-%s"

.field public static final KEY_AGORA_MIXUN_SDK_VOIP_LEAVE_CODE:Ljava/lang/String; = "agora-mixun_sdk_voip-leave-code-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_MSG_INIT:Ljava/lang/String; = "mixun_sdk_init-uid-%s-appid-%s"

.field public static final KEY_MIXUN_MSG_INIT_CODE:Ljava/lang/String; = "mixun_sdk_init_code-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_SDK_DOWN:Ljava/lang/String; = "mixun_sdk_download-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_SDK_DOWN_CODE:Ljava/lang/String; = "mixun_sdk_download-code-%d-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_SDK_QUA:Ljava/lang/String; = "agora-mixun_sdk_voip-quality-%d-delay-%d-lost-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_SDK_UPLOAD:Ljava/lang/String; = "mixun_sdk_upload-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_SDK_UPLOAD_CODE:Ljava/lang/String; = "mixun_sdk_upload-code-%d-%d-uid-%s-appid-%s"

.field public static final KEY_MIXUN_VOIP_TIME:Ljava/lang/String; = "agora-mixun_sdk_voip-time-%d-uid-%s-appid-%s"

.field private static final STATISTIC_CMD:Ljava/lang/String; = "appData.recommend.actionLog"

.field private static TAG:Ljava/lang/String;

.field private static instance:Lcom/mi/mimsgsdk/utils/StatUtils;

.field private static sLastOccurredTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/mi/mimsgsdk/utils/StatUtils;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/mi/mimsgsdk/utils/StatUtils;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/utils/StatUtils;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->instance:Lcom/mi/mimsgsdk/utils/StatUtils;

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/mi/mimsgsdk/utils/StatUtils;->sLastOccurredTime:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/mimsgsdk/utils/StatUtils;->sendAsync(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V

    return-void
.end method

.method public static addStatisticsItem(IIILjava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStatisticsItem,channel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bodyType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorCode :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->msg:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_talk-send-code-%d-%d-%d-uid-%s-appid-%s"

    const/4 v2, 0x3

    new-array v2, v2, [J

    const/4 v3, 0x0

    int-to-long v4, p2

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    int-to-long v4, p0

    aput-wide v4, v2, v3

    const/4 v3, 0x2

    int-to-long v4, p1

    aput-wide v4, v2, v3

    invoke-static {v0, v1, p3, v2}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    return-void
.end method

.method public static addStatisticsItem(IILjava/lang/String;)V
    .locals 6

    sget-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addStatisticsItem,channel :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",bodyType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",errorCode : null"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/LogType;->msg:Lcom/mi/mimsgsdk/utils/LogType;

    const-string v1, "mixun_sdk_talk-send-%d-%d-uid-%s-appid-%s"

    const/4 v2, 0x2

    new-array v2, v2, [J

    const/4 v3, 0x0

    int-to-long v4, p0

    aput-wide v4, v2, v3

    const/4 v3, 0x1

    int-to-long v4, p1

    aput-wide v4, v2, v3

    invoke-static {v0, v1, p2, v2}, Lcom/mi/mimsgsdk/utils/StatUtils;->addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V

    return-void
.end method

.method public static varargs addToMiLinkMonitor(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;Ljava/lang/String;[J)V
    .locals 6

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInitParams()Lcom/mi/mimsgsdk/InitParams;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    :goto_1
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/mi/mimsgsdk/InitParams;->getAppId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const-string v0, ""

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    array-length v1, p3

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/util/MissingFormatArgumentException;

    const-string v1, "Format specifier: d,\u53c2\u6570\u4e0d\u591f"

    invoke-direct {v0, v1}, Ljava/util/MissingFormatArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    const-string v2, "trace fail"

    invoke-static {v1, v2, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :pswitch_0
    const/4 v1, 0x2

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-static {p0, v0}, Lcom/mi/mimsgsdk/utils/StatUtils;->statis(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;)V

    sget-object v1, Lcom/mi/mimsgsdk/utils/StatUtils;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "trace try logType :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/utils/LogType;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const/4 v2, 0x3

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :pswitch_3
    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    aput-object p2, v1, v2

    const/4 v2, 0x4

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    :pswitch_4
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x1

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/4 v3, 0x2

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x3

    aget-wide v4, p3, v3

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    aput-object p2, v1, v2

    const/4 v2, 0x5

    aput-object v0, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/utils/StatUtils;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/utils/StatUtils;->instance:Lcom/mi/mimsgsdk/utils/StatUtils;

    return-object v0
.end method

.method public static isFastDoubleOccurred()Z
    .locals 2

    const-wide/16 v0, 0x1388

    invoke-static {v0, v1}, Lcom/mi/mimsgsdk/utils/StatUtils;->isFastDoubleOccurred(J)Z

    move-result v0

    return v0
.end method

.method public static isFastDoubleOccurred(J)Z
    .locals 8

    const-wide/16 v6, 0x0

    const/4 v0, 0x1

    cmp-long v1, p0, v6

    if-gtz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sget-wide v4, Lcom/mi/mimsgsdk/utils/StatUtils;->sLastOccurredTime:J

    sub-long v4, v2, v4

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    cmp-long v1, v4, p0

    if-ltz v1, :cond_0

    :cond_2
    sput-wide v2, Lcom/mi/mimsgsdk/utils/StatUtils;->sLastOccurredTime:J

    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static sendAsync(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;)V
    .locals 3

    invoke-static {}, Lcom/mi/mimsgsdk/MsgSdkManager;->getInstance()Lcom/mi/mimsgsdk/MsgSdkManager;

    move-result-object v0

    const/16 v1, 0x1388

    new-instance v2, Lcom/mi/mimsgsdk/utils/StatUtils$3;

    invoke-direct {v2}, Lcom/mi/mimsgsdk/utils/StatUtils$3;-><init>()V

    invoke-virtual {v0, p0, v1, v2}, Lcom/mi/mimsgsdk/MsgSdkManager;->sendAsync(Lcom/mi/mimsgsdk/service/aidl/MsgPacketData;ILcom/mi/mimsgsdk/service/SendListener;)V

    return-void
.end method

.method public static statis(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/mi/mimsgsdk/utils/StatUtils$2;

    invoke-direct {v0, p0, p1}, Lcom/mi/mimsgsdk/utils/StatUtils$2;-><init>(Lcom/mi/mimsgsdk/utils/LogType;Ljava/lang/String;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/utils/StatUtils$1;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/utils/StatUtils$1;-><init>()V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    return-void
.end method
