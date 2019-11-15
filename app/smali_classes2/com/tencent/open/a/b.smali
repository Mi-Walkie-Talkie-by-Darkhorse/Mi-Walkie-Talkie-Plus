.class public Lcom/tencent/open/a/b;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field private static a:Ljava/text/SimpleDateFormat;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I

.field private d:I

.field private e:I

.field private f:J

.field private g:Ljava/io/File;

.field private h:I

.field private i:Ljava/lang/String;

.field private j:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "yy.MM.dd.HH"

    invoke-static {v0}, Lcom/tencent/open/a/d$d;->a(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    sput-object v0, Lcom/tencent/open/a/b;->a:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 2

    const v1, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    iput v1, p0, Lcom/tencent/open/a/b;->c:I

    iput v1, p0, Lcom/tencent/open/a/b;->d:I

    const/16 v0, 0x1000

    iput v0, p0, Lcom/tencent/open/a/b;->e:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/tencent/open/a/b;->f:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/tencent/open/a/b;->h:I

    const-string v0, ".log"

    iput-object v0, p0, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/tencent/open/a/b;->j:J

    invoke-virtual {p0, p1}, Lcom/tencent/open/a/b;->a(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcom/tencent/open/a/b;->b(I)V

    invoke-virtual {p0, p3}, Lcom/tencent/open/a/b;->a(I)V

    invoke-virtual {p0, p4}, Lcom/tencent/open/a/b;->c(I)V

    invoke-virtual {p0, p5}, Lcom/tencent/open/a/b;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p6, p7}, Lcom/tencent/open/a/b;->a(J)V

    invoke-virtual {p0, p8}, Lcom/tencent/open/a/b;->d(I)V

    invoke-virtual {p0, p9}, Lcom/tencent/open/a/b;->b(Ljava/lang/String;)V

    invoke-virtual {p0, p10, p11}, Lcom/tencent/open/a/b;->b(J)V

    return-void
.end method

.method private c(J)Ljava/io/File;
    .locals 3

    invoke-virtual {p0}, Lcom/tencent/open/a/b;->b()Ljava/io/File;

    move-result-object v1

    const-string v0, ""

    invoke-direct {p0, p1, p2}, Lcom/tencent/open/a/b;->d(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/tencent/open/a/b;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-static {v0}, Lcom/google/devtools/build/android/desugar/runtime/ThrowableExtension;->printStackTrace(Ljava/lang/Throwable;)V

    move-object v0, v1

    goto :goto_0
.end method

.method private c(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.tencent.mobileqq_connectSdk."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".log"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(J)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yy.MM.dd.HH"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()Ljava/io/File;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/tencent/open/a/b;->c(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/open/a/b;->c:I

    return-void
.end method

.method public a(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/open/a/b;->f:J

    return-void
.end method

.method public a(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/a/b;->g:Ljava/io/File;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    return-void
.end method

.method public b()Ljava/io/File;
    .locals 1

    invoke-virtual {p0}, Lcom/tencent/open/a/b;->e()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    return-object v0
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/open/a/b;->d:I

    return-void
.end method

.method public b(J)V
    .locals 1

    iput-wide p1, p0, Lcom/tencent/open/a/b;->j:J

    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/tencent/open/a/b;->i:Ljava/lang/String;

    return-void
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/a/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public c(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/open/a/b;->e:I

    return-void
.end method

.method public d()I
    .locals 1

    iget v0, p0, Lcom/tencent/open/a/b;->e:I

    return v0
.end method

.method public d(I)V
    .locals 0

    iput p1, p0, Lcom/tencent/open/a/b;->h:I

    return-void
.end method

.method public e()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/tencent/open/a/b;->g:Ljava/io/File;

    return-object v0
.end method

.method public f()I
    .locals 1

    iget v0, p0, Lcom/tencent/open/a/b;->h:I

    return v0
.end method
