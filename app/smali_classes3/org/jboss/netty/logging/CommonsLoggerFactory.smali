.class public Lorg/jboss/netty/logging/CommonsLoggerFactory;
.super Lorg/jboss/netty/logging/InternalLoggerFactory;
.source "CommonsLoggerFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lorg/jboss/netty/logging/InternalLoggerFactory;-><init>()V

    return-void
.end method


# virtual methods
.method public newInstance(Ljava/lang/String;)Lorg/jboss/netty/logging/InternalLogger;
    .locals 2

    invoke-static {p1}, Lorg/apache/commons/logging/b;->a(Ljava/lang/String;)Lorg/apache/commons/logging/a;

    move-result-object v0

    new-instance v1, Lorg/jboss/netty/logging/CommonsLogger;

    invoke-direct {v1, v0, p1}, Lorg/jboss/netty/logging/CommonsLogger;-><init>(Lorg/apache/commons/logging/a;Ljava/lang/String;)V

    return-object v1
.end method
