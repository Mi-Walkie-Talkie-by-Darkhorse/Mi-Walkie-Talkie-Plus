.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;
.super Ljava/lang/Enum;
.source "MetricData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MetricType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

.field public static final enum Counter:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

.field public static final enum Latency:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

.field public static final enum Throughput:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    const-string v1, "Latency"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->Latency:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    .line 2
    new-instance v1, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    const-string v3, "Throughput"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->Throughput:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    .line 3
    new-instance v3, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    const-string v5, "Counter"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->Counter:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;
    .locals 1

    .line 1
    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;
    .locals 1

    .line 1
    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-object v0
.end method
