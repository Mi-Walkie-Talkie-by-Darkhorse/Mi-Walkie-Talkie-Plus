.class final Lcom/liulishuo/filedownloader/n$a;
.super Ljava/lang/Object;
.source "FileDownloadServiceProxy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/n;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/n;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/n;-><init>(Lcom/liulishuo/filedownloader/n$1;)V

    sput-object v0, Lcom/liulishuo/filedownloader/n$a;->a:Lcom/liulishuo/filedownloader/n;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/n;
    .locals 1

    sget-object v0, Lcom/liulishuo/filedownloader/n$a;->a:Lcom/liulishuo/filedownloader/n;

    return-object v0
.end method
