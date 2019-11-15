.class public abstract Lcom/liulishuo/filedownloader/event/b;
.super Ljava/lang/Object;
.source "IDownloadEvent.java"


# instance fields
.field public a:Ljava/lang/Runnable;

.field protected final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/event/b;->a:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/event/b;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/event/b;->b:Ljava/lang/String;

    return-object v0
.end method
