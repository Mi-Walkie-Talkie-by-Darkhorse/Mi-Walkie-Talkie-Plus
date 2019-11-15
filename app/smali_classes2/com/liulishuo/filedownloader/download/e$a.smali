.class public Lcom/liulishuo/filedownloader/download/e$a;
.super Ljava/lang/Object;
.source "DownloadStatusCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field private a:Z

.field private b:Ljava/lang/Exception;

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 0

    iput p1, p0, Lcom/liulishuo/filedownloader/download/e$a;->c:I

    return-void
.end method

.method a(Ljava/lang/Exception;)V
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/e$a;->b:Ljava/lang/Exception;

    return-void
.end method

.method a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/liulishuo/filedownloader/download/e$a;->a:Z

    return-void
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/liulishuo/filedownloader/download/e$a;->a:Z

    return v0
.end method

.method public b()Ljava/lang/Exception;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/e$a;->b:Ljava/lang/Exception;

    return-object v0
.end method

.method public c()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/filedownloader/download/e$a;->c:I

    return v0
.end method
