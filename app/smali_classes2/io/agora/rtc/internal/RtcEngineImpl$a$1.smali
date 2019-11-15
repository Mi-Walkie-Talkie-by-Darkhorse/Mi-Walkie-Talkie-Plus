.class Lio/agora/rtc/internal/RtcEngineImpl$a$1;
.super Ljava/lang/Object;
.source "RtcEngineImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/RtcEngineImpl$a;->onCallStateChanged(ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/RtcEngineImpl$a;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl$a;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$a$1;->a:Lio/agora/rtc/internal/RtcEngineImpl$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a$1;->a:Lio/agora/rtc/internal/RtcEngineImpl$a;

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->e()I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a$1;->a:Lio/agora/rtc/internal/RtcEngineImpl$a;

    iget-object v0, v0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;

    move-result-object v0

    const/16 v1, 0x16

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lio/agora/rtc/internal/a;->a(II)V

    return-void
.end method
