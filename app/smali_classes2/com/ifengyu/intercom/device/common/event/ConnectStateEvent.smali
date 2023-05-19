.class public Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;
.super Ljava/lang/Object;
.source "ConnectStateEvent.java"


# static fields
.field public static STATE_CONNECTED:I = 0x2

.field public static STATE_DISCONNECTED:I


# instance fields
.field private state:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->state:I

    return-void
.end method


# virtual methods
.method public getState()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/common/event/ConnectStateEvent;->state:I

    return v0
.end method
