.class public Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;
.super Ljava/lang/Object;
.source "DeviceGroupDetailAdapterMultipleEntity.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;",
        ">;"
    }
.end annotation


# static fields
.field public static final TYPE_MEMBER:I = 0x3e9

.field public static final TYPE_OPERATE_ADD:I = 0x3ea

.field public static final TYPE_OPERATE_REMOVE:I = 0x3eb


# instance fields
.field private member:Lcom/ifengyu/talk/http/entity/TempMember;

.field private type:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->type:I

    return-void
.end method

.method public constructor <init>(ILcom/ifengyu/talk/http/entity/TempMember;)V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->type:I

    .line 6
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->member:Lcom/ifengyu/talk/http/entity/TempMember;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->compareTo(Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;)I

    move-result p1

    return p1
.end method

.method public getMember()Lcom/ifengyu/talk/http/entity/TempMember;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->member:Lcom/ifengyu/talk/http/entity/TempMember;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->type:I

    return v0
.end method

.method public setMember(Lcom/ifengyu/talk/http/entity/TempMember;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->member:Lcom/ifengyu/talk/http/entity/TempMember;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3gw/entity/DeviceGroupDetailAdapterMultipleEntity;->type:I

    return-void
.end method
