.class public Lcom/ifengyu/intercom/device/common/model/OperationResult;
.super Ljava/lang/Object;
.source "OperationResult.java"


# static fields
.field public static final ACTION_ADD_CH_TO_STATE:Ljava/lang/String; = "ACTION_ADD_CH_TO_STATE"

.field public static final ACTION_CANCEL_CH_TO_STATE:Ljava/lang/String; = "ACTION_CANCEL_CH_TO_STATE"

.field public static final ACTION_CLEAR_CHANNEL:Ljava/lang/String; = "ACTION_CLEAR_CHANNEL"

.field public static final ACTION_CONFIG_FILE_DELETE:Ljava/lang/String; = "ACTION_CONFIG_FILE_DELETE"

.field public static final ACTION_EDIT_CHANNEL:Ljava/lang/String; = "ACTION_EDIT_CHANNEL"

.field public static final ACTION_IMPORT_CONFIG_FILE_CHANNELS:Ljava/lang/String; = "ACTION_IMPORT_CONFIG_FILE_CHANNELS"

.field public static final ACTION_INSERT_CHANNEL:Ljava/lang/String; = "ACTION_INSERT_CHANNEL"

.field public static final ACTION_OPEN_SHARE_LOCATION:Ljava/lang/String; = "ACTION_OPEN_SHARE_LOCATION"

.field public static final ACTION_STOP_SHARE_LOCATION:Ljava/lang/String; = "ACTION_STOP_SHARE_LOCATION"

.field public static final ACTION_SYNCED_ALL_CHANNEL:Ljava/lang/String; = "ACTION_SYNCED_ALL_CHANNEL"

.field public static final ACTION_SYNC_CUSTOM_CHANNEL_END:Ljava/lang/String; = "ACTION_SYNC_CUSTOM_CHANNEL_END"

.field public static final ACTION_SYNC_CUSTOM_CHANNEL_START:Ljava/lang/String; = "ACTION_SYNC_CUSTOM_CHANNEL_START"

.field public static final ACTION_SYNC_REMOTE_CHANNEL_END:Ljava/lang/String; = "ACTION_SYNC_REMOTE_CHANNEL_END"

.field public static final ACTION_SYNC_REMOTE_CHANNEL_START:Ljava/lang/String; = "ACTION_SYNC_REMOTE_CHANNEL_START"

.field public static final ACTION_UPDATE_CH_TO_STATE:Ljava/lang/String; = "ACTION_UPDATE_CH_TO_STATE"

.field public static final ACTION_UPDATE_DEVICE_NAME:Ljava/lang/String; = "ACTION_UPDATE_DEVICE_NAME"

.field public static final ACTION_UPDATE_DEVICE_VOX:Ljava/lang/String; = "ACTION_UPDATE_DEVICE_VOX"

.field public static final STATUS_FAIL:I = 0x2

.field public static final STATUS_NONE:I = 0x0

.field public static final STATUS_SUCCESS:I = 0x1

.field public static final STATUS_TIME_OUT:I = 0x3


# instance fields
.field private action:Ljava/lang/String;

.field private status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/device/common/model/OperationResult;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->action:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->status:I

    return-void
.end method


# virtual methods
.method public getAction()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->action:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->status:I

    return v0
.end method

.method public setAction(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->action:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/ifengyu/intercom/device/common/model/OperationResult;->status:I

    return-void
.end method
