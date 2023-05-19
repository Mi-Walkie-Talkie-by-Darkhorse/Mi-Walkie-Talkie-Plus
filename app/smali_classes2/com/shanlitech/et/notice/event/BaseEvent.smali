.class public Lcom/shanlitech/et/notice/event/BaseEvent;
.super Ljava/lang/Object;
.source "BaseEvent.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field protected evenTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/shanlitech/et/c/n;->a()Lcom/shanlitech/et/c/n;

    move-result-object v0

    invoke-virtual {v0}, Lcom/shanlitech/et/c/n;->b()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    return-void
.end method


# virtual methods
.method public getEvenTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/shanlitech/et/notice/event/BaseEvent;->evenTime:J

    return-wide v0
.end method
