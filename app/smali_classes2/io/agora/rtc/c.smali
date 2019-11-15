.class public abstract Lio/agora/rtc/c;
.super Ljava/lang/Object;
.source "RtcEngine.java"


# static fields
.field private static a:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)Lio/agora/rtc/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const-class v1, Lio/agora/rtc/c;

    monitor-enter v1

    if-eqz p0, :cond_0

    :try_start_0
    invoke-static {}, Lio/agora/rtc/internal/RtcEngineImpl;->c()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_1
    :try_start_1
    sget-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    if-nez v0, :cond_2

    new-instance v0, Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {v0, p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;-><init>(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)V

    sput-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    :goto_1
    sget-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    goto :goto_0

    :cond_2
    sget-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0, p0, p1, p2}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Landroid/content/Context;Ljava/lang/String;Lio/agora/rtc/a;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lio/agora/rtc/c;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->d()V

    const/4 v0, 0x0

    sput-object v0, Lio/agora/rtc/c;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public abstract a(I)I
.end method

.method public abstract a(II)I
.end method

.method public abstract a(IZ)I
.end method

.method public abstract a(Ljava/lang/String;)I
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end method

.method public abstract a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract a(Z)Z
.end method

.method public abstract b()I
.end method

.method public abstract b(I)I
.end method

.method public abstract b(Ljava/lang/String;)I
.end method

.method public abstract b(Z)V
.end method

.method public abstract c(Z)I
.end method

.method public abstract d(Z)I
.end method

.method public abstract e(Z)I
.end method
