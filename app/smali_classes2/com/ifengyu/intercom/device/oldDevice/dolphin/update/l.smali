.class public Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;
.super Landroid/os/AsyncTask;
.source "DolphinUpdateMcuTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;
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
.field private a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

.field private b:Landroid/content/Context;

.field private c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

.field private d:Z

.field private e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;ZLjava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->b:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

    .line 4
    iput-boolean p3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->d:Z

    .line 5
    iput-object p4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected varargs a([Landroid/content/ContentValues;)Ljava/lang/Boolean;
    .locals 7

    const-string v0, "DolphinUpdateMcuTask"

    const-string v1, "doInBackground"

    .line 1
    invoke-static {v0, v1}, Lcom/ifengyu/intercom/p/y;->l(Ljava/lang/String;Ljava/lang/String;)I

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

    invoke-static {v4, v6, v5}, Lcom/ifengyu/intercom/p/p;->d(ZLjava/lang/String;[Ljava/lang/Object;)V

    const-string v4, "file path is null"

    .line 7
    invoke-static {p1, v4}, Lcom/ifengyu/intercom/p/p;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    new-array v4, v3, [Ljava/lang/Integer;

    .line 8
    iget-object v5, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {v5}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v0

    invoke-virtual {p0, v4}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 9
    iget-object v4, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {v4, v1, v2, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->B(ILcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;Ljava/lang/String;)V

    .line 10
    :cond_1
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->q()Z

    move-result p1

    if-nez p1, :cond_2

    new-array p1, v3, [Ljava/lang/Integer;

    .line 11
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    const-wide/16 v1, 0x1f4

    .line 12
    invoke-static {v1, v2}, Landroid/os/SystemClock;->sleep(J)V

    .line 13
    invoke-static {}, Lcom/ifengyu/intercom/i/t0;->n()Lcom/ifengyu/intercom/i/t0;

    move-result-object p1

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/ifengyu/intercom/i/t0;->o(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->r()Z

    move-result p1

    if-eqz p1, :cond_3

    new-array p1, v3, [Ljava/lang/Integer;

    .line 16
    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->m()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, p1, v0

    invoke-virtual {p0, p1}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    .line 17
    :cond_3
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->r()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected b(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPostExecute result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DolphinUpdateMcuTask"

    invoke-static {v1, v0}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/DolphinUpdateMcuActivity;->B:Z

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x64

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

    if-eqz v0, :cond_1

    .line 5
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->d:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

    if-eqz v0, :cond_1

    .line 7
    sget-object v2, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->c:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {v0, v1, v2}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    invoke-virtual {v0}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;->x()V

    .line 9
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    return-void
.end method

.method protected varargs c([Ljava/lang/Integer;)V
    .locals 3

    const/4 v0, 0x0

    .line 1
    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProgressUpdate values="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DolphinUpdateMcuTask"

    invoke-static {v2, v1}, Lcom/ifengyu/intercom/p/y;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onProgressUpdate([Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    .line 5
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x5

    if-ge v0, v1, :cond_2

    .line 6
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x63

    if-ge v0, v1, :cond_3

    .line 7
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    goto :goto_0

    :cond_3
    const/16 v1, 0x64

    if-gt v0, v1, :cond_4

    .line 8
    sget-object v1, Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;->b:Lcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;

    invoke-interface {p1, v0, v1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;->a(ILcom/ifengyu/intercom/ui/widget/view/ProgressCircle$STATE;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public d(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l$a;

    return-void
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/content/ContentValues;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a([Landroid/content/ContentValues;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->b(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 2
    new-instance v0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    iget-object v1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->b:Landroid/content/Context;

    iget-boolean v2, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->d:Z

    iget-object v3, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->e:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;-><init>(Landroid/content/Context;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/j;

    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/l;->c([Ljava/lang/Integer;)V

    return-void
.end method
