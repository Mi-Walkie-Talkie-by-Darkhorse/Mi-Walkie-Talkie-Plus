.class public interface abstract Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter$ViewHolderEventListener;
.super Ljava/lang/Object;
.source "MsgAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/ui/imui/ui/chat/session/list/MsgAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ViewHolderEventListener"
.end annotation


# virtual methods
.method public abstract onAvatarClick(Landroid/content/Context;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onFailedBtnClick(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onFooterClick(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
.end method

.method public abstract onViewHolderLongClick(Landroid/view/View;Landroid/view/View;Lcom/ifengyu/im/imservice/model/MessageEntity;)Z
.end method
