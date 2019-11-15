.class public Lcom/ifengyu/im/imservice/services/MessageDownloadListener;
.super Lcom/liulishuo/filedownloader/m;
.source "MessageDownloadListener.java"


# instance fields
.field private messageEntity:Lcom/ifengyu/im/imservice/model/MessageEntity;


# direct methods
.method public constructor <init>(Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/m;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/im/imservice/services/MessageDownloadListener;->messageEntity:Lcom/ifengyu/im/imservice/model/MessageEntity;

    return-void
.end method


# virtual methods
.method protected completed(Lcom/liulishuo/filedownloader/a;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/im/imservice/services/MessageDownloadListener;->messageEntity:Lcom/ifengyu/im/imservice/model/MessageEntity;

    invoke-virtual {p0, p1, v0}, Lcom/ifengyu/im/imservice/services/MessageDownloadListener;->completed(Lcom/liulishuo/filedownloader/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)V

    return-void
.end method

.method protected completed(Lcom/liulishuo/filedownloader/a;Lcom/ifengyu/im/imservice/model/MessageEntity;)V
    .locals 0

    return-void
.end method
