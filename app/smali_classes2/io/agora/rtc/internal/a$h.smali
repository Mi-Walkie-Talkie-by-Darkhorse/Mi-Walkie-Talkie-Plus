.class Lio/agora/rtc/internal/a$h;
.super Landroid/os/Handler;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "h"
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/a;


# direct methods
.method public constructor <init>(Lio/agora/rtc/internal/a;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a$h;->a:Lio/agora/rtc/internal/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget-object v0, p0, Lio/agora/rtc/internal/a$h;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->d(Lio/agora/rtc/internal/a;)Lio/agora/rtc/internal/a$f;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1, v2}, Lio/agora/rtc/internal/a$f;->a(II)V

    return-void
.end method
