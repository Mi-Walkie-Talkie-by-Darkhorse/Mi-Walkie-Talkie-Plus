.class public Lcom/liulishuo/filedownloader/d;
.super Ljava/lang/Object;
.source "DownloadTaskHunter.java"

# interfaces
.implements Lcom/liulishuo/filedownloader/a$d;
.implements Lcom/liulishuo/filedownloader/x;
.implements Lcom/liulishuo/filedownloader/x$a;
.implements Lcom/liulishuo/filedownloader/x$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/liulishuo/filedownloader/d$a;
    }
.end annotation


# instance fields
.field private a:Lcom/liulishuo/filedownloader/t;

.field private final b:Ljava/lang/Object;

.field private final c:Lcom/liulishuo/filedownloader/d$a;

.field private volatile d:B

.field private e:Ljava/lang/Throwable;

.field private final f:Lcom/liulishuo/filedownloader/s$b;

.field private final g:Lcom/liulishuo/filedownloader/s$a;

.field private h:J

.field private i:J

.field private j:I

.field private k:Z

.field private l:Z

.field private m:Ljava/lang/String;

.field private n:Z


# direct methods
.method constructor <init>(Lcom/liulishuo/filedownloader/d$a;Ljava/lang/Object;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    iput-boolean v1, p0, Lcom/liulishuo/filedownloader/d;->n:Z

    iput-object p2, p0, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    iput-object p1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    new-instance v0, Lcom/liulishuo/filedownloader/b;

    invoke-direct {v0}, Lcom/liulishuo/filedownloader/b;-><init>()V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->g:Lcom/liulishuo/filedownloader/s$a;

    new-instance v0, Lcom/liulishuo/filedownloader/k;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/liulishuo/filedownloader/k;-><init>(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/a$d;)V

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    return-void
.end method

.method private e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x0

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v0

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->n()Z

    move-result v3

    iput-boolean v3, p0, Lcom/liulishuo/filedownloader/d;->k:Z

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/liulishuo/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->g()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/d;->l:Z

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->h()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->m:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->f()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v3, "already has mFilename[%s], but assign mFilename[%s] again"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->j()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v1

    aput-object v0, v4, v6

    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/d$a;->b(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v2, v3}, Lcom/liulishuo/filedownloader/s$b;->a(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v2

    invoke-interface {v0, v2, v3}, Lcom/liulishuo/filedownloader/s$b;->c(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->k()I

    move-result v0

    iput v0, p0, Lcom/liulishuo/filedownloader/d;->j:I

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/s$b;->a()V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    invoke-interface {v0, p1}, Lcom/liulishuo/filedownloader/t;->f(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->j()Ljava/lang/Throwable;

    move-result-object v0

    iput-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_0

    :pswitch_7
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->e()Z

    move-result v0

    iput-boolean v0, p0, Lcom/liulishuo/filedownloader/d;->n:Z

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/s$b;->a()V

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/h;->a(I)I

    move-result v3

    if-gt v3, v6, :cond_2

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->i()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->k()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/liulishuo/filedownloader/e/g;->b(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v0, v4}, Lcom/liulishuo/filedownloader/h;->a(I)I

    move-result v0

    :goto_1
    add-int/2addr v0, v3

    if-gt v0, v6, :cond_3

    invoke-static {}, Lcom/liulishuo/filedownloader/n;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/liulishuo/filedownloader/n;->b(I)B

    move-result v0

    const-string v3, "warn, but no mListener to receive, switch to pending %d %d"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-interface {v2}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v6

    invoke-static {p0, v3, v4}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-byte v6, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->d()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->i()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    iget-wide v2, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v2, v3}, Lcom/liulishuo/filedownloader/s$b;->a(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    check-cast p1, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;

    invoke-interface {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot$a;->l()Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/t;->a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto/16 :goto_0

    :cond_2
    move v0, v1

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_0
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_2
    .end packed-switch
.end method

.method private m()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/liulishuo/filedownloader/a;->a(Ljava/lang/String;)Lcom/liulishuo/filedownloader/a;

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "save Path is null to %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v1, Ljava/io/IOException;

    const-string v2, "Create parent directory failed, please make sure you have permission to create file or directory on the path: %s"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/e/g;->i(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v2, "the provided mPath[%s] is invalid, can\'t find its directory"

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/e/g;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private n()I
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v0

    return v0
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;
    .locals 4

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    iput-object p1, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->g()J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/liulishuo/filedownloader/message/d;->a(IJLjava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    return-object v0
.end method

.method public a()V
    .locals 4

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Lcom/liulishuo/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/l$a;->b(Lcom/liulishuo/filedownloader/a;)V

    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "filedownloader:lifecycle:start %s by %d "

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public a(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/model/b;->a(II)Z

    move-result v2

    if-nez v2, :cond_1

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "can\'t update mStatus change by keep ahead, %d, but the current mStatus is %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v1, 0x2

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    move v0, v1

    goto :goto_0
.end method

.method public b()V
    .locals 2

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Lcom/liulishuo/filedownloader/l$a;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/l$a;->c(Lcom/liulishuo/filedownloader/a;)V

    :cond_0
    return-void
.end method

.method public b(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v2

    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v3

    const/4 v4, -0x2

    if-ne v4, v2, :cond_1

    invoke-static {v3}, Lcom/liulishuo/filedownloader/model/b;->b(I)Z

    move-result v4

    if-eqz v4, :cond_1

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_0

    const-string v2, "High concurrent cause, callback pending, but has already be paused %d"

    new-array v3, v0, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {v2, v3}, Lcom/liulishuo/filedownloader/model/b;->b(II)Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v2, :cond_2

    const-string v2, "can\'t update mStatus change by keep flow, %d, but the current mStatus is %d, %d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v4

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v0, 0x2

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {p0, v2, v3}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    goto :goto_0
.end method

.method public c()V
    .locals 6

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Lcom/liulishuo/filedownloader/l$a;

    move-result-object v0

    invoke-interface {v0, v3}, Lcom/liulishuo/filedownloader/l$a;->d(Lcom/liulishuo/filedownloader/a;)V

    :cond_0
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_1

    const-string v0, "filedownloader:lifecycle:over %s by %d "

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->f:Lcom/liulishuo/filedownloader/s$b;

    iget-wide v4, p0, Lcom/liulishuo/filedownloader/d;->h:J

    invoke-interface {v0, v4, v5}, Lcom/liulishuo/filedownloader/s$b;->b(J)V

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->N()Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->N()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/liulishuo/filedownloader/a$a;

    invoke-interface {v1, v3}, Lcom/liulishuo/filedownloader/a$a;->a(Lcom/liulishuo/filedownloader/a;)V

    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/liulishuo/filedownloader/r;->a()Lcom/liulishuo/filedownloader/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/r;->e()Lcom/liulishuo/filedownloader/v;

    move-result-object v0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/liulishuo/filedownloader/v;->b(Lcom/liulishuo/filedownloader/a$b;)V

    return-void
.end method

.method public c(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v0

    invoke-static {v0}, Lcom/liulishuo/filedownloader/model/b;->a(Lcom/liulishuo/filedownloader/a;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public d()Lcom/liulishuo/filedownloader/t;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->a:Lcom/liulishuo/filedownloader/t;

    return-object v0
.end method

.method public d(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v1

    invoke-interface {v1}, Lcom/liulishuo/filedownloader/a;->i()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/liulishuo/filedownloader/message/MessageSnapshot;->b()B

    move-result v1

    const/4 v2, -0x4

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/liulishuo/filedownloader/d;->f()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1}, Lcom/liulishuo/filedownloader/d;->e(Lcom/liulishuo/filedownloader/message/MessageSnapshot;)V

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 8

    const/4 v7, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    if-eqz v0, :cond_1

    const-string v0, "High concurrent cause, this task %d will not input to launch pool, because of the status isn\'t idle : %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v2

    const/4 v2, 0x1

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v3

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v0

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v3

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->b()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/liulishuo/filedownloader/l;->a()Lcom/liulishuo/filedownloader/l$a;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/liulishuo/filedownloader/l$a;->a(Lcom/liulishuo/filedownloader/a;)V

    :cond_2
    sget-boolean v4, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v4, :cond_3

    const-string v4, "call start Url[%s], Path[%s] Listener[%s], Tag[%s]"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->l()Lcom/liulishuo/filedownloader/i;

    move-result-object v6

    aput-object v6, v5, v7

    const/4 v6, 0x3

    invoke-interface {v3}, Lcom/liulishuo/filedownloader/a;->t()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v5, v6

    invoke-static {p0, v4, v5}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :try_start_1
    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->m()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move v0, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/liulishuo/filedownloader/q;->a()Lcom/liulishuo/filedownloader/q;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/liulishuo/filedownloader/q;->a(Lcom/liulishuo/filedownloader/x$b;)V

    :cond_4
    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "the task[%d] has been into the launch pool."

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->e(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v3

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$b;)V

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v4

    invoke-virtual {p0, v3}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v3

    invoke-virtual {v4, v0, v3}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    move v0, v2

    goto :goto_1
.end method

.method public f()B
    .locals 1

    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    return v0
.end method

.method public g()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/d;->h:J

    return-wide v0
.end method

.method public h()J
    .locals 2

    iget-wide v0, p0, Lcom/liulishuo/filedownloader/d;->i:J

    return-wide v0
.end method

.method public i()Ljava/lang/Throwable;
    .locals 1

    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->e:Ljava/lang/Throwable;

    return-object v0
.end method

.method public j()I
    .locals 1

    iget v0, p0, Lcom/liulishuo/filedownloader/d;->j:I

    return v0
.end method

.method public k()V
    .locals 5

    const/4 v4, 0x0

    sget-boolean v0, Lcom/liulishuo/filedownloader/e/d;->a:Z

    if-eqz v0, :cond_0

    const-string v0, "free the task %d, when the status is %d"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    const/4 v2, 0x1

    iget-byte v3, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->c(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    iput-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    return-void
.end method

.method public l()V
    .locals 12

    const/16 v2, 0xa

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    if-eq v0, v2, :cond_1

    const-string v0, "High concurrent cause, this task %d will not start, because the of status isn\'t toLaunchPool: %d"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget-byte v2, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {p0, v0, v1}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v0}, Lcom/liulishuo/filedownloader/d$a;->M()Lcom/liulishuo/filedownloader/a$b;

    move-result-object v10

    invoke-interface {v10}, Lcom/liulishuo/filedownloader/a$b;->y()Lcom/liulishuo/filedownloader/a;

    move-result-object v9

    invoke-static {}, Lcom/liulishuo/filedownloader/r;->a()Lcom/liulishuo/filedownloader/r;

    move-result-object v0

    invoke-virtual {v0}, Lcom/liulishuo/filedownloader/r;->e()Lcom/liulishuo/filedownloader/v;

    move-result-object v11

    :try_start_0
    invoke-interface {v11, v10}, Lcom/liulishuo/filedownloader/v;->c(Lcom/liulishuo/filedownloader/a$b;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/liulishuo/filedownloader/d;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    if-eq v0, v2, :cond_2

    const-string v0, "High concurrent cause, this task %d will not start, the status can\'t assign to toFileDownloadService, because the status isn\'t toLaunchPool: %d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-byte v4, p0, Lcom/liulishuo/filedownloader/d;->d:B

    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v0, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-virtual {v1, v10, v0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto :goto_0

    :cond_2
    const/16 v0, 0xb

    :try_start_3
    iput-byte v0, p0, Lcom/liulishuo/filedownloader/d;->d:B

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$b;)V

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->d()I

    move-result v0

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->k()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->r()Z

    move-result v2

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/liulishuo/filedownloader/e/c;->a(ILjava/lang/String;ZZ)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/n;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->e()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->h()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->i()Z

    move-result v3

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->f()I

    move-result v4

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->g()I

    move-result v5

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->u()I

    move-result v6

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->r()Z

    move-result v7

    iget-object v8, p0, Lcom/liulishuo/filedownloader/d;->c:Lcom/liulishuo/filedownloader/d$a;

    invoke-interface {v8}, Lcom/liulishuo/filedownloader/d$a;->L()Lcom/liulishuo/filedownloader/model/FileDownloadHeader;

    move-result-object v8

    invoke-interface {v9}, Lcom/liulishuo/filedownloader/a;->x()Z

    move-result v9

    invoke-virtual/range {v0 .. v9}, Lcom/liulishuo/filedownloader/n;->a(Ljava/lang/String;Ljava/lang/String;ZIIIZLcom/liulishuo/filedownloader/model/FileDownloadHeader;Z)Z

    move-result v0

    iget-byte v1, p0, Lcom/liulishuo/filedownloader/d;->d:B

    const/4 v2, -0x2

    if-ne v1, v2, :cond_3

    const-string v1, "High concurrent cause, this task %d will be paused,because of the status is paused, so the pause action must be applied"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p0, v1, v2}, Lcom/liulishuo/filedownloader/e/d;->d(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/liulishuo/filedownloader/n;->a()Lcom/liulishuo/filedownloader/n;

    move-result-object v0

    invoke-direct {p0}, Lcom/liulishuo/filedownloader/d;->n()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/liulishuo/filedownloader/n;->a(I)Z

    goto/16 :goto_0

    :cond_3
    if-nez v0, :cond_5

    invoke-interface {v11, v10}, Lcom/liulishuo/filedownloader/v;->c(Lcom/liulishuo/filedownloader/a$b;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Occur Unknown Error, when request to start maybe some problem in binder, maybe the process was killed in unexpected."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/liulishuo/filedownloader/d;->a(Ljava/lang/Throwable;)Lcom/liulishuo/filedownloader/message/MessageSnapshot;

    move-result-object v0

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v11, v10}, Lcom/liulishuo/filedownloader/v;->b(Lcom/liulishuo/filedownloader/a$b;)V

    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/liulishuo/filedownloader/h;->b(Lcom/liulishuo/filedownloader/a$b;)V

    :cond_4
    invoke-static {}, Lcom/liulishuo/filedownloader/h;->a()Lcom/liulishuo/filedownloader/h;

    move-result-object v1

    invoke-virtual {v1, v10, v0}, Lcom/liulishuo/filedownloader/h;->a(Lcom/liulishuo/filedownloader/a$b;Lcom/liulishuo/filedownloader/message/MessageSnapshot;)Z

    goto/16 :goto_0

    :cond_5
    invoke-interface {v11, v10}, Lcom/liulishuo/filedownloader/v;->b(Lcom/liulishuo/filedownloader/a$b;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_0
.end method
