.class La/g/a/g/b;
.super Ljava/lang/Object;
.source "FrameworkSQLiteOpenHelper.java"

# interfaces
.implements La/g/a/c;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        La/g/a/g/b$a;
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/lang/String;

.field private final c:La/g/a/c$a;

.field private final d:Z

.field private final e:Ljava/lang/Object;

.field private f:La/g/a/g/b$a;

.field private g:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;La/g/a/c$a;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La/g/a/g/b;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, La/g/a/g/b;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, La/g/a/g/b;->c:La/g/a/c$a;

    .line 5
    iput-boolean p4, p0, La/g/a/g/b;->d:Z

    .line 6
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La/g/a/g/b;->e:Ljava/lang/Object;

    return-void
.end method

.method private f()La/g/a/g/b$a;
    .locals 7

    .line 1
    iget-object v0, p0, La/g/a/g/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    if-nez v1, :cond_1

    const/4 v1, 0x1

    new-array v1, v1, [La/g/a/g/a;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    iget-object v3, p0, La/g/a/g/b;->b:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-boolean v3, p0, La/g/a/g/b;->d:Z

    if-eqz v3, :cond_0

    .line 4
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, La/g/a/g/b;->a:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getNoBackupFilesDir()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, La/g/a/g/b;->b:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    new-instance v4, La/g/a/g/b$a;

    iget-object v5, p0, La/g/a/g/b;->a:Landroid/content/Context;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, La/g/a/g/b;->c:La/g/a/c$a;

    invoke-direct {v4, v5, v3, v1, v6}, La/g/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[La/g/a/g/a;La/g/a/c$a;)V

    iput-object v4, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    goto :goto_0

    .line 6
    :cond_0
    new-instance v3, La/g/a/g/b$a;

    iget-object v4, p0, La/g/a/g/b;->a:Landroid/content/Context;

    iget-object v5, p0, La/g/a/g/b;->b:Ljava/lang/String;

    iget-object v6, p0, La/g/a/g/b;->c:La/g/a/c$a;

    invoke-direct {v3, v4, v5, v1, v6}, La/g/a/g/b$a;-><init>(Landroid/content/Context;Ljava/lang/String;[La/g/a/g/a;La/g/a/c$a;)V

    iput-object v3, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    :goto_0
    const/16 v1, 0x10

    if-lt v2, v1, :cond_1

    .line 7
    iget-object v1, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    iget-boolean v2, p0, La/g/a/g/b;->g:Z

    invoke-virtual {v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 8
    :cond_1
    iget-object v1, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 9
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    invoke-direct {p0}, La/g/a/g/b;->f()La/g/a/g/b$a;

    move-result-object v0

    invoke-virtual {v0}, La/g/a/g/b$a;->close()V

    return-void
.end method

.method public getDatabaseName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, La/g/a/g/b;->b:Ljava/lang/String;

    return-object v0
.end method

.method public setWriteAheadLoggingEnabled(Z)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x10
    .end annotation

    .line 1
    iget-object v0, p0, La/g/a/g/b;->e:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, La/g/a/g/b;->f:La/g/a/g/b$a;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1, p1}, Landroid/database/sqlite/SQLiteOpenHelper;->setWriteAheadLoggingEnabled(Z)V

    .line 4
    :cond_0
    iput-boolean p1, p0, La/g/a/g/b;->g:Z

    .line 5
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public v()La/g/a/b;
    .locals 1

    .line 1
    invoke-direct {p0}, La/g/a/g/b;->f()La/g/a/g/b$a;

    move-result-object v0

    invoke-virtual {v0}, La/g/a/g/b$a;->f()La/g/a/b;

    move-result-object v0

    return-object v0
.end method

.method public w()La/g/a/b;
    .locals 1

    .line 1
    invoke-direct {p0}, La/g/a/g/b;->f()La/g/a/g/b$a;

    move-result-object v0

    invoke-virtual {v0}, La/g/a/g/b$a;->i()La/g/a/b;

    move-result-object v0

    return-object v0
.end method
