.class Lio/agora/rtc/internal/a$i;
.super Landroid/content/BroadcastReceiver;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/a;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a$i;->a:Lio/agora/rtc/internal/a;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a$i;-><init>(Lio/agora/rtc/internal/a;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const/4 v3, -0x1

    const/4 v2, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "state"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    const-string v0, "microphone"

    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_1

    const-string v0, "AudioRoute"

    const-string v1, "Headset w/ mic connected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a$i;->a:Lio/agora/rtc/internal/a;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lio/agora/rtc/internal/a;->a(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "AudioRoute"

    const-string v1, "Headset w/o mic connected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a$i;->a:Lio/agora/rtc/internal/a;

    const/4 v1, 0x2

    invoke-virtual {v0, v2, v1}, Lio/agora/rtc/internal/a;->a(II)V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "AudioRoute"

    const-string v1, "Headset disconnected"

    invoke-static {v0, v1}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lio/agora/rtc/internal/a$i;->a:Lio/agora/rtc/internal/a;

    invoke-virtual {v0, v2, v3}, Lio/agora/rtc/internal/a;->a(II)V

    goto :goto_0

    :cond_3
    const-string v1, "AudioRoute"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Headset unknown event detected, state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lio/agora/rtc/internal/d;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
