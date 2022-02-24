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
        "Landroid/os/AsyncTask<",
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

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->b:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/update/dolphin/l$a;Z)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;-><init>(Landroid/content/Context;)V

    .line 4
    iput-object p2, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    .line 5
    iput-boolean p3, p0, Lcom/ifengyu/intercom/update/dolphin/l;->d:Z

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "UpdateMcuTask"

    const-string v1, "doInBackground"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/i/z;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    const-string v1, "version"

    .line 3
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string v2, "type"

    .line 4
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    move-result-object v2

    const-string v3, "filePath"

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    if-ltz v1, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    new-array v5, v3, [Ljava/lang/Object;

    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v0

    const-string v6, "invalid version %s"

    invoke-static {v4, v6, v5}, Lcom/ifengyu/intercom/i/o;->a(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "file path is null"

    .line 7
    invoke-static {p1, v4}, Lcom/ifengyu/intercom/i/o;->a(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Integer;

    .line 8
    iget-object v5, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/update/dolphin/k;->a()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v4, v1, v2, p1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/k;->b()Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v3, [Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/node/j;->b()Lcom/ifengyu/intercom/node/j;

    move-result-object p1

    invoke-virtual {p1}, Lcom/ifengyu/intercom/node/j;->a()Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/Integer;

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/update/dolphin/k;->c()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected a(Ljava/lang/Boolean;)V
    .locals 3

    .line 26
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UpdateMcuTask"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 27
    sput-boolean v0, Lcom/ifengyu/intercom/update/dolphin/UpdateMcuActivity;->H:Z

    .line 28
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 29
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-eqz v0, :cond_1

    .line 30
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-eqz v0, :cond_1

    .line 32
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 33
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/update/dolphin/k;->d()V

    .line 34
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs a([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 18
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "UpdateMcuTask"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/i/z;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 21
    iget-object p1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->c:Lcom/ifengyu/intercom/update/dolphin/l$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 22
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 23
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x63

    if-ge v0, v1, :cond_3

    .line 24
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    .line 25
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/update/dolphin/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    :cond_4
    :goto_0
    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a([Landroid/content/ContentValues;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    iget-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->b:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/ifengyu/intercom/update/dolphin/l;->d:Z

    invoke-static {v0, v1}, Lcom/ifengyu/intercom/update/dolphin/k;->a(Landroid/content/Context;Z)Lcom/ifengyu/intercom/update/dolphin/k;

    move-result-object v0

    iput-object v0, p0, Lcom/ifengyu/intercom/update/dolphin/l;->a:Lcom/ifengyu/intercom/update/dolphin/k;

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/update/dolphin/l;->a([Ljava/lang/Integer;)V

    return-void
.end method
