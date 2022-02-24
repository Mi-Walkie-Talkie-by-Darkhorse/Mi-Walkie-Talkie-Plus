.class public Lcom/efs/sdk/pa/PAFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/efs/sdk/pa/PAFactory$Builder;
    }
.end annotation


# static fields
.field private static final DEFAULT_TIME_OUT_TIME:J = 0x7d0L

.field private static final INVALID_TIME_OUT_TIME:J = 0x0L

.field private static final MAX_TIME_OUT_TIME:J = 0xfa0L

.field private static final TAG:Ljava/lang/String; = "pafactory"

.field static final sThreadLocal:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Lcom/efs/sdk/pa/PA;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

.field private mContext:Landroid/content/Context;

.field private mExtend:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mReporter:Lcom/efs/sdk/base/EfsReporter;

.field private mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

.field private mSerial:Ljava/lang/String;

.field private mSver:Ljava/lang/String;

.field private mTimeOutTime:J

.field private mTraceListener:Lcom/efs/sdk/pa/PATraceListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    sput-object v0, Lcom/efs/sdk/pa/PAFactory;->sThreadLocal:Ljava/lang/ThreadLocal;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/efs/sdk/pa/config/PackageLevel;",
            "Lcom/efs/sdk/pa/config/IEfsReporter;",
            "Z",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "J",
            "Lcom/efs/sdk/pa/PATraceListener;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p3, p0, Lcom/efs/sdk/pa/PAFactory;->mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

    .line 4
    iput-object p5, p0, Lcom/efs/sdk/pa/PAFactory;->mSerial:Ljava/lang/String;

    .line 5
    iput-object p6, p0, Lcom/efs/sdk/pa/PAFactory;->mExtend:Ljava/util/HashMap;

    .line 6
    iput-object p7, p0, Lcom/efs/sdk/pa/PAFactory;->mSver:Ljava/lang/String;

    .line 7
    iput-object p1, p0, Lcom/efs/sdk/pa/PAFactory;->mContext:Landroid/content/Context;

    .line 8
    iput-object p10, p0, Lcom/efs/sdk/pa/PAFactory;->mTraceListener:Lcom/efs/sdk/pa/PATraceListener;

    .line 9
    iput-wide p8, p0, Lcom/efs/sdk/pa/PAFactory;->mTimeOutTime:J

    .line 10
    new-instance p5, Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-direct {p5, p1, p2, p3, p4}, Lcom/efs/sdk/pa/config/ConfigManager;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;Z)V

    iput-object p5, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;Lcom/efs/sdk/pa/PAFactory$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p10}, Lcom/efs/sdk/pa/PAFactory;-><init>(Landroid/content/Context;Lcom/efs/sdk/pa/config/PackageLevel;Lcom/efs/sdk/pa/config/IEfsReporter;ZLjava/lang/String;Ljava/util/HashMap;Ljava/lang/String;JLcom/efs/sdk/pa/PATraceListener;)V

    return-void
.end method


# virtual methods
.method public getConfigManager()Lcom/efs/sdk/pa/config/ConfigManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    return-object v0
.end method

.method public getExtend()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mExtend:Ljava/util/HashMap;

    return-object v0
.end method

.method public declared-synchronized getPaInstance()Lcom/efs/sdk/pa/PA;
    .locals 5

    monitor-enter p0

    .line 1
    :try_start_0
    sget-object v0, Lcom/efs/sdk/pa/PAFactory;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/efs/sdk/pa/PA;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/efs/sdk/pa/a/c;

    iget-object v1, p0, Lcom/efs/sdk/pa/PAFactory;->mConfigManager:Lcom/efs/sdk/pa/config/ConfigManager;

    invoke-virtual {v1}, Lcom/efs/sdk/pa/config/ConfigManager;->enableTracer()Z

    move-result v1

    invoke-direct {v0, v1}, Lcom/efs/sdk/pa/a/c;-><init>(Z)V

    .line 3
    iget-object v1, p0, Lcom/efs/sdk/pa/PAFactory;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/efs/sdk/pa/a;

    invoke-direct {v2, p0}, Lcom/efs/sdk/pa/a;-><init>(Lcom/efs/sdk/pa/PAFactory;)V

    iget-wide v3, p0, Lcom/efs/sdk/pa/PAFactory;->mTimeOutTime:J

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/efs/sdk/pa/PA;->registerPAANRListener(Landroid/content/Context;Lcom/efs/sdk/pa/PAANRListener;J)V

    .line 4
    sget-object v1, Lcom/efs/sdk/pa/PAFactory;->sThreadLocal:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, v0}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 5
    :cond_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getReporter()Lcom/efs/sdk/base/EfsReporter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporterFactory:Lcom/efs/sdk/pa/config/IEfsReporter;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/efs/sdk/pa/config/IEfsReporter;->getReporter()Lcom/efs/sdk/base/EfsReporter;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mReporter:Lcom/efs/sdk/base/EfsReporter;

    return-object v0
.end method

.method public getSerial()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mSerial:Ljava/lang/String;

    return-object v0
.end method

.method public getSver()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mSver:Ljava/lang/String;

    return-object v0
.end method

.method public getTraceListener()Lcom/efs/sdk/pa/PATraceListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/efs/sdk/pa/PAFactory;->mTraceListener:Lcom/efs/sdk/pa/PATraceListener;

    return-object v0
.end method
