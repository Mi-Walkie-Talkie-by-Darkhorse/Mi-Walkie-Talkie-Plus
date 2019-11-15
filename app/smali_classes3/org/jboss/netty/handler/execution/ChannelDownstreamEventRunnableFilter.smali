.class public Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnableFilter;
.super Ljava/lang/Object;
.source "ChannelDownstreamEventRunnableFilter.java"

# interfaces
.implements Lorg/jboss/netty/handler/execution/ChannelEventRunnableFilter;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filter(Lorg/jboss/netty/handler/execution/ChannelEventRunnable;)Z
    .locals 1

    instance-of v0, p1, Lorg/jboss/netty/handler/execution/ChannelDownstreamEventRunnable;

    return v0
.end method
