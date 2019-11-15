.class public Lorg/jboss/netty/logging/JdkLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "JdkLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .locals 2

    invoke-static {p1}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/logging/JdkLogger;

    invoke-direct {v1, v0, p1}, Lorg/jboss/netty/logging/JdkLogger;-><init>(Ljava/util/logging/Logger;Ljava/lang/String;)V

    return-object v1
.end method
