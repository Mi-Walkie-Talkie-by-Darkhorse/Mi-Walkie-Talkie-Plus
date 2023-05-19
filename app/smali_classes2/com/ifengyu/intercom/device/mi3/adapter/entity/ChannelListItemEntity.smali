.class public Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;
.super Ljava/lang/Object;
.source "ChannelListItemEntity.java"


# static fields
.field public static final STATUS_ANOTHER:I = 0x2

.field public static final STATUS_CURRENT:I = 0x1

.field public static final STATUS_NORMAL:I


# instance fields
.field private channel:Lcom/ifengyu/intercom/models/ChannelModel;

.field private status:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->status:I

    return-void
.end method

.method public constructor <init>(ILcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->status:I

    .line 5
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->status:I

    .line 6
    iput-object p2, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->channel:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method


# virtual methods
.method public getChannel()Lcom/ifengyu/intercom/models/ChannelModel;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->channel:Lcom/ifengyu/intercom/models/ChannelModel;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->status:I

    return v0
.end method

.method public setChannel(Lcom/ifengyu/intercom/models/ChannelModel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->channel:Lcom/ifengyu/intercom/models/ChannelModel;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/mi3/adapter/entity/ChannelListItemEntity;->status:I

    return-void
.end method
