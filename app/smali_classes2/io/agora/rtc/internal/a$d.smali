.class Lio/agora/rtc/internal/a$d;
.super Lio/agora/rtc/internal/a$c;
.source "AudioRoutingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/agora/rtc/internal/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "d"
.end annotation


# instance fields
.field final synthetic b:Lio/agora/rtc/internal/a;


# direct methods
.method private constructor <init>(Lio/agora/rtc/internal/a;)V
    .locals 1

    iput-object p1, p0, Lio/agora/rtc/internal/a$d;->b:Lio/agora/rtc/internal/a;

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lio/agora/rtc/internal/a$c;-><init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V

    return-void
.end method

.method synthetic constructor <init>(Lio/agora/rtc/internal/a;Lio/agora/rtc/internal/a$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lio/agora/rtc/internal/a$d;-><init>(Lio/agora/rtc/internal/a;)V

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method
