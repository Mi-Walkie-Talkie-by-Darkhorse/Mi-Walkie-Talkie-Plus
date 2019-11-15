.class Lcom/liulishuo/filedownloader/b/b$b;
.super Ljava/lang/Object;
.source "NoDatabaseImpl.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/b/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lcom/liulishuo/filedownloader/model/FileDownloadModel;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/liulishuo/filedownloader/b/b;


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/b/b;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/b/b$b;->a:Lcom/liulishuo/filedownloader/b/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/liulishuo/filedownloader/model/FileDownloadModel;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public hasNext()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public synthetic next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/b/b$b;->a()Lcom/liulishuo/filedownloader/model/FileDownloadModel;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 0

    return-void
.end method
