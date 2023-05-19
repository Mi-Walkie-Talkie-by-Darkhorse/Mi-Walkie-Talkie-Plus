.class public Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
.super Ljava/lang/Object;
.source "MetricData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;
    }
.end annotation


# instance fields
.field private metricName:Ljava/lang/String;

.field private metricType:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

.field private timestamp:J

.field private value:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;Ljava/lang/String;JJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricType:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    .line 4
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricName:Ljava/lang/String;

    .line 5
    iput-wide p3, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->value:J

    .line 6
    iput-wide p5, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->timestamp:J

    return-void
.end method


# virtual methods
.method public getMetricName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricName:Ljava/lang/String;

    return-object v0
.end method

.method public getMetricType()Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricType:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-object v0
.end method

.method public getTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->timestamp:J

    return-wide v0
.end method

.method public getValue()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->value:J

    return-wide v0
.end method

.method public setMetricName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricName:Ljava/lang/String;

    return-void
.end method

.method public setMetricType(Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricType:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-void
.end method

.method public setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->timestamp:J

    return-void
.end method

.method public setValue(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->value:J

    return-void
.end method

.method public withMetricName(Ljava/lang/String;)Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricName:Ljava/lang/String;

    return-object p0
.end method

.method public withMetricType(Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;)Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->metricType:Lcom/xiaomi/infra/galaxy/fds/model/MetricData$MetricType;

    return-object p0
.end method

.method public withTimeStamp(J)Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->timestamp:J

    return-object p0
.end method

.method public withValue(J)Lcom/xiaomi/infra/galaxy/fds/model/MetricData;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/xiaomi/infra/galaxy/fds/model/MetricData;->value:J

    return-object p0
.end method
