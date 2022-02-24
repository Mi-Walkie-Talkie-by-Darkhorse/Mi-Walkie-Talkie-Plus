.class public interface abstract Lorg/osmdroid/views/util/constants/MapViewConstants;
.super Ljava/lang/Object;
.source "MapViewConstants.java"


# static fields
.field public static final ANIMATION_DURATION_DEFAULT:I = 0x3e8

.field public static final ANIMATION_DURATION_LONG:I = 0x7d0

.field public static final ANIMATION_DURATION_SHORT:I = 0x1f4

.field public static final ANIMATION_SMOOTHNESS_DEFAULT:I = 0xa

.field public static final ANIMATION_SMOOTHNESS_HIGH:I = 0x14

.field public static final ANIMATION_SMOOTHNESS_LOW:I = 0x4

.field public static final DEBUGMODE:Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final MAXIMUM_ZOOMLEVEL:I = 0x17

.field public static final MINIMUM_ZOOMLEVEL:I = 0x0

.field public static final NOT_SET:I = -0x80000000


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lorg/osmdroid/config/Configuration;->getInstance()Lorg/osmdroid/config/IConfigurationProvider;

    move-result-object v0

    invoke-interface {v0}, Lorg/osmdroid/config/IConfigurationProvider;->isDebugMapView()Z

    move-result v0

    sput-boolean v0, Lorg/osmdroid/views/util/constants/MapViewConstants;->DEBUGMODE:Z

    return-void
.end method
