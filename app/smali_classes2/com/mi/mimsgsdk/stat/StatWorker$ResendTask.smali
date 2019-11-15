.class Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;
.super Ljava/lang/Object;
.source "StatWorker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/mimsgsdk/stat/StatWorker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ResendTask"
.end annotation


# static fields
.field private static final MAX_RETRY_TIMES:I = 0x3

.field private static final RETRY_INTERVAL_TIME:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;->RETRY_INTERVAL_TIME:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mi/mimsgsdk/stat/StatWorker$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/mi/mimsgsdk/stat/StatWorker;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduled send scribe start"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getInstance()Lcom/mi/mimsgsdk/stat/storage/StatDao;

    move-result-object v0

    const/4 v1, 0x3

    sget-wide v2, Lcom/mi/mimsgsdk/stat/StatWorker$ResendTask;->RETRY_INTERVAL_TIME:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/mi/mimsgsdk/stat/storage/StatDao;->getFailedRows(IJ)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->getJsonData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/stat/storage/StatDao$StatEntity;->getId()I

    move-result v0

    invoke-static {v2, v0}, Lcom/mi/mimsgsdk/stat/StatWorker;->parseJsonAndSend(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/mi/mimsgsdk/stat/StatWorker;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "scheduled send scribe end"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
