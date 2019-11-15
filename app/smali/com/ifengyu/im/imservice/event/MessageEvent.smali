.class public Lcom/ifengyu/im/imservice/event/MessageEvent;
.super Ljava/lang/Object;
.source "MessageEvent.java"


# instance fields
.field public message:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/event/MessageEvent;->message:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method
