.class public Lorg/osmdroid/util/NetworkLocationIgnorer;
.super Ljava/lang/Object;
.source "NetworkLocationIgnorer.java"

# interfaces
.implements Lorg/osmdroid/util/constants/UtilConstants;


# instance fields
.field private mLastGps:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/osmdroid/util/NetworkLocationIgnorer;->mLastGps:J

    return-void
.end method


# virtual methods
.method public shouldIgnore(Ljava/lang/String;J)Z
    .locals 4

    const-string v0, "gps"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-wide p2, p0, Lorg/osmdroid/util/NetworkLocationIgnorer;->mLastGps:J

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget-wide v0, p0, Lorg/osmdroid/util/NetworkLocationIgnorer;->mLastGps:J

    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v2

    invoke-interface {v2}, Lorg/osmdroid/config/IConfigurationProvider;->getGpsWaitTime()J

    move-result-wide v2

    add-long/2addr v0, v2

    cmp-long v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method
