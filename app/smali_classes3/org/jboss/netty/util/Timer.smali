.class public interface abstract Lorg/jboss/netty/util/Timer;
.super Ljava/lang/Object;
.source "Timer.java"


# virtual methods
.method public abstract newTimeout(Lorg/jboss/netty/util/TimerTask;JLjava/util/concurrent/TimeUnit;)Lorg/jboss/netty/util/Timeout;
.end method

.method public abstract stop()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/util/Timeout;",
            ">;"
        }
    .end annotation
.end method
