.class public Lcom/liulishuo/filedownloader/download/f$a;
.super Ljava/lang/Object;
.source "FetchDataTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/liulishuo/filedownloader/download/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field a:Lcom/liulishuo/filedownloader/download/d;

.field b:Lcom/liulishuo/filedownloader/a/b;

.field c:Lcom/liulishuo/filedownloader/download/b;

.field d:Lcom/liulishuo/filedownloader/download/g;

.field e:Ljava/lang/String;

.field f:Ljava/lang/Boolean;

.field g:Ljava/lang/Integer;

.field h:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->g:Ljava/lang/Integer;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/a/b;)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$a;->b:Lcom/liulishuo/filedownloader/a/b;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/b;)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$a;->c:Lcom/liulishuo/filedownloader/download/b;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/d;)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$a;->a:Lcom/liulishuo/filedownloader/download/d;

    return-object p0
.end method

.method public a(Lcom/liulishuo/filedownloader/download/g;)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$a;->d:Lcom/liulishuo/filedownloader/download/g;

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 0

    iput-object p1, p0, Lcom/liulishuo/filedownloader/download/f$a;->e:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->f:Ljava/lang/Boolean;

    return-object p0
.end method

.method public a()Lcom/liulishuo/filedownloader/download/f;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->f:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->b:Lcom/liulishuo/filedownloader/a/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->c:Lcom/liulishuo/filedownloader/download/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->d:Lcom/liulishuo/filedownloader/download/g;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->h:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->g:Ljava/lang/Integer;

    if-nez v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    new-instance v0, Lcom/liulishuo/filedownloader/download/f;

    iget-object v1, p0, Lcom/liulishuo/filedownloader/download/f$a;->b:Lcom/liulishuo/filedownloader/a/b;

    iget-object v2, p0, Lcom/liulishuo/filedownloader/download/f$a;->c:Lcom/liulishuo/filedownloader/download/b;

    iget-object v3, p0, Lcom/liulishuo/filedownloader/download/f$a;->a:Lcom/liulishuo/filedownloader/download/d;

    iget-object v4, p0, Lcom/liulishuo/filedownloader/download/f$a;->h:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    iget-object v5, p0, Lcom/liulishuo/filedownloader/download/f$a;->g:Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    iget-object v6, p0, Lcom/liulishuo/filedownloader/download/f$a;->f:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    iget-object v7, p0, Lcom/liulishuo/filedownloader/download/f$a;->d:Lcom/liulishuo/filedownloader/download/g;

    iget-object v8, p0, Lcom/liulishuo/filedownloader/download/f$a;->e:Ljava/lang/String;

    const/4 v9, 0x0

    invoke-direct/range {v0 .. v9}, Lcom/liulishuo/filedownloader/download/f;-><init>(Lcom/liulishuo/filedownloader/a/b;Lcom/liulishuo/filedownloader/download/b;Lcom/liulishuo/filedownloader/download/d;IIZLcom/liulishuo/filedownloader/download/g;Ljava/lang/String;Lcom/liulishuo/filedownloader/download/f$1;)V

    return-object v0
.end method

.method public b(I)Lcom/liulishuo/filedownloader/download/f$a;
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/download/f$a;->h:Ljava/lang/Integer;

    return-object p0
.end method
