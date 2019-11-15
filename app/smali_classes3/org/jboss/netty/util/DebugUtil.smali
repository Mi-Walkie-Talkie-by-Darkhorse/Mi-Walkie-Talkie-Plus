.class public final Lorg/jboss/netty/util/DebugUtil;
.super Ljava/lang/Object;
.source "DebugUtil.java"


# static fields
.field private static final DEBUG_ENABLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "org.jboss.netty.debug"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/jboss/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lorg/jboss/netty/util/DebugUtil;->DEBUG_ENABLED:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isDebugEnabled()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/util/DebugUtil;->DEBUG_ENABLED:Z

    return v0
.end method
