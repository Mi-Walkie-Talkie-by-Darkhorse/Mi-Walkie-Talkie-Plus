.class public Lio/agora/rtc/internal/f$a;
.super Lio/agora/rtc/internal/e;
.source "RtcEngineMessage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lio/agora/rtc/internal/f$b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lio/agora/rtc/internal/e;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(I)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(I)V

    return-void
.end method

.method public bridge synthetic a(Ljava/util/ArrayList;)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(Ljava/util/ArrayList;)V

    return-void
.end method

.method public bridge synthetic a(S)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a(S)V

    return-void
.end method

.method public bridge synthetic a([B)V
    .locals 0

    invoke-super {p0, p1}, Lio/agora/rtc/internal/e;->a([B)V

    return-void
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lio/agora/rtc/internal/f$a;->a:Lio/agora/rtc/internal/f$b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lio/agora/rtc/internal/f$a;->a:Lio/agora/rtc/internal/f$b;

    invoke-virtual {v0, p0}, Lio/agora/rtc/internal/f$b;->a(Lio/agora/rtc/internal/e;)V

    :cond_0
    invoke-super {p0}, Lio/agora/rtc/internal/e;->a()[B

    move-result-object v0

    return-object v0
.end method
