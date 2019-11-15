.class Lcom/liulishuo/filedownloader/f$a;
.super Ljava/lang/Object;
.source "FileDownloadEventPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation


# static fields
.field private static final a:Lcom/liulishuo/filedownloader/f;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/liulishuo/filedownloader/f;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/liulishuo/filedownloader/f;-><init>(Lcom/liulishuo/filedownloader/f$1;)V

    sput-object v0, Lcom/liulishuo/filedownloader/f$a;->a:Lcom/liulishuo/filedownloader/f;

    return-void
.end method

.method static synthetic a()Lcom/liulishuo/filedownloader/f;
    .locals 1

    sget-object v0, Lcom/liulishuo/filedownloader/f$a;->a:Lcom/liulishuo/filedownloader/f;

    return-object v0
.end method
