.class final Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm$2;
.super Ljava/lang/Object;
.source "MiLinkAlarm.java"

# interfaces
.implements Lcom/mi/milinkforgame/sdk/base/os/timer/OnClockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClockArrived(Lcom/mi/milinkforgame/sdk/base/os/timer/Clock;)Z
    .locals 1

    const-string v0, "FOREGROUND"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/service/MiLinkAlarm;->access$000(Ljava/lang/String;)V

    const/4 v0, 0x1

    return v0
.end method
