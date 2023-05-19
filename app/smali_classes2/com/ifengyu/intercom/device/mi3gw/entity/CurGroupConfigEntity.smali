.class public Lcom/ifengyu/intercom/device/mi3gw/entity/CurGroupConfigEntity;
.super Ljava/lang/Object;
.source "CurGroupConfigEntity.java"


# static fields
.field public static final SWITCH_METHOD_AUTO:I = 0x2

.field public static final SWITCH_METHOD_HAND:I = 0x1

.field public static final SWITCH_STATUS_CLOSED:I = 0x0

.field public static final SWITCH_STATUS_OPENED:I = 0x1


# instance fields
.field private switchMethod:I

.field private switchStatus:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSwitchMethod()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/CurGroupConfigEntity;->switchMethod:I

    return v0
.end method

.method public getSwitchStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/CurGroupConfigEntity;->switchStatus:I

    return v0
.end method

.method public setSwitchMethod(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/CurGroupConfigEntity;->switchMethod:I

    return-void
.end method

.method public setSwitchStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/CurGroupConfigEntity;->switchStatus:I

    return-void
.end method
