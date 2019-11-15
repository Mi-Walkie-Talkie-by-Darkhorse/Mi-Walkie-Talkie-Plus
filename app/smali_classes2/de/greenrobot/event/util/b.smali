.class public abstract Lde/greenrobot/event/util/b;
.super Ljava/lang/Object;
.source "ErrorDialogFragmentFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field protected final a:Lde/greenrobot/event/util/a;


# virtual methods
.method protected abstract a(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/d;",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation
.end method

.method protected a(Lde/greenrobot/event/util/d;ZLandroid/os/Bundle;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lde/greenrobot/event/util/d;",
            "Z",
            "Landroid/os/Bundle;",
            ")TT;"
        }
    .end annotation

    invoke-virtual {p1}, Lde/greenrobot/event/util/d;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-eqz p3, :cond_6

    invoke-virtual {p3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    :goto_1
    const-string v1, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/b;->b(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "de.greenrobot.eventbus.errordialog.title"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    const-string v1, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/b;->c(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "de.greenrobot.eventbus.errordialog.message"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    const-string v1, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "de.greenrobot.eventbus.errordialog.finish_after_dialog"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_3
    const-string v1, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-object v1, v1, Lde/greenrobot/event/util/a;->i:Ljava/lang/Class;

    if-eqz v1, :cond_4

    const-string v1, "de.greenrobot.eventbus.errordialog.event_type_on_close"

    iget-object v2, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-object v2, v2, Lde/greenrobot/event/util/a;->i:Ljava/lang/Class;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    :cond_4
    const-string v1, "de.greenrobot.eventbus.errordialog.icon_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget v1, v1, Lde/greenrobot/event/util/a;->h:I

    if-eqz v1, :cond_5

    const-string v1, "de.greenrobot.eventbus.errordialog.icon_id"

    iget-object v2, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget v2, v2, Lde/greenrobot/event/util/a;->h:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {p0, p1, v0}, Lde/greenrobot/event/util/b;->a(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    goto :goto_1
.end method

.method protected b(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-object v0, v0, Lde/greenrobot/event/util/a;->a:Landroid/content/res/Resources;

    iget-object v1, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget v1, v1, Lde/greenrobot/event/util/a;->b:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected c(Lde/greenrobot/event/util/d;Landroid/os/Bundle;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-object v1, p1, Lde/greenrobot/event/util/d;->a:Ljava/lang/Throwable;

    invoke-virtual {v0, v1}, Lde/greenrobot/event/util/a;->a(Ljava/lang/Throwable;)I

    move-result v0

    iget-object v1, p0, Lde/greenrobot/event/util/b;->a:Lde/greenrobot/event/util/a;

    iget-object v1, v1, Lde/greenrobot/event/util/a;->a:Landroid/content/res/Resources;

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
