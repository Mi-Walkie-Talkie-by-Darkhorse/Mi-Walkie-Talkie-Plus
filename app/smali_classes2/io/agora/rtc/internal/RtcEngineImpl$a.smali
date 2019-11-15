.class Lio/agora/rtc/internal/RtcEngineImpl$a;
.super Landroid/telephony/PhoneStateListener;
.source "RtcEngineImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/RtcEngineImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/RtcEngineImpl;

.field private b:Landroid/telephony/SignalStrength;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/RtcEngineImpl;Lio/agora/rtc/internal/RtcEngineImpl$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/RtcEngineImpl$a;-><init>(Lio/agora/rtc/internal/RtcEngineImpl;)V

    return-void
.end method

.method private a(Ljava/lang/String;)I
    .locals 4

    const/4 v1, 0x0

    :try_start_0
    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->b:Landroid/telephony/SignalStrength;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->b:Landroid/telephony/SignalStrength;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, p1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->b:Landroid/telephony/SignalStrength;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    const-string v0, "getDbm"

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public b()I
    .locals 1

    const-string v0, "getLevel"

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public c()I
    .locals 1

    const-string v0, "getAsuLevel"

    invoke-direct {p0, v0}, Lio/agora/rtc/internal/RtcEngineImpl$a;->a(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 5

    const/16 v4, 0x16

    invoke-super {p0, p1, p2}, Landroid/telephony/PhoneStateListener;->onCallStateChanged(ILjava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "RtcEngine"

    const-string v1, "system phone call end delay 1000"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lio/agora/rtc/internal/RtcEngineImpl$a$1;

    invoke-direct {v1, p0}, Lio/agora/rtc/internal/RtcEngineImpl$a$1;-><init>(Lio/agora/rtc/internal/RtcEngineImpl$a;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lio/agora/rtc/internal/a;->a(II)V

    goto :goto_0

    :pswitch_1
    const-string v0, "RtcEngine"

    const-string v1, "system phone call ring"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->f()I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v4, v1}, Lio/agora/rtc/internal/a;->a(II)V

    goto :goto_0

    :pswitch_2
    const-string v0, "RtcEngine"

    const-string v1, "system phone call start"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-virtual {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->f()I

    iget-object v0, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->a:Lio/agora/rtc/internal/RtcEngineImpl;

    invoke-static {v0}, Lio/agora/rtc/internal/RtcEngineImpl;->a(Lio/agora/rtc/internal/RtcEngineImpl;)Lio/agora/rtc/internal/a;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v4, v1}, Lio/agora/rtc/internal/a;->a(II)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/telephony/PhoneStateListener;->onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V

    iput-object p1, p0, Lio/agora/rtc/internal/RtcEngineImpl$a;->b:Landroid/telephony/SignalStrength;

    return-void
.end method
