.class Lio/agora/rtc/internal/RtcEngineImpl$1;
.super Landroid/view/OrientationEventListener;
.source "RtcEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/agora/rtc/internal/RtcEngineImpl;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/RtcEngineImpl;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->b(Lio/agora/rtc/internal/RtcEngineImpl;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$1;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0, p1}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;I)V

    goto :goto_0
.end method
