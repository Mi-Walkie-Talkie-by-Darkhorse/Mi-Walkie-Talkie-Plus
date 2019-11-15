.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;
.super Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;
.source "MessageAudioControl.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl",
        "<",
        "Lcom/ifengyu/im/imservice/model/MessageEntity;",
        ">;"
    }
.end annotation


# static fields
.field private static mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;


# instance fields
.field private mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

.field private mIsNeedPlayNext:Z

.field private mItem:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;-><init>(Landroid/content/Context;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mIsNeedPlayNext:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method

.method static synthetic access$000(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)V
    .locals 0

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->cancelPlayNext()V

    return-void
.end method

.method static synthetic access$100(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mIsNeedPlayNext:Z

    return v0
.end method

.method static synthetic access$200(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/library/widget/recyclerview/adapter/a;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    return-object v0
.end method

.method static synthetic access$300(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;)Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->playNextAudio(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V
    .locals 1

    invoke-direct/range {p0 .. p6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startPlayAudio(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    return-void
.end method

.method private cancelPlayNext()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->setPlayNext(ZLcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method public static getInstance()Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;
    .locals 3

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    if-nez v0, :cond_1

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    if-nez v0, :cond_0

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-static {}, Lcom/ifengyu/library/util/l;->a()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private playNextAudio(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 10

    const-wide/16 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x3

    const/4 v2, -0x1

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/a;->getData()Ljava/util/List;

    move-result-object v9

    move v1, v5

    :goto_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v0, p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->isUnreadAudioMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v8, v1

    :goto_3
    if-ne v8, v2, :cond_3

    invoke-direct {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->cancelPlayNext()V

    :cond_0
    :goto_4
    return v5

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_3
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachStatus()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getCurrentAudioStreamType()I

    move-result v4

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->downloadMessage(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v0

    if-eq v0, v4, :cond_5

    invoke-virtual {v2, v4}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    :cond_5
    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mMessageAudioControl:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getCurrentAudioStreamType()I

    move-result v4

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startPlayAudio(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/MessageEntity;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p1}, Lcom/ifengyu/library/widget/recyclerview/adapter/a;->notifyDataSetChanged()V

    const/4 v5, 0x1

    goto :goto_4

    :cond_6
    move v8, v2

    goto :goto_3

    :cond_7
    move v1, v5

    goto :goto_1
.end method

.method private startPlayAudio(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V
    .locals 9

    invoke-static {}, Lcom/ifengyu/im/imservice/audio/StorageUtil;->isExternalStorageExist()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    const/4 v5, 0x1

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v6, p5

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->downloadMessage(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v2, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;

    invoke-direct {v2, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;-><init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    move-object v1, p0

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-virtual/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startAudio(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->isUnreadAudioMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->setStatus(I)V

    invoke-static {}, Lcom/ifengyu/im/DB/DBInterface;->instance()Lcom/ifengyu/im/DB/DBInterface;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/ifengyu/im/DB/DBInterface;->insertOrUpdateMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)J

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mContext:Landroid/content/Context;

    const-string v1, "SD\u5361\u4e0d\u5b58\u5728"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->stopAudio()V

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    iput-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    return-void
.end method

.method public downloadMessage(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V
    .locals 8

    invoke-virtual {p2}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    invoke-static {}, Lcom/liulishuo/filedownloader/r;->a()Lcom/liulishuo/filedownloader/r;

    move-result-object v1

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/liulishuo/filedownloader/r;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/Object;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    new-instance v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;

    move-object v2, p0

    move-object v3, p3

    move v4, p4

    move v5, p5

    move-wide v6, p6

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$2;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/a;->a(Lcom/liulishuo/filedownloader/i;)Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->c()I

    return-void
.end method

.method public getPlayingAudio()Lcom/ifengyu/im/imservice/model/MessageEntity;
    .locals 2

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->isPlayingAudio()Z

    move-result v0

    if-eqz v0, :cond_0

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentPlayable:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;

    check-cast v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioMessagePlayable;->getMessage()Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getPlayingAudio()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->getPlayingAudio()Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-result-object v0

    return-object v0
.end method

.method public isUnreadAudioMessage(Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
    .locals 3

    const/4 v2, 0x2

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getDirect()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachStatus()I

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getStatus()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V
    .locals 2

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->audioControlListener:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;

    new-instance v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-direct {v0, p0, v1, p1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl$1;-><init>(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/Playable;)V

    invoke-virtual {v0, p2}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$BasePlayerListener;->setAudioControlListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->currentAudioPlayer:Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;

    invoke-virtual {v1, v0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/AudioPlayer;->setOnPlayListener(Lcom/ifengyu/intercom/ui/imui/ui/chat/media/OnPlayListener;)V

    return-void
.end method

.method public setPlayNext(ZLcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    iput-boolean p1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mIsNeedPlayNext:Z

    iput-object p2, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    iput-object p3, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mItem:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method

.method public startPlayAudioDelay(JLcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V
    .locals 9

    const/4 v5, 0x1

    invoke-virtual {p3}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getAttachment()Lcom/ifengyu/im/imservice/model/MsgAttachment;

    move-result-object v0

    check-cast v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/ifengyu/im/imservice/model/AudioAttachment;->getUrl()Ljava/lang/String;

    move-result-object v0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->mAdapter:Lcom/ifengyu/library/widget/recyclerview/adapter/a;

    move-object v0, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-wide v6, p1

    invoke-virtual/range {v0 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->downloadMessage(Lcom/ifengyu/library/widget/recyclerview/adapter/a;Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    :goto_0
    return-void

    :cond_0
    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move-wide v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startPlayAudio(Lcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;IZJ)V

    goto :goto_0
.end method

.method public bridge synthetic startPlayAudioDelay(JLjava/lang/Object;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V
    .locals 7

    move-object v4, p3

    check-cast v4, Lcom/ifengyu/im/imservice/model/MessageEntity;

    move-object v1, p0

    move-wide v2, p1

    move-object v5, p4

    move v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/MessageAudioControl;->startPlayAudioDelay(JLcom/ifengyu/im/imservice/model/MessageEntity;Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl$AudioControlListener;I)V

    return-void
.end method

.method public stopAudio()V
    .locals 0

    invoke-super {p0}, Lcom/ifengyu/intercom/ui/imui/ui/chat/media/BaseAudioControl;->stopAudio()V

    return-void
.end method
