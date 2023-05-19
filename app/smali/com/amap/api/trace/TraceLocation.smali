.class public Lcom/amap/api/trace/TraceLocation;
.super Ljava/lang/Object;
.source "TraceLocation.java"


# instance fields
.field private a:D

.field private b:D

.field private c:F

.field private d:F

.field private e:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(DDFFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1, p2}, Lcom/amap/api/trace/TraceLocation;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/trace/TraceLocation;->a:D

    .line 3
    invoke-static {p3, p4}, Lcom/amap/api/trace/TraceLocation;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/trace/TraceLocation;->b:D

    const/high16 p1, 0x45610000    # 3600.0f

    mul-float p5, p5, p1

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr p5, p1

    float-to-int p1, p5

    int-to-float p1, p1

    .line 4
    iput p1, p0, Lcom/amap/api/trace/TraceLocation;->c:F

    float-to-int p1, p6

    int-to-float p1, p1

    .line 5
    iput p1, p0, Lcom/amap/api/trace/TraceLocation;->d:F

    .line 6
    iput-wide p7, p0, Lcom/amap/api/trace/TraceLocation;->e:J

    return-void
.end method

.method private static a(D)D
    .locals 2

    const-wide v0, 0x412e848000000000L    # 1000000.0

    mul-double p0, p0, v0

    .line 1
    invoke-static {p0, p1}, Ljava/lang/Math;->round(D)J

    move-result-wide p0

    long-to-double p0, p0

    div-double/2addr p0, v0

    return-wide p0
.end method


# virtual methods
.method public copy()Lcom/amap/api/trace/TraceLocation;
    .locals 3

    .line 1
    new-instance v0, Lcom/amap/api/trace/TraceLocation;

    invoke-direct {v0}, Lcom/amap/api/trace/TraceLocation;-><init>()V

    .line 2
    iget v1, p0, Lcom/amap/api/trace/TraceLocation;->d:F

    iput v1, v0, Lcom/amap/api/trace/TraceLocation;->d:F

    .line 3
    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->a:D

    iput-wide v1, v0, Lcom/amap/api/trace/TraceLocation;->a:D

    .line 4
    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->b:D

    iput-wide v1, v0, Lcom/amap/api/trace/TraceLocation;->b:D

    .line 5
    iget v1, p0, Lcom/amap/api/trace/TraceLocation;->c:F

    iput v1, v0, Lcom/amap/api/trace/TraceLocation;->c:F

    .line 6
    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->e:J

    iput-wide v1, v0, Lcom/amap/api/trace/TraceLocation;->e:J

    return-object v0
.end method

.method public getBearing()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/trace/TraceLocation;->d:F

    return v0
.end method

.method public getLatitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/trace/TraceLocation;->a:D

    return-wide v0
.end method

.method public getLongitude()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/trace/TraceLocation;->b:D

    return-wide v0
.end method

.method public getSpeed()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/amap/api/trace/TraceLocation;->c:F

    return v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/amap/api/trace/TraceLocation;->e:J

    return-wide v0
.end method

.method public setBearing(F)V
    .locals 0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/amap/api/trace/TraceLocation;->d:F

    return-void
.end method

.method public setLatitude(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/amap/api/trace/TraceLocation;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/trace/TraceLocation;->a:D

    return-void
.end method

.method public setLongitude(D)V
    .locals 0

    .line 1
    invoke-static {p1, p2}, Lcom/amap/api/trace/TraceLocation;->a(D)D

    move-result-wide p1

    iput-wide p1, p0, Lcom/amap/api/trace/TraceLocation;->b:D

    return-void
.end method

.method public setSpeed(F)V
    .locals 1

    const/high16 v0, 0x45610000    # 3600.0f

    mul-float p1, p1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcom/amap/api/trace/TraceLocation;->c:F

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/amap/api/trace/TraceLocation;->e:J

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",longtitude "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ",speed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/trace/TraceLocation;->c:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",bearing "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/amap/api/trace/TraceLocation;->d:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ",time "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/amap/api/trace/TraceLocation;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
