.class public Lcom/ifengyu/intercom/event/NetEvent;
.super Ljava/lang/Object;
.source "NetEvent.java"


# instance fields
.field isNet:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/NetEvent;->isNet:Z

    return-void
.end method


# virtual methods
.method public isNet()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/ifengyu/intercom/event/NetEvent;->isNet:Z

    return v0
.end method

.method public setNet(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/ifengyu/intercom/event/NetEvent;->isNet:Z

    return-void
.end method
