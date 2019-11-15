.class public Lde/greenrobot/event/util/a;
.super Ljava/lang/Object;
.source "ErrorDialogConfig.java"


# instance fields
.field final a:Landroid/content/res/Resources;

.field final b:I

.field final c:I

.field final d:Lde/greenrobot/event/util/c;

.field e:Lde/greenrobot/event/c;

.field f:Z

.field g:Ljava/lang/String;

.field h:I

.field i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# virtual methods
.method public a(Ljava/lang/Throwable;)I
    .locals 3

    iget-object v0, p0, Lde/greenrobot/event/util/a;->d:Lde/greenrobot/event/util/c;

    invoke-virtual {v0, p1}, Lde/greenrobot/event/util/c;->a(Ljava/lang/Throwable;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lde/greenrobot/event/c;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No specific message ressource ID found for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lde/greenrobot/event/util/a;->c:I

    goto :goto_0
.end method

.method a()Lde/greenrobot/event/c;
    .locals 1

    iget-object v0, p0, Lde/greenrobot/event/util/a;->e:Lde/greenrobot/event/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lde/greenrobot/event/util/a;->e:Lde/greenrobot/event/c;

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lde/greenrobot/event/c;->a()Lde/greenrobot/event/c;

    move-result-object v0

    goto :goto_0
.end method
