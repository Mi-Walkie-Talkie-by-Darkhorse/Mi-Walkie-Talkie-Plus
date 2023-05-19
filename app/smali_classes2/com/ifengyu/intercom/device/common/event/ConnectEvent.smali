.class public Lcom/ifengyu/intercom/device/common/event/ConnectEvent;
.super Ljava/lang/Object;
.source "ConnectEvent.java"


# static fields
.field public static final CONNECT_ALLOW:I = 0x1

.field public static final CONNECT_BUSY:I = 0x5

.field public static final CONNECT_FAILED:I = 0x7

.field public static final CONNECT_LOW_POWER:I = 0x4

.field public static final CONNECT_REFUSE:I = 0x2

.field public static final CONNECT_TIMEOUT:I = 0x6

.field public static final CONNECT_WAIT:I = 0x3


# instance fields
.field private connectStatus:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;->connectStatus:I

    return-void
.end method


# virtual methods
.method public getConnectStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/common/event/ConnectEvent;->connectStatus:I

    return v0
.end method
