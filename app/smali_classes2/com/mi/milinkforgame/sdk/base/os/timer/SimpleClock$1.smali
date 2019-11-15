.class final Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock$1;
.super Landroid/os/Handler;
.source "SimpleClock.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->initClockService()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/base/os/timer/SimpleClock;->access$000(I)V

    return-void
.end method
