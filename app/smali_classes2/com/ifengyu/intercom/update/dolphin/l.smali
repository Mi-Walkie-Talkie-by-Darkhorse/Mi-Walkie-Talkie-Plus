.class public Lcom/ifengyu/intercom/update/dolphin/l;
.super Landroid/os/AsyncTask;
.source "UpdateMcuTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/update/dolphin/l$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Landroid/content/ContentValues;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/ifengyu/intercom/update/dolphin/k;

.field private b:Landroid/content/Context;

.field private c:Lcom/ifengyu/intercom/update/dolphin/l$a;

.field private d:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    iput-boolean p3, p0, Lcom/ifengyu/intercom/update/dolphin/l;->d:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "UpdateMcuTask"

    const-string v3, "doInBackground"

    invoke-static {v0, v3}, Lcom/ifengyu/intercom/b/s;->a(Ljava/lang/String;Ljava/lang/String;)I

    aget-object v0, p1, v2

    const-string v3, "version"

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string v4, "type"

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    move-result-object v4

    const-string v5, "filePath"

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-ltz v3, :cond_1

    move v0, v1

    :goto_0
    const-string v6, "invalid version %s"

    new-array v7, v1, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v2

    invoke-static {v0, v6, v7}, Lcom/ifengyu/intercom/b/k;->b(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "file path is null"

    invoke-static {v5, v0}, Lcom/ifengyu/intercom/b/k;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/Integer;

    iget-object v6, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v6}, Lcom/ifengyu/intercom/update/dolphin/k;->b()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/l;->publishProgress([Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0, v3, v4, v5}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->c()Z

    move-result v0

    if-nez v0, :cond_2

    new-array v0, v1, [Ljava/lang/Integer;

    iget-object v3, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v3}, Lcom/ifengyu/intercom/update/dolphin/k;->b()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/l;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    invoke-static {}, Lcom/ifengyu/intercom/node/k;->a()Lcom/ifengyu/intercom/node/k;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ifengyu/intercom/node/k;->b()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_1
    return-object v0

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    new-array v0, v1, [Ljava/lang/Integer;

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/update/dolphin/k;->b()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v2

    invoke-virtual {p0, v0}, Lcom/ifengyu/intercom/update/dolphin/l;->publishProgress([Ljava/lang/Object;)V

    :cond_3
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 4

    const/16 v3, 0x64

    const-string v0, "UpdateMcuTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPostExecute result="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->a:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->a()V

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v3, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 4

    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v1, "UpdateMcuTask"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onProgressUpdate values="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/ifengyu/intercom/b/s;->b(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x2

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v1, v0, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x5

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v1, v0, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x63

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v1, v0, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_4
    const/16 v1, 0x64

    if-gt v0, v1, :cond_0

    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v1, v0, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a([Landroid/content/ContentValues;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->d:Z

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Landroid/content/Context;Z)Lcom/ifengyu/intercom/update/dolphin/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    return-void
.end method

.method protected synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a([Ljava/lang/Integer;)V

    return-void
.end method
