.class public Lcom/shanlitech/et/c/i;
.super Ljava/lang/Object;
.source "MyLog.java"


# static fields
.field public static a:Ljava/lang/Boolean;

.field public static b:Ljava/lang/String;

.field private static c:C

.field private static d:Ljava/lang/String;

.field private static e:Ljava/text/SimpleDateFormat;

.field private static f:Ljava/text/SimpleDateFormat;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/shanlitech/et/a;->a:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/shanlitech/et/c/i;->a:Ljava/lang/Boolean;

    const-string v0, "/sdcard/xy/core/log/"

    .line 2
    sput-object v0, Lcom/shanlitech/et/c/i;->b:Ljava/lang/String;

    const/16 v0, 0x76

    .line 3
    sput-char v0, Lcom/shanlitech/et/c/i;->c:C

    const-string v0, ".txt"

    .line 4
    sput-object v0, Lcom/shanlitech/et/c/i;->d:Ljava/lang/String;

    .line 5
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss:SSS"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shanlitech/et/c/i;->e:Ljava/text/SimpleDateFormat;

    .line 6
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/shanlitech/et/c/i;->f:Ljava/text/SimpleDateFormat;

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x64

    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static b(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x64

    .line 1
    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x65

    .line 1
    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x69

    .line 1
    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method static synthetic e(CLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/shanlitech/et/c/i;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static f(Ljava/lang/String;Ljava/lang/String;C)V
    .locals 3

    .line 1
    sget-object v0, Lcom/shanlitech/et/c/i;->a:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    const/16 v0, 0x65

    const/16 v1, 0x76

    if-ne v0, p2, :cond_1

    .line 2
    sget-char v2, Lcom/shanlitech/et/c/i;->c:C

    if-eq v0, v2, :cond_0

    if-ne v1, v2, :cond_1

    .line 3
    :cond_0
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const/16 v0, 0x77

    if-ne v0, p2, :cond_3

    .line 4
    sget-char v2, Lcom/shanlitech/et/c/i;->c:C

    if-eq v0, v2, :cond_2

    if-ne v1, v2, :cond_3

    .line 5
    :cond_2
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const/16 v0, 0x64

    if-ne v0, p2, :cond_5

    .line 6
    sget-char v2, Lcom/shanlitech/et/c/i;->c:C

    if-eq v0, v2, :cond_4

    if-ne v1, v2, :cond_5

    .line 7
    :cond_4
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    const/16 v2, 0x69

    if-ne v2, p2, :cond_7

    .line 8
    sget-char v2, Lcom/shanlitech/et/c/i;->c:C

    if-eq v0, v2, :cond_6

    if-ne v1, v2, :cond_7

    .line 9
    :cond_6
    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 10
    :cond_7
    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :goto_0
    new-instance v0, Lcom/shanlitech/et/c/a;

    invoke-direct {v0, p2, p0, p1}, Lcom/shanlitech/et/c/a;-><init>(CLjava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/shanlitech/et/c/m;->d(Ljava/lang/Runnable;)V

    :cond_8
    return-void
.end method

.method public static g(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x77

    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method public static h(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/16 v0, 0x77

    .line 1
    invoke-static {p0, p1, v0}, Lcom/shanlitech/et/c/i;->f(Ljava/lang/String;Ljava/lang/String;C)V

    return-void
.end method

.method private static i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/shanlitech/et/c/i;->b:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 4
    :cond_0
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 5
    sget-object v1, Lcom/shanlitech/et/c/i;->f:Ljava/text/SimpleDateFormat;

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/shanlitech/et/c/i;->e:Ljava/text/SimpleDateFormat;

    invoke-virtual {v3, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "    "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 7
    new-instance p1, Ljava/io/File;

    sget-object p2, Lcom/shanlitech/et/c/i;->b:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/shanlitech/et/c/i;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 8
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 10
    :cond_1
    new-instance v0, Ljava/io/FileWriter;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Ljava/io/FileWriter;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 11
    :try_start_1
    new-instance p1, Ljava/io/BufferedWriter;

    invoke-direct {p1, v0}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 12
    invoke-virtual {p1, p0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    .line 13
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->newLine()V

    .line 14
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v0

    goto :goto_0

    :catch_0
    move-object p2, v0

    goto :goto_1

    :catchall_1
    move-exception p0

    :goto_0
    if-eqz p2, :cond_2

    :try_start_3
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 16
    :catch_1
    :cond_2
    throw p0

    :catch_2
    :goto_1
    if-eqz p2, :cond_3

    .line 17
    :try_start_4
    invoke-virtual {p2}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :catch_3
    :cond_3
    :goto_2
    return-void
.end method
