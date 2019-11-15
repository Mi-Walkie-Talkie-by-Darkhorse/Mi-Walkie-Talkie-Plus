.class public Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;
.super Ljava/lang/Object;
.source "MsgViewHolderFactory.java"


# static fields
.field public static final BODY_TYPE_AUDIO:I = 0x2

.field public static final BODY_TYPE_CUSTOM:I = 0x0

.field public static final BODY_TYPE_TEXT:I = 0x1

.field public static final BODY_TYPE_VIDEO:I = 0x3

.field private static tipMsgViewHolder:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;"
        }
    .end annotation
.end field

.field private static viewHolders:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/im/imservice/model/MsgAttachment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->viewHolders:Ljava/util/HashMap;

    const-class v0, Lcom/ifengyu/im/imservice/model/AudioAttachment;

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->register(Ljava/lang/Class;Ljava/lang/Class;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAllViewHolders()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;>;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->tipMsgViewHolder:Ljava/lang/Class;

    if-eqz v1, :cond_0

    sget-object v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->tipMsgViewHolder:Ljava/lang/Class;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgVIewHolderCustom;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-class v1, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static getViewHolderByType(Lcom/ifengyu/im/imservice/model/MessageEntity;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ifengyu/im/imservice/model/MessageEntity;",
            ")",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/ifengyu/im/imservice/model/MessageEntity;->getMsgType()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;

    :goto_0
    return-object v0

    :pswitch_0
    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderText;

    goto :goto_0

    :pswitch_1
    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderAudio;

    goto :goto_0

    :pswitch_2
    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderVideo;

    goto :goto_0

    :pswitch_3
    const-class v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderNotification;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static register(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/im/imservice/model/MsgAttachment;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->viewHolders:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static registerTipMsgViewHolder(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderBase;",
            ">;)V"
        }
    .end annotation

    sput-object p0, Lcom/ifengyu/intercom/ui/imui/ui/chat/session/viewholder/MsgViewHolderFactory;->tipMsgViewHolder:Ljava/lang/Class;

    return-void
.end method
