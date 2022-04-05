.class public final enum Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LatencyMetricType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

.field public static final enum ExecutionTime:Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    const/4 v1, 0x0

    const-string v2, "ExecutionTime"

    invoke-direct {v0, v2, v1}, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;->ExecutionTime:Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    aput-object v0, v2, v1

    sput-object v2, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;
    .locals 1

    const-class v0, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    return-object p0
.end method

.method public static values()[Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;
    .locals 1

    sget-object v0, Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;->$VALUES:[Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    invoke-virtual {v0}, [Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/xiaomi/infra/galaxy/fds/model/ClientMetrics$LatencyMetricType;

    return-object v0
.end method
