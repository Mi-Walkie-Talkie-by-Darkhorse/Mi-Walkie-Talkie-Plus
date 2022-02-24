.class public interface abstract Lorg/osmdroid/util/constants/UtilConstants;
.super Ljava/lang/Object;
.source "UtilConstants.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final GPS_WAIT_TIME:J
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->getGpsWaitTime()J

    move-result-wide v0

    sput-wide v0, Lorg/osmdroid/util/constants/UtilConstants;->GPS_WAIT_TIME:J

    return-void
.end method
