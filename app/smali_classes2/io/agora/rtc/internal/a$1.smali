.class Lio/agora/rtc/internal/a$1;
.super Ljava/lang/Object;
.source "AudioRoutingController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/agora/rtc/internal/a;


# direct methods
.method constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 0

    iput-object p1, p0, Lio/agora/rtc/internal/a$1;->a:Lio/agora/rtc/internal/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/a$1;->a:Lio/agora/rtc/internal/a;

    invoke-static {v0}, Lio/agora/rtc/internal/a;->a(Lio/agora/rtc/internal/a;)V

    return-void
.end method
